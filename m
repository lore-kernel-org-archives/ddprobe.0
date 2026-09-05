Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205CA1FF7C5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788633034; cv=none; b=CCtxM6HqyspL+mhh84/sEgRlzh7ykX+SREeCPR3kG5r4Kd90UHnqhSX3WZUjXfyR3ge/6FluYISvc/W7rsfr9jpZ0KgEHGoaQmMN0QIbAdGAshPmx+jFjuBSdO3EwlfcVNry+qdT9gdDCPs6VVOSO1oj+vvErdphQ5/Q0UpacCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788633034; c=relaxed/simple;
	bh=cP6GOHk5d2E7lMSRGDEcYnGHhZTsyM0qjdQI4p6M9/g=;
	h=To:Subject:From:Message-Id:Date; b=Pvqx3F/s8w7s80B1OW6/SAePcS0bFAxeOlz8YRDLoVEsVYHo8TTEf0PvUBMvr397UfZO42PYxVxsaHiijrv97+/ddGxCfPqPRfF6oTxAcLkEJrEwldY29Q9kgjBEeLR54S234ebBgQtJj7++TOg68B0YOo3JwgiwfXLguKJBO/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZzdBg1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZzdBg1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2FEC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788633033;
	bh=cP6GOHk5d2E7lMSRGDEcYnGHhZTsyM0qjdQI4p6M9/g=;
	h=To:Subject:From:Date:From;
	b=NZzdBg1QmfKtNYrb+skHzW+enVt9LYUsJI1xZhbwJkRqZULghJLArSlSZ5qP7Q2Bv
	 7/LYOsIYx9ABE0WcZJDaUEo3cmox8iDdiR7PqVzsFJJq2Z1TL7E7k/f//Sjc/JzP7n
	 ZFxjW8XShz/lW9T/XZxVtIU0uXMEghjZO9CetXkyfMoh/eNZC/yo3FGpiBrjxSfNOx
	 nu8/2vjhzS+SC4dFcuxX4wSTQ13r/2ELSyDW0VVdJ5ULPW2fMwjDnz3nR9aFkLo+Ru
	 7FaKiB75gOv3Zotn7ewRWShkeHuPfrAg3G+e+g7WeEGkk6RsF17qt9W+HWILHf34zU
	 n6JDRrs7TQjyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF6C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863303369.12794.16811419273335018303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b82a246552c3a286569b493d3974449ca32a54b1f5ee15e541bdfd1c8853a7
Date: Sat, 05 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788633033

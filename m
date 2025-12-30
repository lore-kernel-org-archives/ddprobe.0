Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297652571C5
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767121434; cv=none; b=FA/ok9QepIb9uPKLTftTcHvLYdGW9sJSBUmKxNMyAj8Wm5qAKdjUYCKnMLgBCW6DizxppK5yqKbYKFqsm280UjA+UVEelSB0A2sZAF+YWCtdRT5km89viwa0Pl5/y78/Yu/vqbZhqA9J1HekgX6dzaqK+jzOxHalj+4b00YbUEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767121434; c=relaxed/simple;
	bh=we6zvq5/iOceua30lMVsAz0X3uPF6oVIDsNjDcD0WHI=;
	h=To:Subject:From:Message-Id:Date; b=HvFUev86uodIsA+fdMv3Z0IGeKUH8df40n3L9JtbsLv9c8kwTRgvmMZSXZVcy7ZRSv+XtXOfNGmHWWrJiVDS3gQZKTLnuZL277LJ/iWjuHZ/EE0sDmsFuy4y04V+SPIIr+nU1YI9w3r7XbWnwyGQCpgJ5reUCJ3lvM8i5ywPJNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oabiAT1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oabiAT1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767121433;
	bh=we6zvq5/iOceua30lMVsAz0X3uPF6oVIDsNjDcD0WHI=;
	h=To:Subject:From:Date:From;
	b=oabiAT1JOTtyxWWEfUu7fHkdvAXet2wvWaLdhzB/gYGD+0a3ME3tOoVAtIMnIwqJB
	 AwBPe4wyznG3SyytxsSVbqnJho2+OklDVKVRCVgcKye3Tm8x/V/I9DLvuK13vdCa+q
	 kwzZy7f7OZQUei90thSRx6yu+GKltfZbTVZN5XvCbw1q/YGoqcIF6dhpZzHPmgQ9ZE
	 z7oQG1WQNaEr+DPPDN5h95/qhh9W8NNHLUVriQ1E6Jf8waC5oOp9DWDemPgzm/Ccrd
	 QXKX2YQhDwxKKLWOoavLH24CQYVV1cs3OLmZ+F8b00yU5Poguv/lKX+74/Gfl2imc4
	 Z3fGAYS/qZROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D06EE4992
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712143357.11755.6624819930763157438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6748043073849441ae21b09b7b88736bec4c10dafef7849762a26971adf0c0cc
Date: Tue, 30 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767121433

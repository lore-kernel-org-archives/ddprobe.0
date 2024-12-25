Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D4F36C
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735153554; cv=none; b=X8CrV10kUGmK1WrZGzO9noGLtga0yvG5801OkEbtX9WE0MV/uCxeEUDD8wsvPSH8gGW47+/5kjyJh0dbtIZm69sKY4A3ALde+kpfMOw3IOuG349i8krffAz/Dwa02UkiAXYxJyGtZvfwhfyKgTCG6wn5IPD1JfTOkpsAvz+r+1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735153554; c=relaxed/simple;
	bh=sNxFaelV323zKmnvOSXSxFAdJyEmu+CeFBYuVXn3Olo=;
	h=To:Subject:From:Message-Id:Date; b=D7iCIM6Tq/jYyKI+916Gs99+KDA3pYS0YDqlZJ8OFBScsCTBAlvFqb+F3EOeRgasiKTh5q9B5qkdetfuw10j+oidgvWa8ahBy+Z9NKOPIKASSNx2TNXPOgFgYJWK42DW4rgiTK9TSMqmYg1rfLSnHHqLq6y+e0ZY4Ya5VNzoAzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8O+QU4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8O+QU4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8267C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735153553;
	bh=sNxFaelV323zKmnvOSXSxFAdJyEmu+CeFBYuVXn3Olo=;
	h=To:Subject:From:Date:From;
	b=Q8O+QU4R791kIw8wXud+YFggvvDiovOvEGsqux+D0jHjKHZK6S0PZP7kJNzwpHKxo
	 NqiQAg+ygOGmQSDASQkqPP+vjhwzOUCKChqSnZboY63GhdkT+VnKKMcOwO/cgl17AW
	 I7yBkVAyHKK5D0qMBkVIZhnapksnmmbjQGLPEdDMDeNMtuktHvmX+Bm63+GPZIAfbI
	 XVw4VpkNpiitbRKFz1nGrVJd2vWXVihPYnhh2iu/E8OI0uAn+XdD2fMhZqg8QdEq4H
	 jMtQhXsTo9zh4YPaYzbXk0lBeM7KoDWupfsS1uLuvVoNeEUJaj0RPVx3E/1EReL2L9
	 fvriT7sYfCOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CBE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173515355358.16278.2561115108320424202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7627ac512b93625baefa1ba940df39447573969992ed079bcdc761015027cfbf
Date: Wed, 25 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735153553

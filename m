Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAA9383
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734182754; cv=none; b=JDoRnyVmKEcvKQqO2pefaYtJ1uOA/rkVBQiv5Fru8AiT+To1y9ehbDOOx0MnDWUb1lpSxMGEbK9i1/+gNqvEJT8Sq+W8BabnGzvcgaOXCuuKwvniUrUaWgMhkKTsonEIZZOieQsk59hMuJtwUrQYRqDuYzWbLMfEyDV/95WOnZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734182754; c=relaxed/simple;
	bh=bnKpC/Nw8PbmnoJudQ8B5i7rx34HpT8pEOceo9dZC0w=;
	h=To:Subject:From:Message-Id:Date; b=JkJP7Q7Vx/r5T2rP8aiKFjuEUKrbrkmmUaLNNvJwjsr6rn2+PlLXQYS1C8FCsMGfIrC1M+VLPLsW2gGUFE0YoFQOkzr208p7Ugv4F5hGLQg6hbPHsCzQRK/EjnbFuT+5d3ZuLDy0004XkYpALpDVxcaVhDfHP22eMae9d5gZ03M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5xu0gTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5xu0gTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC05C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734182753;
	bh=bnKpC/Nw8PbmnoJudQ8B5i7rx34HpT8pEOceo9dZC0w=;
	h=To:Subject:From:Date:From;
	b=B5xu0gTrRLiVWYK0Yt1c90Pbceh9ljgAKTyVVUKjpWsfvTVgdvpi4UTHkjsUmzV9W
	 tXo0CKjFEpqnZnpdJn+ltDMpgSRZE/Qum6nzSG6WGddYnuRWjf9rJkL+P20+50IS58
	 vPXmBc2blAcDNA/zSXaI/bUiOaN7JPIdgYuovZQ9BQkxX/O0M7gdLdrCl5Sd1OY0K8
	 useWmdw9sW78Zb0U2i4tH1QHl15ofNehCEAfISDlbBEDcEOowALSVPG4CP8pSk2Wz6
	 kDNpTtPRP2dYliHXjdCnvrUOES2VaiENZlXRMgEqLshJDsc7zkenl+o7e8o29q/jf7
	 EZ25+c7sgO8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD0AE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418275361.29087.3876020402131975498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8b5e2ae6f079c1347a2e4c2e01f63abbdce997e6fcf9e554929e9734a7d3ac
Date: Sat, 14 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734182753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CF01FDA89
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751582394; cv=none; b=bhu49C6DEIbhqWjBEu4Ar+OTWP3yS4Qz51XaO5f5GqP5nX7y/WJQW2H1lQurjE98OoOBwIV3mrjmxl7nX1cx6tl2e3+PaR3SB+YoLXnnEvcsL2wMkny4ts7K6Z13EQIjPzRZ7NDpLLpa5UcoQlKAQJvReg0d0nMZTOIN0NBnuQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751582394; c=relaxed/simple;
	bh=IrzQwEGCGzzEEaAOFbTRTE5be1W1aB34KWxsIbDAr3A=;
	h=To:Subject:From:Message-Id:Date; b=VGpFCs2Zphge089VuUSTqKIi8JHZ16Zw31l97WUaM5P//y016trzyNKGPfTA+SBc9J1bYa2kXclQ2cvjOsYzcUZ1O88pFXyHOm6IqVFgoYPbpSBErEaz3o2wKylED38Hfur3cxYusyjXFvUwBQXsKprMqOEUAXQkUqGEdsh6LqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwU1UCKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwU1UCKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A656EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751582393;
	bh=IrzQwEGCGzzEEaAOFbTRTE5be1W1aB34KWxsIbDAr3A=;
	h=To:Subject:From:Date:From;
	b=hwU1UCKAU2rNi1cqjW96Rw+C6SNPzdHFcqEOVZaOKjBBD4WNEsfiB55PJMU5q7Kfy
	 zU1EiJ7hwb4KKIgKycuSYgfejA8PtX0dh0qm8B5sIgxkdaaulDX3yCFwTebB8RE6OP
	 c8wy+9uMJeDcJRpcqk5WFTN3aiisUPfvNm4utvFV/mShN93WX2fwkywbAi6JjCEycI
	 a2dhZvhOGwYejoGZnusCeZbRlXuI+djIFvDQ9WBU1IqNunvCdXEFtY/9ZmKRNfA9u8
	 cJnA6laeOIi6s034yw99qplWJyfYha7DnAVrKdvVuz6CrFYO2UDG2KiSel7hIUV5og
	 /KfXWgIBkdcQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C1C83F05
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158239358.25342.6582841666256673605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeaf6015a50e308f5f8dc05513058a62d1ba92647551c56c9e5c1da54e867942
Date: Thu, 03 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751582393

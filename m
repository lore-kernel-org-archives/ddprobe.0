Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184ED1B808
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779009634; cv=none; b=ox1e2uRBkuwPN0WXttuaX16+/ksiVAeySBN62+fXrn3DgXfdWdl9Sd1gZByGR62UTJDPRH3fm3DvpaLagIHAWzJpbbc7+uZ6n8xhmzQyLu4rvv1IKmKenqFI2PH0xRHLsmsVR+1efEDCR/d/CoN989IRa/ggeiGrxB5XC9DcnL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779009634; c=relaxed/simple;
	bh=XUIrqFb5FiAMRgYSXxVcjT8JwEOlzrsE40FPmHO0YTk=;
	h=To:Subject:From:Message-Id:Date; b=L4QtGshxi9rOqXzyzOqvFDs8cI19fstUzZB6jvRXDYmg4EHxRstU65lO0EQu1BWx/z7pD4dah3I3NpptvFTavuvbZQIR4by+rTWeCGdzTI6Ecy3A1N4ZKZuligHwVMXio2zdMHeO7LKBaODuTjATB+MEz5JeEnIN6hl+JKsjsvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU0mW6jP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU0mW6jP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA720C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779009633;
	bh=XUIrqFb5FiAMRgYSXxVcjT8JwEOlzrsE40FPmHO0YTk=;
	h=To:Subject:From:Date:From;
	b=DU0mW6jPOsGyBJTnNz7gPul72LmGwlCsT4RNcLGzfjLmvETT2WfWXzSA28k9xwifF
	 +012wloQNf5+wGl8BKwd9ecLdNaj6Jd8tZOdn11coWp2sG9aQyb9fZuYO5/xPFiaT6
	 AijKbhEOyydGNOWigQd/Oyqu71CFIXXoGZDoEeTSiFqF4G54TlcOcwUyq7KiELIRm9
	 Zui/nUS8QvfS2lwzshVy1FWGLCxX+q48xXaqhav7QErngs5kwcatexcmBGmgQgm+Vc
	 zvdwr3lIVEfHKrJ+Jncf73hecGyVDQs+VjBLcdNih7d2tow/fe9IdWBrssQwKacmkd
	 L2Bwq3Kdn/peA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEBACD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900963369.29282.13359627424374999404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db941b6d13c868293db98e85835af321769b97650cc5bfe4e6da1faf46bdbe6
Date: Sun, 17 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779009633

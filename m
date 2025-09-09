Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C73D302771
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757399394; cv=none; b=UBYlVY8q0ri8PvpHsmKMpQVpIFa9fKGOx5BqIkAlXFdBdJxanCj9rSPKfPHbyVMqoQLaVtDo/VLQ91B2gINisS/L8vOM23WHus6tP4CLMryfYOywIALyHX3ZqVkqnd2MMXZAUFQpyiz/k7GGRFL2ZYHyrrGMybk25a1uj62/Uos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757399394; c=relaxed/simple;
	bh=qpHSLFWNDp5uhzdDR4RBqbjCAi0kVDT+NVSFgpNv1QE=;
	h=To:Subject:From:Message-Id:Date; b=s6UJvWlvx9OpiT8Y9/FxyPLtm0SfYTxI+6JhWKeyo+kXZI07cWc/KjGuR3m2n+mGn4mI4WeFCy3c6HUliTyMCi/2Xt0RCC0VMuNDND5jsv53El9FSXYRlZEbmixiKpvgPhyjx7Z848NyFu/YR/ajxFti6B4ohUbCwUYbbhQXttc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1MHqzF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1MHqzF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5190C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757399393;
	bh=qpHSLFWNDp5uhzdDR4RBqbjCAi0kVDT+NVSFgpNv1QE=;
	h=To:Subject:From:Date:From;
	b=C1MHqzF8OTjRSLhGGaTWiXbJjAG9Bt3sb3bhBKuQl6LzjUkm/PcLqVaQ/fkvD9LQV
	 ZFrE9k1emcx9B7mExOqdqztG+huez9aYTQrfRmXi0U7/7o9SlmhtkuH923NfdhrKXg
	 P2LD+iuSHEjeeQOzhNDWxmopGPdmlqF52iWueiXaEigxlAn6MkpWM1cpw33tnmjdI5
	 dUvRLBUbgo7FZgs5yLe1i+BB4MlXKSFXvjxUAPo59Iz37HNzhLqit5ya9zePHuT8Nb
	 nSJMq/GiKi6O8u2ZRpSWAbbcdL5sYTOjXKCe96zXUazwPB9Bhozk3VyijR+YXnCSiE
	 zWNxUq7kyrErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94055CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739939359.21539.12542238466617927532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e4785b0792a321f5401a3aac7ef8d2e54dc5e7ff01295a0a3956d040af1236
Date: Tue, 09 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757399393

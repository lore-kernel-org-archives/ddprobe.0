Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235F91F2B88
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781486194; cv=none; b=qRWh9qk/fw/F2n+jMbPfJ4yE+qI3ugCWDxp8Ae39zeDbS8hWyu3darUPDiW8r9VLo67fgvxS4WJJenRo197AguXM+T/64J599nK8Lun5QB3RJyOOCnE/LDBHYXAosVFhVwdM7kepK4oSf1Gsau2N+exiVJbWqvNNnz1dchi2BD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781486194; c=relaxed/simple;
	bh=TgM0LIBbCDF95ij86+J8SdapIkFg5JQRZeTOt/Is1LU=;
	h=To:Subject:From:Message-Id:Date; b=FhQ1s0+tpbHHa+lUPfYOcvXof+ttsNZh/gBKG8YP73mpwJWutPEgzVDnk1Fw3y0j/RQ3Vf9RKRHJaEMYq1hD1ZNWmY+w1fRBoSOq3MCFPSU3eY1t6qJvx3s473VZaFwEiyk2Ahqo0Tvp81Rhf2/FLWoQeEJVu/uI8UdyiINX2+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NongRdFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NongRdFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9F0C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781486193;
	bh=TgM0LIBbCDF95ij86+J8SdapIkFg5JQRZeTOt/Is1LU=;
	h=To:Subject:From:Date:From;
	b=NongRdFsAfV6tbzWNHlvTg3BnaIKwAaoKeqavq0gsEZwiGVIjjxZBrfOxOLnaFgaT
	 jNVou3wEhVK0a2L1nfZ9k7SNF/q40VuxmUX04Q/Jwp0q56F3VvOf89bVBz/8WLsn1z
	 0SdqasaG8r4oCorYntJRkk708GR7VZbGq/2AkO12elRz3nqi4tH0v1QZ/s3hJv61HT
	 WLE7mOV0vU/DYKHlCVZNRHx2jvVh6W6yMmzRJQNAitNSMVe6aOUgx7mdQ2Bn8y3ds8
	 +0hoSwfU0umHYLlDfDE2z8EKO3wGgWUpyFHbZ5GXr1jgPNGiqlZXWjmTY88jO/1LQM
	 WFT9m+ysXXZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF71BCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148619370.10259.9161582765261528195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c630152fa1e0010312cdf61b1fad7512acfb9df18a00a58e8d7cb6a7714575bc
Date: Mon, 15 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781486193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FF722D7A1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762253994; cv=none; b=nuQUiSMc1tZajOUravtq6sPlVOePT55WY5sI+So8Vvv+c+HZi1O6y8pFAFKrxcgcH1mWUWLgru8q/E4uZGVCiTE4L0uwRtokjcR1KKuKvbPdm3CezCtk7gXZKJC1L9gI9PEj4j8jVBRV2AECzLnE8q9HSts2YKXaihZz2gYlZic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762253994; c=relaxed/simple;
	bh=p7jm8WGMmMG373jd5j2rnpqOSqPan284zvWejAP21/A=;
	h=To:Subject:From:Message-Id:Date; b=i1857G+E4Zoh/hcwVAwK7yKrTgQemlEo0lyUu7psgHrGaagzsJJfz2moRKRJrfTFm/qnvGAZrBk+gOHbEzkD5VBqoEbmHE0ICKWrs4tqu8p194yFhqcEDeh1nbj5526NEuCNPiF+ecidpexsGr2ALjjy/p9WvE+Bvydbtnh39uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUXjHq8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUXjHq8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF833C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762253993;
	bh=p7jm8WGMmMG373jd5j2rnpqOSqPan284zvWejAP21/A=;
	h=To:Subject:From:Date:From;
	b=RUXjHq8iYOjz99fcsHRyLU9ycAU5FUx2//FjpIsNcHyhAm0tNvtu4gcDqGIOaprcr
	 xsxjEBwUomUMutxAV3GSLiyqTIkT1vKJ4n3EkPesgGsxyoGLHa1yhqVUByz4+ellZO
	 B28exElVeYv75n+lIH282UZraLkoUAvAYg3UiaUzRPZ/SUuhxapSTFW4kTvlyHi5KO
	 kYhq8TNU3MEzuBkKsOHOSABkPdyGFT+PifuQK5JQpEMLaN/2oKUwGzgB5u0fP1Pg/t
	 w5KuGo2E0Ge28S+zAIIWkbqdsIyUDfaqvJoeImeXtsGbLspwiIMj0/NljIo35+CgQP
	 Ij+7+M6uKoTIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A151DCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225399362.7996.972622529625313433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ffd7b468ecbf3a18c4fdcb7ff8b196973da255563e2546905c59c96d1353ff
Date: Tue, 04 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762253993

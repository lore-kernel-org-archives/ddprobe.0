Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3E2136358
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749999594; cv=none; b=d6pCPjCOoCBfNkPBBBHjNEbBdGlSIzbLMKKqJ50baLhlN1tNAj0Z+0WzyvqsTN+hWt3vkqlXgvHJVAid9yXGNHLyKA3TEGAtjNLIsUvDIvmNGfoibrrx0aNh7I1ICznl+p5iJtCpLjoignGWYwbLfcEcTV37FziIElKhPWEpf/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749999594; c=relaxed/simple;
	bh=wgyRE0m1NGwTDcbAtinLzQzPuORBa+ga37bKcQIw5uY=;
	h=To:Subject:From:Message-Id:Date; b=OwOlhj++d0LomF878t5P7ir9HW+V7ULAG3Id4gKF7QndteLUf/slOi9uNEnD6fYfFShNQqh524VtmISrALN6GoH5zGri+eT8SIW1/CEMD1crDfwPSDUCLjkdHYeE1+/P47OQmhfLfnIkAcCNyJEs1NEYaHWPuYpJOF6RcAyo0Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxqMZ4MV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxqMZ4MV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A158DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749999593;
	bh=wgyRE0m1NGwTDcbAtinLzQzPuORBa+ga37bKcQIw5uY=;
	h=To:Subject:From:Date:From;
	b=cxqMZ4MVzqSFLWOEYsqwrlapZ1IK8TmuXyrmbXBgrcwbIxTIE6kCGmRjMXEKeug5u
	 L8fPkinEzojvKUoBwoJOGN3FtQyAVp9RPmYDEDdZjXcikUyW81Y/jjtYhJPDkTNSRg
	 uwknWywBBtPbMR3GBhCjAOi4AtOCd92J/QCFmQV3CHppMa245CKQWKBPm/gcc62GER
	 gaQsRoGP2Rw264r4uxqf15/5d/Ua4N1Tp0tJDpq0W6VxFjGdx0EcqO21D4i+mngmZP
	 RxHjt1yGyEEbsL06TlC3hYfBvRK4yeSGRpXEIo2HsFym9geNBBVLbivWsnKdA7KrEP
	 UHqkWBDr/aTrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3EC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999959357.6203.12565457224308672570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e899f0e6bf2073b193279120a2c91616d374d9c72c58029ff8a6acf43b212ad
Date: Sun, 15 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749999593

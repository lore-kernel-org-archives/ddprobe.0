Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21801839F4
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745978394; cv=none; b=O7eR3i9v8BCmnNL1MHxTE6DDRae+LBYReIp02km33q2BMbVI0Skw6khOufRji1Ip+ETnQhBOgP0bFM+TTlsrhQ8pW2dhFtPmCOZT1uqfCIQgoYl8kD/Mwyg4Oe8z+UcKcczxHCh+vLVvXlICCZhyVcIwjB0y0ybV5CGeobiJwhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745978394; c=relaxed/simple;
	bh=gWgqkp012UxBRW5KUBQOd6sM+sbNKNZtiCPmMVSTmL0=;
	h=To:Subject:From:Message-Id:Date; b=NITg2vnu3DK/+0sbEYf/4qih4iA7jtPCWALUFgBzafjjF9hX6P8FUcvNnJ0ngVmEFGvdBc9CyMa+xpNyEwNRWZE82g0MA9pxvWTGh7eCSPQKO9LugD45HIKbNLfsChpYqyglcg5EFnM+jJXGaLn78Zngfx13YGzvtTeTUyyk+kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSQ0wF1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSQ0wF1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D731C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745978393;
	bh=gWgqkp012UxBRW5KUBQOd6sM+sbNKNZtiCPmMVSTmL0=;
	h=To:Subject:From:Date:From;
	b=PSQ0wF1gTBTkMGeZ0MbMFxXjLedJNitSsKSLmE2pmyPUk5YlPDh9bFx2hji2h2URI
	 cPOtb3Uo9Lc6W/XD8ZhxGNsk5yS+n1RnfTp+3KPNjrx+KTXclfIPKcpTFAXUIlaMi5
	 DlyBSjVDPBfRk5VMUJsTWo7KZdh2HRjTWn3k14ukRYN/SAP/FWEtk+1k9aCWFCFo+t
	 WTeRHnNK3x1BCMU8PBW4u5Yr5+uvDhbHmrr1hqFt9NXMWpbbfUF1A28i2exz2RPzvO
	 aa52xxO12sTNBXU0zK4c+IDLtJ31OZT51oHkPeYpwY352FqHx69WC1pI5p67dB16gR
	 jx0hzq+L+fJdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE42C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597839357.5475.2702139932364050932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8628735ca498916e5a1f4028c076eff5c9e226bdf4ae7fc4dd2809584e7fa3
Date: Wed, 30 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745978393

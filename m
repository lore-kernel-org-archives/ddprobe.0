Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D68189915
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741889935; cv=none; b=RRTztENklAJzneAzwgymuy7X2IVmkB8i5cC53yKyy9hwNQtk2x4px0b8bjJGfTjStET5qf8XlMs3l6b12SrM9Fn3fkRqW7W2cbg/g5VgBQL5d6UBwW/JYPyPb2mSibZUzZ8qvh2wF3GUrLy0zYKCpKVMRce+K9NMigRLKiXTN0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741889935; c=relaxed/simple;
	bh=5b+U+opOsaFr/kfXSauSLQOU84qwhP6+yRoEKX9JIso=;
	h=To:Subject:From:Message-Id:Date; b=BeN1jWwpRp0KtltygLUHYx392z5Kx86Rw9PFlg4lcW1RyNAZw0BaXeyTte2Lf34GdB89KC33Jbuzr4SU6Bgwryz8xngyps2MFt3myPJQF291sXz4LzL9RGW32RmjcFbyKZviQ7PtpOSRqtrOV3DdjuP+R7d1wK91X4B5eAB1Oss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unX2/BNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unX2/BNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E9BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741889933;
	bh=5b+U+opOsaFr/kfXSauSLQOU84qwhP6+yRoEKX9JIso=;
	h=To:Subject:From:Date:From;
	b=unX2/BNlTIzKWgJavIoBWLDhQiMe20G8z7E8qaWFI9ovpEUSnfvB+D6qraWte//Oj
	 nf1ujSyP6bO2UOyd88as8TJ9gyQNBdoxAnY6Dk6Qplxs67nZ4+VjNq8XqwopG/lQdu
	 uBiF6qvlvMroJnv88JgQdDikAXsvluSaBGuGfRqpY9QHTpdU4u3qg1fYeRgrWgewE0
	 Znt1O9hkAWzarKoXsRR30is36qZo4uvfu0CWkBSoOZ3COE/cYZOxf2sNfxPyen0+Av
	 w5QxtV2MSpjGeN2LzwbFnGSHgbVJpN7GdJs9Ctxsj7YIH7FY8NhZfknS1KdLjzpYFq
	 7QF0B9QYIRmAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A3BC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188993362.5706.4953965227478010164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e460898785497252a236cd7a3c411e5aeb3b86212803cb182bdd141f4a3a14
Date: Thu, 13 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741889933

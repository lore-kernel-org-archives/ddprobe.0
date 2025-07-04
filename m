Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8852E3701
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751669994; cv=none; b=FoSh7uVM5SHWp7EOHZJahuRrEq4wksWpFFTTisrnF4RaApnggFQF34N+7yqNKVtvOYHvifYiay0g1r3knxAK3qIviUbDg64ziJfqkqC9CTzdJX7AC3vy8TrQeP8Nijr7HBv7CbO6hNHadDT276IMJ9fPb0HVHZdc6txc1u1Yhp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751669994; c=relaxed/simple;
	bh=T2p4ds1rzoVnuRbnRg5B0pZUNe/AyI82uV/RLy+QamY=;
	h=To:Subject:From:Message-Id:Date; b=ckpYctLrzmhpeAW6P6O282NQxHDFR0Wr5XljaLWLIM7wQ6G0m/Cdo6H3xzyuEGWyqk36Fumjl8UIRD0/OQiO/b9YeE1iMWJ/3x+4Bx9GwIgZ1JCJyqielEpdNVV3C40gGr0tLA3sVY5MUdk8zAzUxOKGJu4Ui6OBsXhZ12ZdKqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAqcC5AW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAqcC5AW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E34C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751669993;
	bh=T2p4ds1rzoVnuRbnRg5B0pZUNe/AyI82uV/RLy+QamY=;
	h=To:Subject:From:Date:From;
	b=kAqcC5AWiF/uGLAqt4L2D4vzACUwxDXTfotYMonmAu1byFyYTVUZW7hy+dTSEVF46
	 hPJD72shHiSRACIRaos7Ffaf7bl/9n5PNp0UQMMMyamQI8cxKuJl0gwtwsv+0sOVdf
	 TrYszjvgM3RXJTIAINVa4NxzuxlFuOqBGqZ5I+cPHg8zT69jqS/2twQnHchHJruW1V
	 KYkpT9oBIZ9WzpDnN40c78QoiF8hmnmL3bKDFaEmsUKqEvTF5E+4om4W7qPLbEuAwa
	 9UP+Ch4mRxH/p1uiXCaUH/qDK/fg3ZdNTZQmDBIoYVuoee2xYYWXIcXFiQ0PSTDLKE
	 sc7U6c6q+cqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB24C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166999358.31595.2054388006791072118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af9bf0cbac50c1035d5c4354145e35f1498a2bb3714476ed66aa0e035c98fbe
Date: Fri, 04 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751669993

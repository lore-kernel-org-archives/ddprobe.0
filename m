Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5496F522A
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728268554; cv=none; b=Nkm8bn3EDVuj0sxfdArAcmjDxfa/nx6U6j68cSLaiAdvDQEqqTQ5nAwCIOb5XLVT74vBX//Fque+n4YeUd0KKAVFhITBMwveFc8tcY+IDdOx1FLD0FiDRQr2IDf/t5Sr0vB/OeMvsHNBr2NpxJ9dqYP+dqxTm08+WjZfSq9Ltsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728268554; c=relaxed/simple;
	bh=pkP+/9pEVLfBGLbvvKlqO2f806p3uA1y12P6HrSkmeY=;
	h=To:Subject:From:Message-Id:Date; b=PHCkgY5BR8Hg2sqPR1Cs/vPITeDFgKBgzQ3y0Yldf5rJItFrciGIGNxy9b++yv+mqJ8tmJrGigTAhdENc6y9J6u8bT4W7wvnyWOI3coxhJPTdDZ9o+ma2seJ2ydswJbJv+TRDiAgUiQUomsqyWhgM3ZUBdazpDyCpvvMYKnr+j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjjv0hWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjjv0hWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9081C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728268553;
	bh=pkP+/9pEVLfBGLbvvKlqO2f806p3uA1y12P6HrSkmeY=;
	h=To:Subject:From:Date:From;
	b=rjjv0hWbLRfUW34Iacf5OSPad3sgun3eef5dEQd9G2nUD4wPm4NufuI6FTvVA6Zus
	 I3k3Ds+FP7NlABnwy6A+spl+pdY+74z54OViPWdtLzDGno9C0P6IQ4eaFAFi4ulBmw
	 Knl834fvuUOgJC0/JPGtHk7RGzGt6nB8eBnooJcNHvKrLBPSF0jItk1krDS6wOL26x
	 4LDqFHXMDv47xBKHslAFpOOSZTCOuoNMU98fqFNFFugsLTU67BKjpCdogiRYiHAE++
	 9BFNgjS5JAgd5dKYSvAO/rkaFwi/AEUyMNjoQVeX7Tumn2okIWt/9d6aUB0Zg/lPuj
	 lsi4Koy4FubCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D28CFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826855369.19900.12264567229165691512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d81ce446511e6669766dfd2c409b8bef4e7f7598db2ff2122b211b58185851
Date: Mon, 07 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728268553

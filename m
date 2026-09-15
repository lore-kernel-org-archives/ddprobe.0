Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4268C46D2AA
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789465834; cv=none; b=tIMJlgh4LXukzYDN/AxMzEwMIld2x3HIwEmz4wA5XVAU8kj77MA+M63J2ahzRqYYPyPSXfASsCQ7ZPJZZANj4VvLxfV59u/BoJ0YYQXYhoU3GEzbvNbmbBFvjpLArTzIarGQt0EqXpZBkggtqmOcykthsNWffx8P2xf/uXm2btg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789465834; c=relaxed/simple;
	bh=sxsluEAyKzVMFGb6xX8Muhgp5Wq+Es2VxGBKoUW+hEE=;
	h=To:Subject:From:Message-Id:Date; b=uDMoCuoyXkgrc3Lwa4hupmUGLP9Rm4BD+d9cyg87BqI5TUR+6lEBSuSSZF7bOgBXddLMk/V6+VQT27VEuh9A3up/WAPiSaHtw+km0lCdVNoabovtrZ39kqK7Wv1A1k7RvMUuFqgIdq7sYOxxYtdwkNJMdTKUYj7tUn4R4/dIKhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxxtS0bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxxtS0bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA34FC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789465833;
	bh=sxsluEAyKzVMFGb6xX8Muhgp5Wq+Es2VxGBKoUW+hEE=;
	h=To:Subject:From:Date:From;
	b=OxxtS0bYE39c9/S6yuezRFtgJks+JcnS4M804RjC3kQjI0Trf861JAm3k6XRMr3h1
	 RJjSccd8jMNYKZ5Mf6k5p9Mw+l4vpAsHA3rRJDypjW9R33IQjdVYGt9AVamEP7PG3N
	 M8JaUV2nm95A02LaGmw1gKXcegx39RvjpPJ84X15Oy1ISvYNQZdsiRup37rGdfyOvJ
	 rTCoaS9SsgnoEXVI/U4+BssmxeusFjsVAd3gjgNaOHoZYlQZm6LlY3re0Yzr9mqvP6
	 pbIpBRoxrHqzeaiwPT49SSU800ENs0lrlL2yuIXTuzkSVdEohk0pYe8Y4NgiF8ulSt
	 H9mXUSuQjAaAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9814C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946583368.6646.2509005413842115909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992a1064340bad3d29f5896c1abf0751810e35e5f12a0099b9a3e402bbd840be
Date: Tue, 15 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789465833

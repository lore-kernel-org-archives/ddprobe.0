Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B3729A2
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763836314; cv=none; b=HIF0i9alyUUNAhGrJlo2y3YDNb0o/k4H1m0inMef3RO23HyL41JvXMT/bSCMw6BccloeFgR+Fly+YjzBvdG9ncRWEFYHf1lwWP/VzD9kiBGEacYjQihN5aCYMgeEQ8bvzQntGa/bkDa9anshjVj5ZNtWmygC2otBJS/BQ0NYYYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763836314; c=relaxed/simple;
	bh=UOSiYMGq0N+DuPaKsN/L4lhBqXYUKHWMKGDHen30AZM=;
	h=To:Subject:From:Message-Id:Date; b=Bq99aBc4J5/FO0UqQYLJiZ/xqHujgfTRrf6daAfU4k6j7mDwsWna1b8X9kvAfYNCawh1hWZFa0ZIbpFmSor5zwDBpHzjarK2Vui7aMnyEmN5pTeQ87sAz0rjYVvPg1Yfm/SbMlmi/1gEAJZFmmMMqYHLNjnuxQMHquL5RKLrMDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewgary3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewgary3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A376FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763836313;
	bh=UOSiYMGq0N+DuPaKsN/L4lhBqXYUKHWMKGDHen30AZM=;
	h=To:Subject:From:Date:From;
	b=ewgary3PrhXf9L2T5PJkTcPPeeGo+9T90yO/H/Qgciraubj5KKNq8s9acYUo/fmDr
	 ZUX/fIi5icntdowihufkLOlerZB5GcFnXFxw0DcvHyvQeSWrbzEyOgV7SHzKXuF52o
	 YYYjbS5O/57jt2bUro2x0+oRrY+Lg3vbaxY0jwwZZE0vHbV+w4VlwyZgVYlIK7hFe8
	 4A+GZ5VnCj1/WWAmRIRPFkz8fMh9qUgS5Hco0Ldfy9Wc2LJwqfm5yCGf3wAVBpL6to
	 8TNPb2qT/3J26loV5kiAvCR5AnIzKMK+DrcvKUGowc5z+/Wg4QR4ETFok1CBNazMI7
	 JkGsyF6FKuIvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242BCFD2E3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383631358.21295.10530261030913898278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a97c27714e4811d7ba0338a5eb5942917ae97f42b0a94f3f6bdc3305bf3454
Date: Sat, 22 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763836313

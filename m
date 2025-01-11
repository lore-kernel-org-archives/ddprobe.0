Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DC223AD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736555754; cv=none; b=hlgaGii1XdNQfMBe9XNWKCBPWgXuS9bKFMHNSQ8+Xglfau7e5Dw91eWxdBRAqlmHroQLhfXupmK892jjplkGBGAmGQrfF3yiNJxLai9/yVYaIl2sajAtHnn9UhT3ZP+p2KBV7Q84LUe8tk2rlni27WppuF/Y5IHoG7si639SShk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736555754; c=relaxed/simple;
	bh=L0oUO2Tcda/r0DtQoC5eoFu33snSRJV9hek7bykh+Fc=;
	h=To:Subject:From:Message-Id:Date; b=J9UZIYrUOA31tvs5RmRfMd9uJw7DW/7cAJLeOXbLLf/5Izipu0joTd9TybmEBbFpRTQUWMqQp+p+JP9MCSnBstFXKTah41rkLONEg8Mmai+SCy094S+OIueMe2D7PdG91YklCAKJWApopVUtibTX/l+gIBOrb5Lj/y/lmkqou6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp5T0VRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp5T0VRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCA1C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736555753;
	bh=L0oUO2Tcda/r0DtQoC5eoFu33snSRJV9hek7bykh+Fc=;
	h=To:Subject:From:Date:From;
	b=Mp5T0VRFB1plguq2jiwqsLNTCeo6xufPsvTQk3KerHn6g+yQLzkrxT4bAtSwKnNJ4
	 f9lyoiuvjAVOd+QIRVynkTJGFRJ7EuOhF0f0dGHFvs3UpYiGIWW5CmcinmjTK6WlpV
	 0Ld7HGrFTUElSBV6jaIfoFNdXdFLlTdVtj+SF3Ko8s7d+Tkk0PQ7kBsTSeamn6QtJ0
	 USs3AutTB1X2xMtk1GqGlj8/x0fGMOfGLFXr9+cAc1Sw7YY3J5rJ04nI4MrFsPi01B
	 GEnesGwTaGevlzaNXAfVj+0R9lhnuTq6oU93I0I4Pt1oJ18BswUbYPjyAnRkeoC1hc
	 +QvUN3b9e+lew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0C2E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655575359.4966.857774023936000300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d62da2b5ff2414770f6707a6f7b56db13b812f27e41efde1e5f2815019ff055
Date: Sat, 11 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736555753

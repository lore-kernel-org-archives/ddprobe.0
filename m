Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152DD20298D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761872394; cv=none; b=ix70iM9I1moDs+S6bN2JA0ucqGXYZVYk3DOHNtzX9Vpb2AJOiWX5urw2RvecHO9TY+MlhbdanLjFRV9kYLuT+QW+JpBYo/8IVvhS4VBBL4zXya3kx2FHeq88v38AHM6yCGke4Wfv4LZpIgHoNKUYJymbFIOQ42TMdstO2VuO/h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761872394; c=relaxed/simple;
	bh=ZrPSQs5lpGXpHTi4sUmlnVXB0Qukq7FX0yF8hqph4tk=;
	h=To:Subject:From:Message-Id:Date; b=U+JQDnwq10b/rIsO+ELVdN4wl+SLfC0Q68KUhdLuMeY599+D37yqSRAwY623cylsdTVF3t+KRy8HJ6ZokHRta1GdihhBx1p1lIzvxG5S8rtk0a4KKXNNGQ+Uw+rDG5fyFW0B/WhxbP/kkbXNmPpoWc2m1QsHVqRf3wv3comgmQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs259rPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs259rPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62DDC4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761872393;
	bh=ZrPSQs5lpGXpHTi4sUmlnVXB0Qukq7FX0yF8hqph4tk=;
	h=To:Subject:From:Date:From;
	b=Rs259rPbqhml3vDXQ6xNQDhu1eYT8KliUQPiqJJ3fmwrmc6+EpRPttQU2QA5awgR5
	 z+3Kgb7FhZMgCVJe0IAddv0ZWkBbW2T3eoWg3J8OIHpad1yIdfRa5sJsVVzsegs2aU
	 c7u8lLRGb+pY0fQatPbfbubmsAZWajru9jVMeDyyiALIQ8hv7D/usti8jEO0AM6h1C
	 azmZXUhYaVzGZuTBWxJVb0VnW622NCC/mJVnPXPBrGZS1NutVND/NY6bG4EMrbgyjI
	 1ysGe45hVTZdieWKttOZBgH3qsm7k94HTJpFHu6RJ/XVTqPQiJwc3CJrGverPAPzm4
	 SMJNj/6NmKTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9088ACCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187239358.26951.5411171732664590106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce829f7caf4ca6dc4626595088d90bff27be029e254fe3ca74f6023d5899d74f
Date: Fri, 31 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761872393

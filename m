Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C40E242913
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486594; cv=none; b=XWLv+5QW8t3SesdZR9WnU/sJO+pMMeIh8JraSA3leAJKcRtmJqOKhubHjNmtQ2vdJAGNKjn02WXaG2Oc6p0fnI3DjVveqKoyr15n4NjTEJ/i9ir+KI3EX8PKAQWMZmi1OGlluC5Ktb2KK1q9V24NYAFDHyMP368+p2wVVESnHRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486594; c=relaxed/simple;
	bh=3xoYikA0i4a9hYyuo+kqdd6ovRXEVWVtESfSNZf7B7o=;
	h=To:Subject:From:Message-Id:Date; b=On9nf8DOAYAdHFenCpuQBGG+gA2xgZMP/LAcon95FDy6C1AJSXQQBKLWeBW6Ayl+JDJeHah2+T81YrUyGZ2rUhG45/GlMIZ824y/7jvFaJaiXnjtCoDHBYHXJZNrKmgLtQDavX2lhpsXc8EgHMaSSwGGenZVaxFfhjwkH0jFJkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1iag4xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1iag4xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9FAC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752486593;
	bh=3xoYikA0i4a9hYyuo+kqdd6ovRXEVWVtESfSNZf7B7o=;
	h=To:Subject:From:Date:From;
	b=a1iag4xew7HFma2+Ly0QlHHxMNGLsZkjD7n7R4iI2oqQ5aiQ4qzl2QRR077tebZAo
	 0R65ow10UxGrHSNh/eynVQXu9Oo7BlO7aPmCM38Vl/6WAUAd2A0MVRGyfr04lFuT8C
	 cbcP6GDImmHkhdRjPDS5HD9+daj2vpaFGBbb9GqCflQsKheG7/bRTjHHl72niahmtk
	 t+NG2D5LUNaGUscVe2EIMz2l3Fmcf5kxn9UYBK3d08PHkT2lTNndYmmeG/78fa6Gfa
	 NLARrTiOeqE/YSzKn9SSzrpk9FeVsdRrMM26kfOnKDQLn1wPg1L1e1/ezGr1mwm1sT
	 LK09d7d2xCDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3C4C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248659363.21449.13834298142349857503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555e581fcd261e252ef661a1692ade03cd91332892c005122abe2e768535c38d
Date: Mon, 14 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752486593

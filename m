Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1534236D51D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764469974; cv=none; b=h6XlfJ3Vd0i+fnOpKg2eOZHYCPQ7nB0KJopGZ7F8fHGsEyLU42KiGWpkjbWVKWFnVhueNWhadVua/LaIopqShC79zHYkugH2Oy1uDKYB3Vmw0/qw0TFTqaDZn5To0p67QafKAp31b2IuBhaM/4x6V6AWs3J0lehvU2V8KuQJN40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764469974; c=relaxed/simple;
	bh=rqkesyJeohyWpiem6Zwp3IZZI5Su92jWu9CRYtMzUBE=;
	h=To:Subject:From:Message-Id:Date; b=SW+gAhKa6ejq0p2Cb1OZHxsPYxlcSPDxF4YMwMzyHeZSXcVQB4jA4S2ZLTQAYRwVVu4uqbUZWkhAP61LCqY36oM0ACU5i+KlrTrvcxx89DazSSqe1lpKX5ZCmLCedGkDgOi0Up1ZOE9EavT/9pzCaqWmylmPS14vhZO/5qQ9ivQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nveKI3DE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nveKI3DE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87EAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764469973;
	bh=rqkesyJeohyWpiem6Zwp3IZZI5Su92jWu9CRYtMzUBE=;
	h=To:Subject:From:Date:From;
	b=nveKI3DEa7Q7kZBJD+ZTzcQuDX/ylXw446u3nsJKQZXKOIVChzDebS12WP+etUya9
	 C7xPmOtPN9JWbu9IdmgV+EophEaBfxn9ZEzyq6fLVaALuk+giWKbJghJZze9QkGdvS
	 woC5vusTKpQtVf+LM3CbFKHZa/hGwTbViZfcN8Xennr/G98M3LP1T3WHVFiVeyYagT
	 zj0XXgx7DPdLY8itn4Mw6+GAr2rfOpVN0pKv6VDUA5Ii8BIL6sG1lGc5hMHDeLylOS
	 3EzocDuIoYRv49aajnsT2fxfezu+N9EloyqyqigNFzKWOxBeSh3yLrgpn261BbvFj8
	 igZr+iGhgIN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F20D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446997357.10978.17281216799300770788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19792041c1018b8b4558dfe76847464908c798d029730fa536e1d65e57b7c503
Date: Sun, 30 Nov 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764469973

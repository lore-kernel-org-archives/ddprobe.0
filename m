Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BC03570C2
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757441394; cv=none; b=Wwibzq9azizJcDBk2jG/DYsvndXFCPgHr71jpb+MAyDH/B5SYCiy7tpcE5JT6sMmtCpH3dLFA6toVrVSJ/cG49q338tO4uVTo9eDn4QLD78K2Bng6hoIbwf6g1qDVRH5fxgSSqfXQYXLv9XGFaOX0gEkRPanSSiiCrdaSEoVhk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757441394; c=relaxed/simple;
	bh=+z5RdbE2X/NByi0JiHTvxTpuKNO1aqAOVNfE3WgsIUk=;
	h=To:Subject:From:Message-Id:Date; b=kPFwI7bN64wh1OPqFioWJ4DkiIZOyuOS/sNejdb8zCUa23pIhmqlTIGWg/ww+19uqlPD33qKXvdFlPhkYiuWthJCSJNFuJr7DTVKflovTBIlkb23UjxGVtjI3xn0+zU12SfIZtJ24ST9ZmIBkq87vn40BI6HAxgs+nn9BkrKYUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyTFjrFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyTFjrFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8111C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757441393;
	bh=+z5RdbE2X/NByi0JiHTvxTpuKNO1aqAOVNfE3WgsIUk=;
	h=To:Subject:From:Date:From;
	b=SyTFjrFL/GimxNydhxQIqmTFFjlZEluvHzOfvYwLsOqBuamyW+LPsUDpUin6604gS
	 kIo8VF5zh1Do1BG0aMcARgcMV8oKFbDML9Cuv2laqw7i9JbgjALt21RdQFX4Fb7Nxr
	 PkGw38yx6qD0CwnmWY89mRUim2Rj9JYAhMmWaPETnRl+xTIFktgsA5Fe02k7YRkkHL
	 UzPNq6z7bzWP2Ida3AmSqTSjSx/VzNFAh9agjoDzYQtsdoVYjou6A0XCp7AwnHJc0L
	 vqSk5byDFipyp0+Y6hgqMdpfl4Y6aNt5Gdwnxx0XgyDGeT0Zuu+LP67hBiy1H5mvfQ
	 Z9eMj/K8tRaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393FCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744139359.2772.7964171825762940772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b8dcc794ec403c79d10341270e563958b2f25e59d09df8a2007d6e159317a0
Date: Tue, 09 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757441393

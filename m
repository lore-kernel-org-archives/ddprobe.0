Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2B327A93A
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757980194; cv=none; b=Xj4snUJff7SUtUUDy+G6HxrosjZArCSDPGE2PigLXv/WnGlk3zeOIIJAab4I00aHGy0OdFbsp5YnzMFT0ZLN1uCSkhkodOBmMFGEC9qEPIlaFgykdiUUA2+w77TOdVdy3AP/GtQhotQTt4+vD3ueEbXjtZqd2lL6/ff/b7bLRog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757980194; c=relaxed/simple;
	bh=kLRtLruZolnqXnbjmGL0b2lEF79risXYHiOjYsfQ47k=;
	h=To:Subject:From:Message-Id:Date; b=Ng47k4+BA4bOnnfcXk08sCzDCywlecwEgl0APli+1HH5abrvbnHSfsB3WU5V5rOm2Up0t9xqh3oGQLYosAQmorGyL5WmDcB/yPnDsxPGAhG1B2ZL4uLYk1f2bt6C1Uq/9xt3J3oXNKQuZKVnPe8gSJ4K3Acy/tKX9pwdDoZfRfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQHHX8Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQHHX8Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757980193;
	bh=kLRtLruZolnqXnbjmGL0b2lEF79risXYHiOjYsfQ47k=;
	h=To:Subject:From:Date:From;
	b=AQHHX8NxAxICZdHT0mfMxR8u4xuUXHftxHYtziSopaq4ChwOWfxYXKGSmRVT+Z9HT
	 zj5nckyLXn+CKyMfafpUFeIM1asYuZa5htDzxoh0hDh/naYU631wRP56ceuhX2oozM
	 ZJSt4XR5EIpsEtBpi3McBzikl2YvGLt44USxbDdKJlMFp8yPXJI3zfI3BaPoUviBWG
	 BTc+TpAaEF/KniHg5wofqbxXm+uKdcRjxJcRSXpvDzYYHF/ZZUAAgXXpulyYZ3ITHr
	 ePu4kc4sb4xsukmiEvvpGMC7WBx5AVeG4A4zJRoYjm+aVFWImNe4L5nS/Kxh9qoQDV
	 n+wPbh8QfbFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B3BCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798019357.13218.5144983116939853298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232cf535bbc37ae29564e812d2fb871cc2b07c953e0ab40e0af48eaac8207b06
Date: Mon, 15 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757980193

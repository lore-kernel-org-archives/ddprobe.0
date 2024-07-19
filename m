Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCDE59168
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721421354; cv=none; b=qOmL860pqsguhDrdk9JONFbL10cZqc7yur0WD/WanNhiPN/71QcVCNFS51EWdBt9WGCxChV4NTXFZwyFssDErBSiv3n0CC0WWu9Aq+5Wqbhq8IkAkHg4v5OQyyx2Zw4IGGKtPeB3HFfL1+c8nKEAL3FWd3EVxXVZDwvWaPINfTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721421354; c=relaxed/simple;
	bh=LebdG7eMjAeR/SjdeFipVpeFu8WRyaCH+Qwt1ul7Qzs=;
	h=To:Subject:From:Message-Id:Date; b=CGul0Df+UxIRf1s0uLycrYMg2+96JNp4a6ecapOl/VtIkt7EC9+8pnh0V88B1STyKMdwT6is+5pYzwjkHAbQK7wmgbXAfj4VOT0vRA50GiOKwABPbT6NsEjkE2y0oo87KMbGInERgX6tTCHehcFw9VcUGBKvKJP62cBROSh/yNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMw0pIvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMw0pIvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6EFC4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721421353;
	bh=LebdG7eMjAeR/SjdeFipVpeFu8WRyaCH+Qwt1ul7Qzs=;
	h=To:Subject:From:Date:From;
	b=pMw0pIvWxeSmG8ijGnB9TdR0LnxqRSLA8La7lzGQOZJDyb8NITiKkN+O8EGUUWAXZ
	 VB17Kvnkw+9A12j/ipHcjsjAe3Pa0Iuy7KGt1Bvp6LYDJR9Rm6s33G2slp1hBz5tus
	 1TjHbg07qRKJiNl33I6dajdjGslzUpB11JF5e/agaeEwdp2CGkhy1TGw0LJS9/wvQw
	 8LSKR7Xb9/U90XDHooaMn4Sy+wO5IAyimm9bd7CVulV1L2wJ/7EBnaD2JxkKhTFU96
	 FoYcqkBAzZAiNB2mMgLpM06ugOjzYJzsCC3E1g0xtERajOoaxzXZtjb57bOdkbxEEo
	 fimewvThNpMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DA1C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142135364.8221.4878632797038961608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21a1b176cc4a77bb630a6e2354e6332dfc3b0039c5961a247bc32ad7faf8f56
Date: Fri, 19 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721421353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183DD35958
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765665174; cv=none; b=DLwCamhc43POpS/S+6OzrBZ6UO3qlzw9gks4kmvstqDtaCcoYEJqM4ayjx3Oa5qtum/yLLjJaUUr+d0KYJf/MNpGNtmfF4Tt2TwX6c0meQ0D69bg1WdA0pdSDrj0MVTJ8b1ekSjyaU4N02g5rrWDS4UAn6cM6Daei4kPH16FOo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765665174; c=relaxed/simple;
	bh=6LPw7nrbHS/wo4SXIczGeUoacpsYrIRMvlkwuJKRxlU=;
	h=To:Subject:From:Message-Id:Date; b=fodihPdOeeJ5CsaqKC2uHuoPpmDthcy4McQ+HMIEyUPW+k8su+jaM4GMp+4kwEQXOUyQHsvJejc8MKky2bWzGDmTJnJpP4WPEYHudWA03X6p2iG0TNi0gyd/tfNeafV01N3zlzwARhMII7vSzKNkBh0NZewd3THXeRYFCuIj1GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MArl9ekH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MArl9ekH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E2BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765665173;
	bh=6LPw7nrbHS/wo4SXIczGeUoacpsYrIRMvlkwuJKRxlU=;
	h=To:Subject:From:Date:From;
	b=MArl9ekH2XEtxLpHj5fRr8h2qVNPN6HAoCs8/WJDYq0zUHYpoy9GMqTlUR66yEVyD
	 UyG37nrJZNWxMLocjhyghJIKyzCkSh6C+uXJCSng9vR4DXYccBjkM5XdapRAI8FaCF
	 09FIw85UOj4uN5rzBTQGEzb2nNPTZSyt/TCIGQBebvGKKm9Z7+noA5KwiVrFL3/64x
	 Lsp2yguSkQM0C5n9UaKKH6lkw3MKKo/aGNMZL7cLdflA+d/t+mIhB8U02HPfgXbFCU
	 JE3z35wc50zOFHutLNXhGLElK5rPiMFtSDJykd/ycldYaBrqGj+6szPjD7VS6NjNyL
	 +yk/9KtYRavKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DEFD5B169
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566517358.7045.9290719646703101281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcf7420884b7971cc2dcfdd49978d55252acc945c673fe92d2e67d2deecc484
Date: Sat, 13 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765665173

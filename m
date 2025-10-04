Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B0D1F5851
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759567193; cv=none; b=uWWfDF0dk0F/hqsTbu2Kx/6K7og8meSD/8E9fJpY1f1FwEUIBo6B1k6wswvMAuKvAt0VnHspy6FWdCB44hRKbeoRldzmQRlkzjYyXXx1By0A+dO14Eo06RfGUpoR6Ej8DzEQ5NAygjjdHjhk3n5uHFA8wqgJZC82MEutqF23gBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759567193; c=relaxed/simple;
	bh=4abi1+8s77X2xN3dCIqaXw7vbMKrueiq5ns245hutsQ=;
	h=To:Subject:From:Message-Id:Date; b=tG1+RoC8K/+vxU66C5N5BMFRKuHfcXuU4/dCTeGuDVbTLKNI8X7oxXnIGNaAA/ZeNz52tkytNLWDweqPA7X+RwbgZZZTpY8P/EXoBR6AXN/MqFcoar+DRBBjDUmoQDN7AfVGAJESY6iyewmEQkaVm1+mchPUvuYNmg04aIq4LdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjMXhaOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjMXhaOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D68C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759567193;
	bh=4abi1+8s77X2xN3dCIqaXw7vbMKrueiq5ns245hutsQ=;
	h=To:Subject:From:Date:From;
	b=ZjMXhaOOWv0KMKsGlIJ3oCW+1/+mLQjsDxfIzC8rPrejyRZak093xihcxt+Klqj++
	 GSps2b2EPYsgVxcuaTesc/dCVeqLUR3nB2Nebxiv5QbFpe/v6L1dj0i+tj7LL5/wGe
	 HRmR1be0Sl/cRtV+FeVQwlDBJq8g6Oo1EArFhdQz1J0oR02cb1sLiPTEpOkcCTtBIw
	 lDJkeEahsF2w7NssGiF7rLnlVW/0BPdUBGRGF3k+51JsZ0Xj9yZ5O9kFd6gIqrnq58
	 QIAORKQTD4EZyr11A3BvUf5TpNqjnaShpk42ve9IIslAYz0uaiTr6JjsFzvMDw6dQ1
	 YbvVwvkUIXMdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92960CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956719357.29587.714861956400874384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5b91e9a5a89417b3739d1af0cec7b1e8e3db9a521b8f8caee1601f8e0e1a0d
Date: Sat, 04 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759567193

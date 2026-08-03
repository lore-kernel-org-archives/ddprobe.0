Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA322AD37
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785720034; cv=none; b=m+Ff18Aff3ntd1VMz8YRHW0fyypI82/pC+kntReWu7wUcv1jaRSeA7yRAJQZ8pyT9SS+mfKYu6B1mf1Yv4QTPmPenvkocIr6Qg6jSMLOoBvbph2N28GH1oldZCRsDlYoVfw60RsCX6ISoyqfsacyM/80N7tzATt7EDdcTq/T7V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785720034; c=relaxed/simple;
	bh=e+0t6wXCL2OLN+sp3kaHaZUe/3NzDmONmLgzAyJ2JMg=;
	h=To:Subject:From:Message-Id:Date; b=GwbzBG4gMjoaTRtw2EhxnVH1clqbq1TH19FxRFzyUIyB6EDFNKDJ9SBPvXmpdGU5PaKjP47+4oxesBzqJow5kpsU4bpcayes63uL8kiOZs60uzbe4E+YAMRuF3fJkmVRLYCbjsWvdLQVYCrVYeR8vQMBFETRHyo8IkNrgXDID/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrgSw47T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrgSw47T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D182DC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785720033;
	bh=e+0t6wXCL2OLN+sp3kaHaZUe/3NzDmONmLgzAyJ2JMg=;
	h=To:Subject:From:Date:From;
	b=hrgSw47TdOMmRq0VkZj3PEBwdM6fy6URAN5wxt1Lqcxr0GjYlMs1eOftFUBbi2Jpp
	 jhbBcrSD4Srem///IlLvQc+E5VM9Jnmdvh04eOWdKPyGF7G6zGlOIAvWPac8Qapb/t
	 keNXZ3rbzYTKejMuQExc/KWfTvbYK/gCjvRXTBkPbcE5GcTrGG5C8r11ZsmKprFaO4
	 bMiPy1fG8FTNVWtVEmH+nvV50VShLzu/iOxsKml5d33cMYQuDl6fJ/t0Q93AJ4ov/R
	 wUPzum/j1rqqCdCqVnfIeZQb2eF70SHCi2SL5aCVugAcrRttnGEbSh92tWdcMRQe4S
	 FtEXkPNnnkKAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8DBC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572003368.9070.5427123840545217840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1e961a18dee560451c074bf810c40e07e3947ae110293a741e09f2a2d49061
Date: Mon, 03 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785720033

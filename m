Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DBE2046B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738701354; cv=none; b=h+vMWOkta1+v19uT5Uuiypz/pLJWmtUEcf/2XDCN2MyqHTobQnh3dmy4mP7VuEoAdUzbzd1+3+LEPF3XEP6+TCRdeBPu4dIhdC27HFqJzUtvUZIUyFoQOrJQnk1wB4+5bJy8Hnncd/zVNQECdypKmAZDHJ5kSTD08cr1yDSl0B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738701354; c=relaxed/simple;
	bh=DzGmfq7AMC0dwd66Bi64Ui2nCnCsm/cNC+ccuLosvkI=;
	h=To:Subject:From:Message-Id:Date; b=QsH49GrCuD8UNx2oG4VquT75Q8fYzFoW0CV6e4qHIeuU8S2DEWBBevGCXp7HyeRxhZ989vFnOrtHrph9L3hsTs4u/b9yolMg4uE3H/8kyBDfAwaxK2ebgmY3axC4EZhtlWV+2k4M6Spj6ilcwPN9afO5GXuLap3WctGWjnpLy4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7Gh9qAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7Gh9qAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD655C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738701353;
	bh=DzGmfq7AMC0dwd66Bi64Ui2nCnCsm/cNC+ccuLosvkI=;
	h=To:Subject:From:Date:From;
	b=O7Gh9qAeBDcwW/VS6KNNXmGPFDrAbT3MQPoHfQxFjDNlVOrXYudDji2PKtSwf1bqH
	 QhY3FL4Xi3lqxl9fgEGN3C04BA517cgCexUCJpWdcWs1MTBrjYqd695As8CBVqq0wY
	 m+hY0PfvC3Mfw0rR0Jp4fbcgtmtQTQ/zjP+G0TVT7sXUqJ7tVeSJN0xNETD95adLgJ
	 oAmtRcQZmc1iJ/M0WE8MumITGbGGOMY3ShhPwcysfFLP2K845HYyUMRJynTulWN5ID
	 yKjIcccOm0ZSZ5Ark+pIsSDZkSgk55IKwLhpZAP5phX6Hv2Sczj02Og/MtoPLmbM2m
	 TEDiCG6om/mnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982CCC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870135361.16186.443109638092796063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe4ca801a6653e2e17da6df7339eabb1f72b0b0f4e3975e5cb1e5dc2a092c06
Date: Tue, 04 Feb 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738701353

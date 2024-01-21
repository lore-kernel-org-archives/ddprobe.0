Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061D526AF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705811897; cv=none; b=W+rrF2X2JfX7rguoJ+SPNkaI+DIn8JLbQkeA5g2fNaSJg3ZkjumcPhAmsRKPGkjK1XYeumMAikVXFvgsmND8xpi2f/YG/7xn1p9OZV+FG4xhNm8jWyRHcAY/PJ6tqov4+ykmI9La741JGGB/Qzfe+d3I/OhF0DIHEk3/UFl9Jl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705811897; c=relaxed/simple;
	bh=KZKodl3APTiPrNP+TpDFlOrd9tP5TsXb1egsVFDl9Mo=;
	h=To:Subject:From:Message-Id:Date; b=c7wwlL5l0GvebL1LHS+FcfBFy0YRoi9Gogpb3/RmQXggSclcbK8dwTmLACbECnfs4nHTJNSqukCBo6Lr4GrfxrQH2J3VBVuLb7qgGo/0/AuK5N8H+82KW80g/b2cWWyO67lDZ44e+EvwBcQp4BtQ0PJWbMRrOwpESJiRt72G1ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPxGPZ5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPxGPZ5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B1CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705811896;
	bh=KZKodl3APTiPrNP+TpDFlOrd9tP5TsXb1egsVFDl9Mo=;
	h=To:Subject:From:Date:From;
	b=KPxGPZ5X+BfK7S+B5P2rK3JmK0n8sq91cJK+mR9uW4X8sw6tgkfu9ExNfK2Z34mi1
	 HJFZ8ksYzGFAiFOzC3pnrUK8yYsfcwXmotNgcW9/fyODXx/j/q4yaU980k8b0VCbfX
	 mxyAIzDBK02tXFX9g9wSlCv3c7XsyV0Afo8B2PBTgliejjQvWqAh+oD0BYrpHqIOEX
	 FzfEhkpDeFH+LRhXWEgD79LpGTfvQ87t1xybK4fSe9ZpDZIRbAY5IDAnqcevflXnDh
	 BVMze5fPqP16CLQGTRGRj6bns1Coav/EBtUwX4Ym1z5e+yoaHQ/URRJR+i2qf2n3Hv
	 baEfyCe/b2s2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDD2C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170581189636.26597.14943369540102815441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19b475e47e03be92ec68b45a636a6f6fdab29c776796ea7bcf5ace9c37cbbd1
Date: Sun, 21 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705811896

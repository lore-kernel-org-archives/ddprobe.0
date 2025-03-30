Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4999D15855E
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743321594; cv=none; b=Cte2K/Ybp1l/VbPkagmQzdqZiK7eGMAXyDbCGdVcUEiTXiR16FrIgy/QUFROmhPPZm5wXWgCsgkmyfhyB2AAG4vNYWT8/l/E7sL8prTsZgjlKz902PCZNj1XtrePNLOnoFbYdgFRYfG2L7f6QrtAS/eoE0+NkqMEjRB73TuDnrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743321594; c=relaxed/simple;
	bh=MFY1zsajxW15v58XdfBNuP30mkllvxgxAcYZL0/Qm2U=;
	h=To:Subject:From:Message-Id:Date; b=W+ilGchprfyyFH/Z6UmNNIZVT7HkY6w9yYcqxIzzCPfnDxTnMX0H/XlkeHnLekoypNGy1M44zCHXfdJwS6aQIEqN2mIFQ5hIz6Yg9ONTkpZzLZAxYvY3LCpBWQIMxABzzGjLhf85w0+reDG3KU6pTKhMG5fm4KS7i6SN3/07ZKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXxBOxHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXxBOxHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C58C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743321593;
	bh=MFY1zsajxW15v58XdfBNuP30mkllvxgxAcYZL0/Qm2U=;
	h=To:Subject:From:Date:From;
	b=nXxBOxHts15w6dX2aMv2m87NTc3Nndimvy9hg76x0oYL5FSMKsAIThIPBopiRgiMm
	 vI2YOZ8o1G/ukb5LlvGYsa4+5PxYCsUgrOM7DjdGrmKKje2L3wLTmMvmnG6BNVAQvh
	 BJHbdWQ2PuSSv6EsqVGM3fs6KNztkHW3hcsqdw72YzhVwXHmBbrTG2igJKIEIVb6gp
	 llArCNpE12XPe8HdxkOPZDBC7z5wQyxRWhhod+o1UamHuRgc/u8iHx19Twd0RxkWqN
	 Whx47OlHOUFiZZCVMBFlqSvQ8RiHijD/mCfgADiWu6rd/+wmq4sAdRk6iMdTBjM1wg
	 mXBpA26Rxv63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C370C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332159363.16614.665166840410453189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3891fa39a84abf006e72158c71a900434434bbbb0decb2f848ab82d3c2cf8184
Date: Sun, 30 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743321593

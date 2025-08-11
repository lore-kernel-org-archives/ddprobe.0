Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE4013A41F
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754932794; cv=none; b=ttV4RaCYCQ0qVJNtXOZu6Qa2CcSs6ciIygP4TFPeNxouGvwcxcaXfPF5zlAI2PuuPaawHFx3REuevAQA43l1H1tEBXIiw/+LIcU38clIR8AlS3TDYw2sSDCy4NFxbFgqdXMJbU0W75xjKRDrCXvW6kmF56mxSG85ga6hWkI3yPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754932794; c=relaxed/simple;
	bh=CgPGex7LKKFm06cZweGf2QOWSC5WGWYhVgZ+SuEErT4=;
	h=To:Subject:From:Message-Id:Date; b=jOANALKRzCtGf77aokCzl4xvGL2c/gipsDBkpQX/uVwe8KSrZnt53TglMJ6/58G7v2qPfsMVW5RE5qInOXA9lRK56r/AO3PWU1LS3Po0+91OAjWH48UJt7N6mxDCx1O/RM3jUacp+tjvieRLpb3HhSXn51Uf/coGRkVW3HDzu8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHYxyva8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHYxyva8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BBC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754932793;
	bh=CgPGex7LKKFm06cZweGf2QOWSC5WGWYhVgZ+SuEErT4=;
	h=To:Subject:From:Date:From;
	b=VHYxyva8rjevZrjv+mkiZRV17TKmLxrmKuWyhta6mryVdPFX1YNvnu9Pofc6i+oDV
	 3omebDijKViCRYTxYUdseciQMbnw/9rVyVfRi+igmKIYzbv1oUPc9NNvJsrAHzS6bi
	 Fd7BpQtHVibs4kfsiaho1SUTy1N5thpkuTx1ckqU/HVrog+norD/pqWO1dgT3L3AtX
	 oPXaZc8WNTbq/U+1G0YvumD1uV/51ObwCQHDZbgaRxy/1ttLNpAZ/lA/3yplxP/8Qu
	 M0NsRYNbcpuawGROjv8jGs7+AuXMKOOBmJ/hAkbsxCCAZaU0aaRwt6Cqi0PMryDsc5
	 d60a1huDKoxhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE74CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493279357.13408.4345936851481691058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd26d764279abd5a87934e2ec802bfb8a6d7bd97b31305effc38c3a90ce8bf4
Date: Mon, 11 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754932793

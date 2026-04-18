Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216193C465
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776477454; cv=none; b=NCqPugJEB1kyBMDS6S4TBz9mWmAvg/mEP/xa81Np79rZSdTPxIVabOKRlak7ig+zFnp+TAkq83/EvHPjYPchak96O+jqvz2N+yj94kOjdsGg+7SC2+ZbqT/hns+s3Nhx3UOoRgF9ulbAo6LaHV8ygIwI8Ho07hsdd6GX+3WbEV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776477454; c=relaxed/simple;
	bh=Z/TbpiDAPhGwkoQPKT3Zk+PXf/vixf/cy+sFkrTvWSM=;
	h=To:Subject:From:Message-Id:Date; b=tBfvTq98QULbiPRAt+m0FpSGrEyYC616kvGUIgkebbt5vPvJ1+aQumAVe1DPrkg00aHsM3KETDF9sHNIctmVZnHXXb2oLTGhKFS897mnMx75zW8bvfyJnmokxfkwPxGxcPXFsr0HVzfDXNWtr4wBIJ6i0xMQL3ljeqCE4jr2LlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGJ/pDeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGJ/pDeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86DFC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776477453;
	bh=Z/TbpiDAPhGwkoQPKT3Zk+PXf/vixf/cy+sFkrTvWSM=;
	h=To:Subject:From:Date:From;
	b=aGJ/pDeAcDNcl8rZdWRnExdhq+C6g0RHm6Y7NG1t3bfHdmG5YDNeBZYoiWCYfiYqL
	 BFcUcD5QvBdKeIgoLM79zpPEAdHlkWRUeBE9eEhXJEw3LvE8wf+QBxIFoBi8emUHxC
	 awztCXPJMaXKMV1LGY7ltAywiXJe/WnHSGwTSPkutKLkgNRMp30sQTy1aNnM7ttr27
	 v8W07tC2e/8iP14a+5ZKa5M8gKzl17fzwAgf/SC0f6cIj95eAcMTBdsqMZ3gxZhN2T
	 euYvbevi2VCCsHfoosdDy/5fOU4uJ0H8o0q38YivuFU51wkabjVcFQdPfk/HBxxFVM
	 KjkmAzwB41i+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EDF99C63
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647745368.29805.14720122415776087706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0407f44190bbf2bf5ad5e5d0f1b47f3e511739a9f7447eda0ee4399f85a6db
Date: Sat, 18 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776477453

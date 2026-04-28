Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFE9224AF9
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777337853; cv=none; b=riv+5dHy557m5ZsAPjpcK7q4EbEXLCGnm028JC80s9n0nLWJmXplPFGOtP0k9F2A7f1CI//9b2co5nupc7/ueaN+vP83NvNLgPbFgz7Z0R+Waxo9WKzcrQOSS5wq+MHLgFnMCLp2QPh63sHOmfpvSFwdKR446vVfWctWtRwS8FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777337853; c=relaxed/simple;
	bh=hkFXiytpGEuynUHgVVzydrTx9iV1qsn7AQfDKrrwuvc=;
	h=To:Subject:From:Message-Id:Date; b=kyBodCtLQP3kcuXBhXcfMAnXznrxJssiFhwNuFDgt9tbtpNI1ggx/8yfyWWLlozQLCvDxggO/MI/qkPyPlGBiZlKnfD5oxq3mVYWo2cz1jZ1ENsSamA2DPBjoD6FbleokZvWgh82+zxyRGbYgyCD3i379OWayk9oL+WjJPV3wZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eizMX8tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eizMX8tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0590C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777337853;
	bh=hkFXiytpGEuynUHgVVzydrTx9iV1qsn7AQfDKrrwuvc=;
	h=To:Subject:From:Date:From;
	b=eizMX8tWMN+tzZ1mvbUKkJKE9Ja0yuZRVlxQ0MKl4RjymuLoOnKEI99HWHm2QTBKj
	 bMEmdgnx0Xj9jawbEfM1fugkqKdg6khRUnscHDEoMDRMihFAdLIKa3pZ0pkVshA3j/
	 t3RtDGJPdVPYMN+amtWr+HL0z0Ozh0+NPvElPQHiEhTbXNo7cEKFiuM0ov9cvwGeee
	 92a2v9iK6NZ9TURsy4H+/+OZnzxg+g3NMbmjOCgkW+T8hhLMxS6s+e5C+YV1nu/FPe
	 y4E9Z8Qq5FvLakYr6vEovj6iuhhMNhT2j9lvDBEao/8yQ8EaSmzoEiq26TeZywN9kH
	 AY1LwrSWJI82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4A3FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733785368.21907.11006789701021636494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b66472759bfc52112f6b699f5393de6c5acf57e3845355db4a07d9bfc99b9f4
Date: Tue, 28 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777337853

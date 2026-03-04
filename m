Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090884C92
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772659494; cv=none; b=OC1Zc2lTOMpq8p4F6lLl7gaULgTxLjU2SDyvArn75CRWLp57mejDlYBiuxhGMgsVF+Tq4R2Hf9LHJYzQn+QaMXBq3Vbl89UZ2vozPmgQqG1pcbMGXi1anRUAIut/c6Li+NuEB/4IZduHCu2lgyX6GbcUPmBqcf96c0l76yrVcQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772659494; c=relaxed/simple;
	bh=RMLMJJnrt7Nhm1y4Ow83yHc8f8KaOqUkJcmeH2q+3co=;
	h=To:Subject:From:Message-Id:Date; b=LwEqDyM/fujV2SwlmPNY4wKQrT1Pmv/790Qep82+NsZ+sZteeKrdnmOaCNGkH1ofpO/VijvWXBUYdqlIB2XfTMvg61+79M4w+MlAVQLhMhle1O2pYqmIhmcQ3DABzAeS3h/obACHQfS5dBZKjeM4B2IWgS0+MpwTIzUcxhWYSvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLPRvagw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLPRvagw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A4C2BC86
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772659493;
	bh=RMLMJJnrt7Nhm1y4Ow83yHc8f8KaOqUkJcmeH2q+3co=;
	h=To:Subject:From:Date:From;
	b=oLPRvagwRIMnWdLjX2cOgHtCKLB6n0mlfia+ulKEKWy/YgB35CFuDbyj5EK4GW3A3
	 CjRHtqGVts7ecuk10UZktDoAKXf2HnmnItl2Jt93q0cudwY87hrFa8UWASG7tkksdI
	 xtb+HDhU861DYPc9EfNh6XG2QAfRtE5SyaOOGTrIBFVYVQB/LocRKnpifRp5YV4kGh
	 N5V2stvpTew/xEK/4dSjw8ZFTUbj0wS6IvmFa5Oz2YqB/PaGvRndgjThbil8A63Key
	 ymiXEvlgULqOO2rk7YZ6IbtY25o/ZMliU3vGMnT1Jcma0BO+Nl0Ol6Hfk2OdIiTHir
	 IuYPABaBESRSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91499EFCE4B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265949358.31368.1066565506006506312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700e9101fcc9bdd29edd380305687064186cda33c491d17ed040e517178d483e
Date: Wed, 04 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772659493

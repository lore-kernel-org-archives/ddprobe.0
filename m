Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB302773F0
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785729634; cv=none; b=AxfwdloHgGLgME1f0s39M2+b444EVMBEVe2Xi4G9AgD2kpij/ybrvIMnTSmXjOfVFOp2gP5IaCedJwjjAFxiVvn5p0RwHg3HVIcRXoxztwLyQrsRX514mx8/cjH1RifDscnC1KU/04yH3Ab0VUHhSFEMjiKkET5jusQhWSfUx3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785729634; c=relaxed/simple;
	bh=xvgdub4hkXYQRLlcGGykaXiT60OSYapi2RLnFiHFGbQ=;
	h=To:Subject:From:Message-Id:Date; b=fa09MKU/iQyYzU9AWD9oCuxQZTL5tleu5zh71Q87lo6nqDVqMuDCmsmBpTd/Hx2KrLbxMrfDHEIbVNWURBOyTL0rBZlT/AEA/HqKuNMGi3DgDu6sZIOg7B5lRDAJdaF03JgYVyTH9wQbZAsfw9AlTQ8y0Yj/DsiKoOZiAbU1cBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGketGRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGketGRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AAEC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785729633;
	bh=xvgdub4hkXYQRLlcGGykaXiT60OSYapi2RLnFiHFGbQ=;
	h=To:Subject:From:Date:From;
	b=NGketGRpBDTt8IMp/MtpbsINWCQZMe0E+pwagYmyhL4xVoLTqSTEwUFuynsYqW4jK
	 dA5Esz1JwFid7r3f6ahioTckXCsZnMiI4pPkRndIvZ19FG/xY4r8E9r1fPc7LHI89p
	 01TsHKFZmOzrFeitan+38bdMXLBUyFhr/R7J9BOCi4SM/pkto8JpBYXX2a4UI/Dawp
	 3LFb1D4tFoJsCdZz8PWFnpvYd/lL1LzgCVFRUyAeRa4y/jkf1QQ2JDic7J170A48Ft
	 Ceq3tXmunhQUUxeACUw/15UXdrgNfzHngrR4NvIOD77BpJiwKose9CpPIYvjRYS74V
	 CUk0rFZaph3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0CEC55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572963368.27139.1425892065994922979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9e9b632afe1b84a91c2d37bc2b0f33f5bdc4655b1621ed2d072122ef093484
Date: Mon, 03 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785729633

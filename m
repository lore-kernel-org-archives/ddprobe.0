Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339131DB95E
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777941454; cv=none; b=WTbcGcHZfNgQMoF8cORAuTen0NclTOdW+7faXFXO4hEyzcc1/ydHqZS4b3NBWDF5GI5uD62P3oeucEi7TQFiZjMNTNpOS0Cw6b2mS2CwZqnqdvOhJlDkoNZjURPvuIV+oyYWumAayMtaoaLlel1hyWz9y8F0/VusXiIR/l3cEWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777941454; c=relaxed/simple;
	bh=aqmNN8QBtVUUEumaFj/g5Nm/NA/QK7Z9/OAPWumoE7s=;
	h=To:Subject:From:Message-Id:Date; b=c6p6vdVzG7VQHylNxk1sPLal+kZ0ef3/dSxSMbdjBHVAVFg4UxHWD9Izhfqi8dLeGp7YCKRoDQXbllgL5U45NDrPxP4IUC2NNGMfoAuh7yJdOrG+jgapXfZdtNUBeue4Y/xTtAKlVQCpVgCT813Y5ebkZPJ5GyCp9gFjDacSw44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2iJiMkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2iJiMkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4E8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777941453;
	bh=aqmNN8QBtVUUEumaFj/g5Nm/NA/QK7Z9/OAPWumoE7s=;
	h=To:Subject:From:Date:From;
	b=g2iJiMkgrQyHRMrMq+93nIjoiAcKfcsVpLVwvwYlxEIxkQoZEGCpfJiNawNWW4wr6
	 Q2aGeh3CZkr1bhJxPx6i5xA32bxx6N9+I1wPTKLYLjChwWwLCd0weLC0IiIMcsFcXZ
	 08zIVO0JbxaxxH5BlTnefOn/Mdye6BzoAfNknoodwMlL16Nm+1/UOFl4SVW4p/clKM
	 DlxrBz3skfDgj2LlkoA83VQfZgLEuLDGLsL0Cxm6+ABId9TGL+Yskmb0ga/9XVBGMq
	 xiQP5cDdTpy5ug0COHOPnFU4an664cuHqr+vDTctHwDg2Zj+V2fjE5FnsAfqdSSpGC
	 qulCt9NUfO3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9852CD342C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794145368.10539.15499412046703347256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982bbf6158b18cffecaa60fce440811015f98aa4adc568bfb13be32d4af3ba4b
Date: Tue, 05 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777941453

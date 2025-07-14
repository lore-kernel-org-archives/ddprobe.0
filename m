Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C00028A1DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752531594; cv=none; b=iohe872Y2C66rtktb7JjlqywHL6T2R575nmXp8Cbt89vlE4LZzwr3ZVja9DdDtS5En9ghCSICcmoXOfHKsphtnOZK9It74WTFOXHwHeGL4Bmxf4S65PXLggm3phThrNgal45jcW98dRBHKjnUHf/7CVyD99yUL8SC3bKnEPyEbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752531594; c=relaxed/simple;
	bh=xcjLRSn3DdOp1o+SoMFX3Mv5spT+hyQiN2ApbZB6FEI=;
	h=To:Subject:From:Message-Id:Date; b=WEq6sb3MkKUgRDM/gLSZlg0Da7ez7sHRidwJeoBUUyoTg43vexVhWBGrW6qTMd1kyM/BggM9ZCafA3ZacVSm6H7nW40a5IdZ4Zj4krWtsv+LYR04o3uQ0A6NpYKl545JJrC02TWCR3KEX/nnzKnODTnQxy0nA3A0a6Ep7JD+DYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTS7talJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTS7talJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35AFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752531593;
	bh=xcjLRSn3DdOp1o+SoMFX3Mv5spT+hyQiN2ApbZB6FEI=;
	h=To:Subject:From:Date:From;
	b=oTS7talJNMvIoYRV9tixzXB2g7Pp6iV7mnLbvVo0dvCMh99TscbzDXHAs2IF11jPj
	 Q56P9sUs0PFmZMuQEuuCObFXtM/NuUq/uX0QliTWI0Lr/5rWegSTlnIAdzcEAzUxgh
	 0vxCeJaNXF9vsgbZQl7XFvhe6bjTL7mPvxpeyXX4lj14+JA9iN9JQBBSN3IZdwS+91
	 Vxvhn2lDo+5/xh7PrnlFaS7v/dFtQoiF3Oc6P2eCg5drPR6D8XGSgwgRomMSk+I4nW
	 6QzFOQes5isW20BHkvq2SoVd8XuiMrP8/gA1PdLtO4c/VqGk+q5vSFma7BdUqI0gZt
	 wbEt+kucB9Hhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E1C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253159358.12358.16040489891480687729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b9b601d4bd08d7fd8c2fb5bdecc40d06e6872684f445897b155436ae3a72ee
Date: Mon, 14 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752531593

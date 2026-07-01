Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2643632B103
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782942514; cv=none; b=OqFZaABLBW4YPhSsSpkaN2xQ2rXb30wjh0p5c8MyWqkykts4epqqJ4zu4c56haJlw7/UBMzYzEt767NPyuhKbLJdDCyoWPpTIRmbFOVmlnbrCVFx49GI/OCl1mycZcV8CbrwIjfS1G2nFpcfQlflcn75Uz+1GWC356D0fWx5xd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782942514; c=relaxed/simple;
	bh=YeVUD38JB3IHcF26XxL2sAev5uhEN9vI9zhcz9QEy00=;
	h=To:Subject:From:Message-Id:Date; b=EPETrMtlQ4zCzSPecU6niqG9LD8u7hwJK/5TdmXU6gi5vSlqfj6z4y5pjogewHDdIjijMfjtrF4KN0J8BszgvPo8qxXU3dtRBAE+1QHWaagTxnmgkj3gkmXkuR+N9e5X8CBQOqvT4FVHkxkFSRER3HciJ3wbqT4TtnIwg20y9Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCxTKX8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCxTKX8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93E0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782942513;
	bh=YeVUD38JB3IHcF26XxL2sAev5uhEN9vI9zhcz9QEy00=;
	h=To:Subject:From:Date:From;
	b=uCxTKX8I2EWaI41AcZ/7ZBgXnMSoocc12yrLReQ5xmn0g92vONEIVO3yxEGleR1GL
	 d1T/1x2kfhYXou26ONRI/71er/l4kXb+ZTiMAJHvMY1LgYSNG+FIRIj765FmdTy4m/
	 hTYVdNLF3n8k0wBd/Pk8x22MHsnyQzZdgeIKnCyiCdUsRNODYNb7/FDPSggyMawOxR
	 PXWhQ3n0HWBhS+pzLhYy9vVyb3l9HIfcDNoHb5rMFthEGVQigVuSAn5PGrGo+FI0hv
	 9MRPpxXWHTmnx2cHuWXICTEaq3DjeVLtDhxrVd3DZlf2DW8q42MH7J8Yd4gtd6tEa4
	 tB938ib9/m1sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9844C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294251368.25893.7807305360533007258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301a292ae258bd84fb2c9aceb6a91ba82c8b4bebb168ba841d81bc8f9d64c5ec
Date: Wed, 01 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782942513

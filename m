Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320381401C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724809554; cv=none; b=ijuxJN0Ba0Y775w8phF0DJD4FUcj+/AuMx5BcF2f/TVbH6V/U3jXSAiJcDfDtboYTyN4UxXjtw77Ur7uxvbzjh/J2bFYJbAPtm5j2Wvs8czQnYOk4wSYNq8qrpGSC5nGRjFqegm6w0rIyOqonMTaz4U79bFXDEvpFnL0UyCCRxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724809554; c=relaxed/simple;
	bh=xBYPbs1XJN33mCO7e++Xe8S2SEhcqRgUGj0g4x+XHuo=;
	h=To:Subject:From:Message-Id:Date; b=p/3HXBuHjNIfJiw5UkjNUozxwcAViMNQCux6p2aNSXXwHSgMLxUno5r69/GXRv+n/R2/JvunfAcl6olKrP7ELoSXC8YhphmN0MXzqT1rBYqriE0iSdpFKlcqTxDM7iWID1ez7viuqsOS0Cnv85qcFNPn+65wvIKsIRY5TLbppIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+NvhNAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+NvhNAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49B3C4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724809553;
	bh=xBYPbs1XJN33mCO7e++Xe8S2SEhcqRgUGj0g4x+XHuo=;
	h=To:Subject:From:Date:From;
	b=p+NvhNAu4bSetNJacJEhNbWoo4mCSE8fV65tDoq28TbM/QGrB3RV2fys+YoNcG8xH
	 RKWsCGrs6e6D58evx+Ir8V22hXS/SEswNovkXYt7Ei5vTxKiMTbDQVnLp+sBqc6i2f
	 JmerdGFGOB0zn47Fd5vXPGS6Jdfh9vlDM7ndW9PVMbPNw55trNQDvHmwqKwZTgfdXd
	 uBK7tpsKoL3dVo968mY2hXK+pBXOd7J0HgVaHyfyCJePZa/rWLSqI2aM+IZHZWQQs9
	 vRyBQ3JsM7GC47by/gFI3AFNwYNqAbZJIBwlRGMGGqx1f6Utay6uti5l8B2gWLO6DT
	 al3Idcuh4RvIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999AFC54747
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480955361.8503.5142352192977743692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9653011408e4c1fcf82b7b56af6e87a2f8b93867758f563966e9bac5b7b20f86
Date: Wed, 28 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724809553

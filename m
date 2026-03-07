Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C087083C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772899494; cv=none; b=GvwNxskW1L5lj5y/c3ohC7dY7ftK+FlFQBRgKRxbVA4QxyZit5xHTPKhl0y2rxmF4kvTIW878rEom06ApkwY4y/dkCU4jZIHgL9VJV30D3AiVncI1zWw5t52NMbcK8U/P/KLtJtPtlUywF31fbauZcTGEu8aSU06SUBnVAC8GwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772899494; c=relaxed/simple;
	bh=6AxaFiuWl3nJJlhUqpTMPuoxFOHZbLGMHMzf+aKeI3c=;
	h=To:Subject:From:Message-Id:Date; b=WWPq9bOoQh1pkCJJSp4hsNsPirfAIbz2oTiKG/PBWsdXFaDJDbJ1DbSh2RJJ3a3az8XkD9ElujLoI3jhxS60K9a1Zh/ObJ+af6Y7Q7pXggqcu7kUrRWW/KVf/Ksnyxd9M4wekHp/dxSLBZ16ug3tVEgz7dr5fMXNTRlij94othc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mf57jgjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mf57jgjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B99C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772899493;
	bh=6AxaFiuWl3nJJlhUqpTMPuoxFOHZbLGMHMzf+aKeI3c=;
	h=To:Subject:From:Date:From;
	b=Mf57jgjzkZcfg/MFzKZNORtebSQsCUoyJR0V/nhTn/EFtLTOCnWA+4ryp09td+Xws
	 J8nGDR8SexYt4i3wh2upXUDTjGESDidUnq3DK6C9KYDq1VUDJ3LeSvWyMNZZtyKJ+W
	 479k5cCKOD8avouKMmNXumViXNBc2RmrekE2DERgVvKB6IDSdO51u7LpwwD8pG53b5
	 ffV8OLsmeYLVmzHIv0tIF4C23qxguW4sFgh+KrKYI0q+NoYPqzigFiCRRExiY6coIW
	 GU6szuJyn24zNuK36IijqAQ/OEfY9w2IXvQ8a/bdY12k4WVtdfsGomT56bTrRnb4XT
	 iSE4OsqNJLhKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E48F55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289949361.27308.6387570835055663504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42378cb2594293fc8db7a290de7c7c4e756bd54cfa44a059ab1b10bda7d04d72
Date: Sat, 07 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772899493

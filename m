Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D20B26C399
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763712114; cv=none; b=Q4NA5k+lSUbeQtswQeQSiUdjlTpHuPYHW3HQyYjSJ4bdQ3kFjzH6oQsSxZs+wUK6axR/dutyELgf46w4MoB7oRf/0nx/vTvAnwIaiD52GS56tEKuSGnUqPbZHoOO5ctLUMAwrKzX7hqPQlRxXPA6ALAytqD40elEZf08fHWA0vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763712114; c=relaxed/simple;
	bh=h4dkJhO/3nzku33fSU9ieslJFJzXQB9ErTrNVYh2cPk=;
	h=To:Subject:From:Message-Id:Date; b=ReJLvCgDmDeENzQwdBD3SaIpVpgmjaZNVRyDXZ1FPys2X2yOuC62XAwYrPLbrffLGE884zVnr0lHAAnWu5kHUUzdI8gwLhTQRbNukwLLP7A5JF5kF3+Xpb+dNEN601DLMBzo48B+NEY30mRq75vclNkasMBl5OofrCmGsCveYas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prdIMbxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prdIMbxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E2FC113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763712113;
	bh=h4dkJhO/3nzku33fSU9ieslJFJzXQB9ErTrNVYh2cPk=;
	h=To:Subject:From:Date:From;
	b=prdIMbxHNqumSoIMyy8CTwjeXH09IhdCcgyZw0P5HPWZ8K/viijiLcUza7HsLezZ8
	 1KdoEXBfA4kVQhyrWYa505MGQHAeC0fKQtpT9l+3APPQ5i7juWRFEKdDUBZhoiFGwt
	 uIR613djalsEqcj1qhoOTJcOGhoOH88EyMoYiuqeLAjkOAvOMh5w5uEKIescf4m3W+
	 QcRbj+KzY8aCraAiyLHD3M7VlcITdHMsFCum2VSI6gDsisl0lcKExD+h7bJhf2NUUO
	 kpqm0CYETcnTqdeoOa926+mLCab/H/SMadMcw1fro2YevGLFPnZTKfK8AzDZgMjnrU
	 QRInO7soGs/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A10CFA477
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371211358.27132.16048197245991794439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8533743ca40e07ec1a9902ba7fc8160b9398e3367e11d1b8ff8bd8fe3106f280
Date: Fri, 21 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763712113

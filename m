Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD7F6FC5
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717214663; cv=none; b=Byrzoh+YrEUrIGoVdj31wM/oRHPCryc5HPiCmoP3q2DUkPcM93DSvKo5jpJnYJ0l32mds/1oKck9QIsFU9B2w8eDf2XgVcJACdgoH7cwnTM6QPJFEFx63KU7NdyZ8GIrsfY4hDO15BKmlsOZnViBAi7o8SY9mZ8qP5bDKDIGdR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717214663; c=relaxed/simple;
	bh=YZLnkofqvSKCzTlPdEV56iBfWjbMo5Cv753MjEab5oA=;
	h=To:Subject:From:Message-Id:Date; b=IFvJZ3Ouj7Pop5ZhY45Eg2vRNOkvmppxRfxYCnDgAuKlm9sWg3p9s3ChLJlcJzQvddOmFEZz4p4Qu01pDxJqHoevftFffGzYRPLPqqio5dN+IC8HKtmdvRNIp4UiMlPVN2Ifp7VJSAQ1QxCjqHnHq48ME0sbFlet5eYez8025ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smuQDSW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smuQDSW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 029FDC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717214663;
	bh=YZLnkofqvSKCzTlPdEV56iBfWjbMo5Cv753MjEab5oA=;
	h=To:Subject:From:Date:From;
	b=smuQDSW/YeQQ69hxH7k8Nes4Ew6IxcHaQX47xM68k/Xuhw5td5oxAFVUbULhci8iF
	 PcFnEklChB+IhHG2wnuwvaPsAIYtn6WXLLi9yiT21cD5sQekuN41hXjahfNClMrBq9
	 mGzOkhW8+8E4m+iqfxmACPsWJucDVjNOKmxQbd/FkFJX+EwNC7iEby83zjyT3DQING
	 sFy/bfn6qzshp9QGU+/1sN7csUb8hKUnYzhVssjclqsCYejbjC4GaedPAYLphHu1LA
	 /1Jd2dBbeGQSAtnRCcKgmYjVqQAe7lzSY4UJQfQFn2Y1aM23U9dNsNnRIyNVJJrSkm
	 ajA8ztcYUIFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF020C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721466287.2476.14472114857320775902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89ed3974fa42d61297db46cad77bde8a4e3384c9ece2c7e7630f491d0a28d9a
Date: Sat, 01 Jun 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717214662

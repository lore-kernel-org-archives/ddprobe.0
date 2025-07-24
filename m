Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DDC4430
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753316393; cv=none; b=oLziDS+806rFJdkuK18kgPoX5vUBFxepFTKAeX+3H2ofFxWVriEzUzcytjKPv6MRpu09qHqB0uujmeYaWReZxHB4i0ys8+Dz8d3UMEdYZ3HqXEsVV6cIhXXpADh64VGIa3zxWrzMxS4cjI47OLe/yB36Lv2YxPi4n0KKmGyG+/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753316393; c=relaxed/simple;
	bh=45QhR5MPKLBPHEMYPya1k38equowIhSgee99hP/sGfo=;
	h=To:Subject:From:Message-Id:Date; b=KZhz0pHpvud8mtiFjKNy5KsMxVdMRMQ8nUHTc+ynb0lPJBOYTTqCs5EFH5u7tliJ1rhipHaR//Mm76hMEthZNBk7AQqE6KRErPgY6E/dwXDev7eWNArW4puS/L6zgUpoalNH74rbzYOVfadQRpu59cdAwixMTSB7ifPrWzCgR/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKxfRhXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKxfRhXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753316393;
	bh=45QhR5MPKLBPHEMYPya1k38equowIhSgee99hP/sGfo=;
	h=To:Subject:From:Date:From;
	b=DKxfRhXShVbOkMgc3eYFm+L4JtHS0s2NBdwq/KtYYq189/ra/0r+EI4lpIM9x3cop
	 PwiCFfaKOAj8hVJVeHh6i1Qkvns3n52qHUTE/wZsEGMrNEJtIy9ncD0braVgqpcoRQ
	 HGGAQUrOEM4dOYajmubCksmYMS630ILPSJp3cxRkvkntlKNXYy58odMhCnc0IjUl8d
	 iNs2WXsyJkxgEvhWEOByU2U2OXGh1Od2KN4/34cevmWFvonnpsny5ohDwYoUKjgl/u
	 E4+MYIr3bbN7rudYchkp5sRS3085A9/Y+u/Y6HoZzP5jRdGCrTlW4XEKmOn0V7qEeE
	 I6AJbG6aI1CZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A7C83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331639357.23495.11777545727837987159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c2a550b6d1575f2968329474d49ccfe778eaf7d2d0489860749dbdff31b5e8
Date: Thu, 24 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753316393

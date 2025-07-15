Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EB419CCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752608394; cv=none; b=qDVEaP7s5T+yj676YEF9AljCJwg5xTR4CbJfM/qwfc6PmCcnubV171zBbvSeJEJwJwSrzKjelJart7eLVDKJJ9trXotNa0vQaaOZCwA6TJsOasY5gULMdOagF3cbxlCL7YndJZttkTsItuSXTZ3UsohhNhpnw2y1ilxcOdLllfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752608394; c=relaxed/simple;
	bh=qeAoMvXnrmOi9fuOY4prYVMtLa4DRXoIRkp1bNOLT1o=;
	h=To:Subject:From:Message-Id:Date; b=D+Eg2BfR2PyaGO6YEwpJfWm7UDQs6HDv+3hmy8V8IrNrJ3YsxN1BWMURLv/CmL7o0IgdSMsf76vSqHLm9RCZ1FwSJdpIdlbhouJROmZ5Ta9ojdCr25CwmFEjUTixil6EKtlmg8xqdUp/EmIuDR/8LKWl2L0SW3QV81eeOfFNHa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlOhtFw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlOhtFw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B4C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752608393;
	bh=qeAoMvXnrmOi9fuOY4prYVMtLa4DRXoIRkp1bNOLT1o=;
	h=To:Subject:From:Date:From;
	b=HlOhtFw5yz/r/2f3JSJlUcSvr9HPlvvIdUG+3xVSti5szFPhCqOWk2xpg5OH/8QE2
	 hj4oppDHTNdqTDOb0j0H5S2FiRUpPX2keiT5OpMFtdOi3fQOItdziICLet0bznXN5G
	 oSq6OOYlhQ6IpPqB3dILWHgnJamtoNF5/edEq55xblZrGPEMt/duWG8F9h8BsWHs2S
	 QLZVnRc4CBUnQrEWdQfhCU5xBaweXKjdPD07+Y2+b+n3BNqodZwzqugGrLY2DzSOHQ
	 YhRI95ypNo/ZRg/9W57cS8Hn5I0CChj5ZFC4+36/0yVKNEMR8f/ta5TjdqS/lxL20K
	 UEkYPhtSY7nqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91022C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260839358.13841.15518856735956929125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf45f8231ac95d6b71b3f72e078cf61e55d3da2a5def14477fe02d7763fe73c
Date: Tue, 15 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752608393

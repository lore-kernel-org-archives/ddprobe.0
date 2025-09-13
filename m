Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D293594F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757729994; cv=none; b=B2vx7IOQtveGbh6K7s0O9awBVKsCDJ2t5VK13a6141K9SPR1pT7ag800/h1co+0p5y9Y4ZC0LgrqBidqDaK2kY0a2sCQLlgtG/R0KVI+DcebKsS9yPIrQPNDetPC1c+VCMMSG5k5PrIyXbsD0ES+7angA7SKYHCoa0J6zwUky0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757729994; c=relaxed/simple;
	bh=eGNlbSaFL1RPf0ZoU4gsnjSedGe43ujI52Lspxi0r48=;
	h=To:Subject:From:Message-Id:Date; b=l8RivrW5A8mi/xPZIEMlnBastdgywIOxy2mXj+9DlNdhoHuo6jiBya1f2naKIW4hyImpLgOXEy5lXml2JDCJrUZYe0ezO8yJeBqnHW1Bha+Yrg5V4fMxuFXb3/PrZZTv3y4NciE/78evozxHYTBbot46w0gFfbf+27ZiFagEfh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJXvLlts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJXvLlts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3429C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757729993;
	bh=eGNlbSaFL1RPf0ZoU4gsnjSedGe43ujI52Lspxi0r48=;
	h=To:Subject:From:Date:From;
	b=eJXvLltsd6xOVNTZQjm5J00WfSu8ruzL6bdGYOLh1UJrLB1CFpUhoG7yvCLI1vxXm
	 3H82jin6yhTXGiHLL7G9pgEw590hK0WC2Kc+E7g1MppgTOMCt5cLNbVbYtktZim4bd
	 ba21EKPIKLqjaEq7B7uVBI93QqNR/ALRog9nL0gpbdW4sGu2mAyQd+oV1zS82nVOgC
	 pFKzWF6l9tnNBiBbZFoELUbc4YH2+PVcPW3I+315x4biGwWbpsSbQmEmNvjzWdXZo1
	 s1NdJJJgpxVbSg0htkkMbQBlAyuH1ABh5Y5ld2rRCSH9McqseArrGspI8nml5BMD40
	 MF36b/wu7xORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91871CAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772999357.10962.14068780786930686118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8175b239a8de02ad31ee1f974dca57486852aec197cd095d06a8ed471d1c3c9e
Date: Sat, 13 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757729993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7CC3CBE79
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781777194; cv=none; b=UhIFjgX/dUV0jLgHrtHqRcl40tn4lB7H6QBBS4IvNO+HIemMrXyLzNPbDxmvc+S/jBABGkwbWzSHLzyLbjSBUkWsYD7j9TxZsaOwvXTzchimeYTnOrfKsnyEt7k1L0fXOCuz4B/Dx+3KZXwTBVyiH+Wat8bSxxMP7oFbgGUTDs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781777194; c=relaxed/simple;
	bh=gG+Jl5ouWmg+J8x1tXf68bgeixtwH62iwcLgrKpuDEI=;
	h=To:Subject:From:Message-Id:Date; b=V6j8fjCTFUKoXSNMY0gyt/mk/uWkMcxBLvqAJlyk2seyV1Pwh9RUEMozccPEZFKfkGruDafBPqZ8QAyz6Vc4lleV+yZXx1nzbwDQGUO/9Nr6ezgMZCyHbKGTSi3tup0dJnPXMrsVjnidrhyASBqissbXsBNjsXGGvFj086/1XYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAz1zXRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAz1zXRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB95DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781777193;
	bh=gG+Jl5ouWmg+J8x1tXf68bgeixtwH62iwcLgrKpuDEI=;
	h=To:Subject:From:Date:From;
	b=TAz1zXRYNWlZxNrHkYpyKZtCkce3va54xo2bQqDcwPn1+WvwvIkKt1/7tIAE85gVi
	 CgA34ElVPXRYItiqTSqujvOfkvfB4Poa4w4KTNFWxGfDWXelrh2cbkmDOQNJRE9qZX
	 aw/Pz5tUL5Jj0p7KPe804Jz+UG61C4BPKk/Y0mzOu0pQZ2mB6iBfy6TEXMK/3XJw4h
	 rd/NrN02mhqZAxABJAxR3GM3OTOUQg6oeL3KAb1ONJoJcNTvjzSubCikuZ/kJ3H4TV
	 HDF6KJEE7wyMp2tKi85VjidSc/Sn9OZAhW2CITl2E1CgCaCArJ8G5+4w6trYMufIKJ
	 OG68+VZ2V4ziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF45CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177719370.11202.11945736100014623434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2cffd66ffc37a7c9793d26c1c6631a9f7ec7a39a943efd2262c456e19ee244e
Date: Thu, 18 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781777193

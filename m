Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A03214A9B
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760331594; cv=none; b=UQkEK4AzfHXzgMwaA/9QY2r6giUymE9AKwgJaxbhorWkXCZyuhPW2yEL0L5SYoeQ0Q/7xFmIPYq12IyfXAZgnTy04DIdx5fNjIxpaR8BPlO1KPqv338lggF+tapzDn2H6HNRmZFQIwPHRvp+70qu/8jm21IM02dm3umXlQCz1Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760331594; c=relaxed/simple;
	bh=ph11h0SiS3kyx3Q2iTkUBHlZ4+JGQtkuJDeehCCeTIA=;
	h=To:Subject:From:Message-Id:Date; b=PROw8kT6QEWLOHqNUePpxKYlRk32JQrl/Jnxz6Z6chJ86jgCmZqROoMjb/X6Tuk6YJCJhq2TRJuVCfWTi2MbVftTFLk2YCgjCegExMn+772uQqsaESlMg5rcmTALpm3aBfU7vc0EhUCu6EQvJ5JZw485ROApFsEyCVu9+hb+wlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqpgHRZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqpgHRZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C14C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760331593;
	bh=ph11h0SiS3kyx3Q2iTkUBHlZ4+JGQtkuJDeehCCeTIA=;
	h=To:Subject:From:Date:From;
	b=gqpgHRZm4laj/HPFGLgDzvpopfM96D1AVDtmiK+DxMr17r0j04zgRX0fv+4jMvIhT
	 quQxAIyL2XMii5cOysVDl/DQ1jsEE7Q/BCVO2VgtBS46Vk6poaWG/WtzXXmZDta9hT
	 g1vXVODXE847DNI99L6UwFPJTE5eMT9jGMHD0l8tXlJbQ4o/FZ9kI23kLE4TofkMJM
	 0/gmjeZUSk+dsDTFWM/zbJKWyyk1nD0LpTMk+7EzBTG2VZFjBDQ/TeJ2/vTCqNmLMx
	 Q4XC25EoBKuA2OdT/qSKwyYv/VoBGs2OqJMW8oLiBaVmqap8LGNdkZUMuUKLYkX34c
	 C0ufGIbr8pJog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E33CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033159357.31593.15195674513331489920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0976bd9808ad4c6d810d461c15b983201f832eb7a26c914fe3889f15f0baa2
Date: Mon, 13 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760331593

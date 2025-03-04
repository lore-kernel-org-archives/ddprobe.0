Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E751F3B8B
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741074534; cv=none; b=VjSy37di4BKfNApeimo/9UAJr8ewaLcqM3vsr/8o/IENhgDiLUCEZzBl4u6sD4VkSss6FlnXNChmg3WpJ8ZGOGLVs1SEyKxhwzsJ6qEq7K+An/1CVk8rpjcpL8JHbPD/YnZ+GcorFoxPOY4XFvWbD8iS5ImgnAHNBr65BdFM2no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741074534; c=relaxed/simple;
	bh=IQo5ynxDiVcvEypcKWtsBcBq5OtYUibi3SWx7gRPE9M=;
	h=To:Subject:From:Message-Id:Date; b=ng69deIFyZzOICNor/ic7Qww2lipeEa64qcl6ONUZM/y0+UlEA09Rj0VS9kObtKu8hsZIgHSZRCKwTaV9SkeWrc+jG+UXI+BQXximiyQmutHDhClDM5douZOjViNcRnfJTxGnvRder0upT5guNlO9lbgf0iGFcbtAoNsQlSaFSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haH/4kZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haH/4kZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB54C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741074533;
	bh=IQo5ynxDiVcvEypcKWtsBcBq5OtYUibi3SWx7gRPE9M=;
	h=To:Subject:From:Date:From;
	b=haH/4kZPgcL58nWeqnLVaw6VyhqrGV+l8H4GU9wYfzP7pIgU8VQqojKSGMk7Cb1M9
	 mMXUczfC+xkg3JNQZO5dQ3CfBhosycInFiKL3x052JTclV/8X0/XLqiurvrkRz+/aw
	 i1yK5HXleSoU7Hlj0fnO7UvRuwFXS4Ub01C1gM5L/Ei8ZSgBx9uCnYhMJYj9TMcYoB
	 k/BEEgAkLEZtQwDZCOJWT+My0t3rgstFfQCTEMCnIcigyr2W2owDyyGAgUqNjhAVue
	 Y3XheGI8YIkdtbrDsQpNzWV+OXdQekbRUp8pzch+JEKQQTAX6+Hf22sU9mCCSC/Mg7
	 6lZPcck5t/FOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA508C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107453368.21373.13269041891006104987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb79cf8e86db0bb39272c547af395a14525ff667237230ce1d3cf9366ddc959
Date: Tue, 04 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741074533

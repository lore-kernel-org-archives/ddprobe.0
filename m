Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1137D1DFE00
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750170594; cv=none; b=V38OsXlMzyA2qYE9GJjBxN/F8zGPQ3qXdsvuPnVeNTEpDjY6byS4BMCwOAw7l6WX26A5+GFrq1eEELp6af9FbgsN4BS6EZr97PCogmT2GDwGDprQatkBZK1W4/+zcF4q86zKw9p+7/ipIAC6RCuMSZ1NfHFXc77HJhJHzzjDfuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750170594; c=relaxed/simple;
	bh=pt7Y9eOf2bf9eYeusT2CTOZRIVnVsFLdNVxlFFc3gdc=;
	h=To:Subject:From:Message-Id:Date; b=T3e4kje5WwiBgq2u77ETu4uRG1Q2jMVxVyvateYdwqoa6A04i8fatuQOK2Ez5tRMfIeOeA4c5W4u3p9CEcwmfmQBsJlrMjGNbWI15oXw/JqINWYKkBBgFMj7nb1H/RGMBzVCi1jUlVmS4bKv1Ke9/jVRqePdhHLvCb6SMkBGZTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVcgYcC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVcgYcC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF17C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750170593;
	bh=pt7Y9eOf2bf9eYeusT2CTOZRIVnVsFLdNVxlFFc3gdc=;
	h=To:Subject:From:Date:From;
	b=JVcgYcC2Q/QRfUJi8M3O1x1VcV7uUmQ8fBm8R0eGLLOODJvRXxM5CZWmPuLPEmDa1
	 cl3Ni8ztbwmih2sNu1HvdYuNwRwOLk0gO8tWeLkc7nwcky+3hTLWadI+j3ZtGny2z5
	 jS7otUY7X1CuSR6+wn2Ovvav3FlbYOH1KVMVZ9r7bSyAXPK101beAJli1Pcp2v7rWq
	 pUoNGIfjgOqztP8uIzp7qOeMGO6zZnSoSBMixqtfVkRuFJ6Fuv47nnoMLnM51VGgPV
	 +b5i1nPgHdxwggbj2HGI8nL1IH2DchSmh9Ov8aCMAPeUemOpSr5vuxd9vREViG82kw
	 ChAUpsTrt6vnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFBBC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017059363.13396.17437062897452807677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e2d3d27fa4fb6834189519246a162e0c55fcbc44bd3154d7a9a92cccf825d0
Date: Tue, 17 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750170593

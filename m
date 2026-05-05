Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E581391
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777951054; cv=none; b=Su5DYaEn2kCyMmTYp9VRgZQcMDipnayZ6LUahR2XcNjT7KscotaHgAmI8SL4nyXuHcHFh0CFWDigzYnE9gl/kEt93C5ITzzEIuKFAf5vO5SgC2roRIVbzRmmvhic6rpYQZ6/Y+dP3bUv8gK4j+s+Kmgfgv6t/EEdXez43XlpM5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777951054; c=relaxed/simple;
	bh=/EYLUYa+r7h5kZArxmhDo/71+nwPCRg0DmiKH1Q4pbE=;
	h=To:Subject:From:Message-Id:Date; b=pIeoSNWhC9KfRvrkVSyDdem63DPyNn3YuVqTEV5fAfjXPTFAwzE3k4NeQIPaSzO0HhAvz7tyZ7EDfK/NlVH9IGPNUxqh/8l5VMjR8GVI9Vqn020UVXvJeflkYzk6dFJJ78XLeoPxSF7sCdHhR7qRnV7DsmFB5YLGRf2hVcAX4j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKwZIpKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKwZIpKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1BCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777951053;
	bh=/EYLUYa+r7h5kZArxmhDo/71+nwPCRg0DmiKH1Q4pbE=;
	h=To:Subject:From:Date:From;
	b=oKwZIpKIshmkrAlA/B/25lOdKScEUegdUH86ZWTQ5A5abj5Onwp9ZGPTAwOkSEwQu
	 z9rUzCQRwyRvZMSQl/lPMpv0Lit7mgUUKTHuWYWG0AOvtZMJQMEUQjM2PhARTfWCJv
	 JIGw7cqHjq+v6NdGYR+B79DXY1JF+CDuz02v3iHxEKyhgAb9gCQ7MzLGFqy7xVsULl
	 kst1xCyDDKE1OV27Y/3VqntsSDHqATxXGuCZjjEozOKyIdcG1+nTnDfRHS54NkvUnw
	 syOBgNpExouCnbM2i/5IcXBHALXfIO7lZaIpfLNdRbisCu+mS8iYx/+7DKD99bUNDf
	 9Dg6OWJPy0sTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7B3FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795105368.5620.10612944800557483684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125d85d3208a24a0eb68e1e6b92984054a829bcab51bb425ac6795a9f8a4559e
Date: Tue, 05 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777951053

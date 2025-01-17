Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4125A62E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737123354; cv=none; b=Au2COG2skcyLqr5OGAWBYyWZ6bJzl/jkoROx5NcoZ//m0yYJEmdDzeihVVmn+sNLlP+vfWaMxZlOvIvq8zHxMxPRx96CKYfjpljM/9+ymVDrBiCr0E2jFN2JcD5Sk8XHnZTV4WZpU0OKhqsqamRqNDSoSaZ21CG95+/Ph8u91x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737123354; c=relaxed/simple;
	bh=7AXEgfNT42Nj7RuMlmxZ8siktV6xTHZjd13QB3icUic=;
	h=To:Subject:From:Message-Id:Date; b=EfJaI5fLkL1ljk2lZFb1eybcB8C5fGYa7FODfVn97f9Iv0WYTIXCDxIHPl668o2N5cXiBPmIQ5LLBIs+Xci0RlEvcj8r8zUihPU+XKtiifRf5Jc/zjHNu9JvMlDEJWsTXKLlEYP/Nb/pEyApZlZOz92afnc25Vt5hAB9c8gDXps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck53+b60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck53+b60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CFCC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737123353;
	bh=7AXEgfNT42Nj7RuMlmxZ8siktV6xTHZjd13QB3icUic=;
	h=To:Subject:From:Date:From;
	b=ck53+b60y5rr8Wv6orvPFp0PcNxyICoK2DD1c3BK8l4X4o9e4dRc3xPCsE8dVsD6t
	 DaPw8bIPOl2Vi5bVGGmIKKRyfwO4Qzct5AOpxZ5+c1ZoHnq060xFQLyV+4fjHwxvEr
	 vjktDqMmGVOHwx/5UPLyFuydFPoGCUSRppfhmiyZjI7/2mXJECqMd49at1P3A134nW
	 N2bgWO8sCiNoniWKqv5U63f935R0VltvWyvRWeK5TuhZIXdjm3fwMhe9f3CGL3mKwZ
	 m/MX4/UAw7H4xvRRP+6pK0kZFYXmB44nsivxuh1UUAoKelrgCR1K2XVS0fofrcDG1B
	 dV9sPcf3LIT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0305C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712335361.7975.5253240399565313621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0c8b108db8344ca2db6fe36c38492254f30bdbc3262a78f5b554b3cfb413b9
Date: Fri, 17 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737123353

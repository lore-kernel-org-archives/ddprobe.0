Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2387A36920E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769770434; cv=none; b=cjnk7gULdvsEj+9qAOfrl2CPh106pLNE9IP0VvfpMhBsG7IecBfVfyNKkQgglHzPn9X6TdX8roNhZKpJDZHS1pHfXGJ6fER7Z5bDpm2fH8301a2wmgA7wZ/XXHMzHnwgAmroZmn5VghOBLcuvZ42H3z2XtUugtoA0vW1+6UyocQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769770434; c=relaxed/simple;
	bh=Cfkk++zmWR3H7s0VNiqvSXRaK9uTykWf0xFpzkDfnkE=;
	h=To:Subject:From:Message-Id:Date; b=NNGFpBKSMNupgkF8dNbC5OfTBHUuUSHePRQP8N6B6rfWVMCmMEJaTa+nIq9ifPEoR2BhhkqZfYxmI8dQU+8IaZCiApnVhnfl2t6MsVOhWNdW3+WCDHMUyOFsyb5CeqBL1gcIeE9p+xy60N4zhoCFAmqvgHgOB8S6485UhskOHmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVi5CtAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVi5CtAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E152C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769770433;
	bh=Cfkk++zmWR3H7s0VNiqvSXRaK9uTykWf0xFpzkDfnkE=;
	h=To:Subject:From:Date:From;
	b=pVi5CtAWNmWH2ynl+8qLO7Vh7opGcVInRrorLhzm/wsgO58S4icmzOBNlfMD4okKy
	 dL2bVd1KzPbwLNVGGR/dqGpQH54W4Y0qYC4TTtO4F+NScMEMZ9IfIN4jcvdZ1jKSAj
	 ATtSGJ+eagJHg9MAsKDaoyen0PJDUsb6O+WDiEIdRgFoF8X8ByknnaeKFyxOTQIsPY
	 NovqGSX0KEz3fRLwnoMMu72AmVwvdxLeLT2w3HnvWohLd08Iw9U33FWTGHVevcr0bo
	 dFf8u85osgynvFx8a8fdVBx5ujJlfj8sLonEg7JuaRqOJtIC1g5kKozi99flH2w4Qw
	 L/vSj49nuUK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76ED49C9E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977043358.14849.9080875079512398052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bdf37e0efba9262dc9469db81fa55a86c0c0c6fe1be1c68bc99e2bb773607a
Date: Fri, 30 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769770433

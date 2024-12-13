Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB4B63D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734065754; cv=none; b=SOoNLeiMS3Es7ga/8S+O+midZRlVCmmo55K8TCx+uWlOCwyrRVzDqarlv9oKpVMZsnZoRarISNcotwPmHS2HKe2zpJYxuKO+TdgbzCUir8iEtnpss6znpdnE6KrMCeXMDack0xPbvh9H5Ps8LguXp1BlIiLYsb38J05WDAikVhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734065754; c=relaxed/simple;
	bh=Yp3tuo80qlgPMJBBWmA0Fmppemp8zSb0YSAPEvtmaa8=;
	h=To:Subject:From:Message-Id:Date; b=RGdCKQtrTSQynvhXia0UGLmjT7wZqUWoP1gqqyteG2HEyxxuYKcYIZ8gxIk8NoSKvn4R/ADCfCQUFcPqFCNujm9vvUl2GCmDF3Vab5G/Cp3xkLONE3pHji2FFyIJXQvZ7Qa1A53dbK09McwDVKNeJcVi33sPmeSamhruKEZ2kFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH7WATRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH7WATRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC53C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734065753;
	bh=Yp3tuo80qlgPMJBBWmA0Fmppemp8zSb0YSAPEvtmaa8=;
	h=To:Subject:From:Date:From;
	b=bH7WATRo45Ap/cWG5piguNQvXWGFiU+V3uc1ZSWtXm1YX74/xhJbdwQzNwUA3lOEV
	 ihndAvneHNhpVs7o5EYGeWvXlOKBk/n5Mo/kQNob6YLeZ4kESqAYch6w5ARoZJRFOX
	 cvgJn8X3GmTmUXzsu1gR3rdS4h4ms/TTj4Q5bNG7OGpQHwA7ndImFUCgIhHeiNDgW9
	 XQThc2bOkYVsYPTq8KqrszWQXjjEIw6q0bI2zv2hFQZTYTFom949l+Q0qLLB1Sjkgx
	 CL+Cveb152ty3a5Wy93UQPTieGTzIyzu29k6o2CgsL5W4sZ/UP3JZvx5LLEymNE497
	 k6n5bCkbcD+5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F8EE7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173406575364.26869.1384666820832095172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291a3789e4e22761e89e4079bdb45c72f842c898af649a44fe1d4a5fb13da745
Date: Fri, 13 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734065753

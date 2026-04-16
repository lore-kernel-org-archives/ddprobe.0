Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7A8274658
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776319054; cv=none; b=c4VOisgYlWmSf1Ich3a1oGcELpDe7A5QL0EM5anJhbPvi7dCm+ob5/WV0YLXrJ/CRPyRY2Xkhv/jYiGK0IJhyFHeueEgiO96iJkbAEtCk7Bdr4mxgfASOScQ7GTObu+mWKo4sXRszyaDf4a72dSeMwgN/6Y3d9GJQMx456fmzs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776319054; c=relaxed/simple;
	bh=NxjnOqOOuypyiQnDBJB5rFaGcN2EEk1LOCtkXjUhQuk=;
	h=To:Subject:From:Message-Id:Date; b=tzyAfMLwPisUGks9QsHvf2OCDOAIkkdOPZmuK2QFcivp1VCN8u4faxmMom5/EPCcETPB3vXSOMpuxxJFGOwlwB1qi8nN9JzHwroGayUeM8jBse8jrhIDsHXuNatw2PyiFQEgYBOmtuydxudM323vfyOg0VOeFbsGJvTlxSZt4Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlnZlp4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlnZlp4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA6FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776319053;
	bh=NxjnOqOOuypyiQnDBJB5rFaGcN2EEk1LOCtkXjUhQuk=;
	h=To:Subject:From:Date:From;
	b=hlnZlp4gf2IOeSoqZ2/EYHWsHJQpBKjsYkV4LjoT8/3258pA597JWHksGGtWdFiVY
	 Y72LlQWQ1QD+jG7bABvWhtemW04TkqZr8dT3wEC+JsJI2hMG4llYPqc41GupyHetS1
	 KSDwOLbMptNp2etRiZg2c4oYqs9dygAbUII7GkilWbJqS7v2E3egub8VYmJzSoaxfS
	 t/Lh2FwmlQaW6I2qfoMWN+R/+t+G46a7wMlWP9ll1BE2f3xIa+0gRj/XSqJ3C9hZSz
	 q2W7kSncdp2I0JKvryKfSqhIDVOf6LBIY7ujZdCTyO95JZTrnkvlxFGwWXAxEaFbAY
	 6rDg1pDqibZVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA05AF433F7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631905368.23963.9184078779556402630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23ee273a9a78feb8bf60a079b0a11e2ea4c1e07af472ef493cfabe25df0064f
Date: Thu, 16 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776319053

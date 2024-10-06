Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341E217DFE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728240354; cv=none; b=F752yJg87RDkkmmaTBFzJ9YRwk7h9m3JR98ffuyJdvbjz6f8/V9Jh8+SKDeiiHmRTlZoE4EZWvs4h817frCPw76F//PMM0vTBe2i/OpTon0jkgFgaGXmauXUORC/1I4PQu876bkHRs5OWkaJJnlyzNpGnETEIVpByIirF/2kaL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728240354; c=relaxed/simple;
	bh=G5bufzfFvgZjbGX2FfoTSxj/QlIzaw3Z9/BwtNs/Wis=;
	h=To:Subject:From:Message-Id:Date; b=SXqthJySzziKSVREz2p9H1EVqBnA74SeDVIV9t2aBNLQN8scqS7Y79gYrDyyBuO5r9qOuClbwJln/DdNwAa9fG/a9b/7YoN0TdplinsljQD87GjswZhss6MNWKIdu0JKHMq1zHPTP3QcjsvmXXUo6AjWzTmWjQwhQn1848migyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=autO3d83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="autO3d83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B225DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728240353;
	bh=G5bufzfFvgZjbGX2FfoTSxj/QlIzaw3Z9/BwtNs/Wis=;
	h=To:Subject:From:Date:From;
	b=autO3d83A0Jlti+KxiIJL4K8zMeDq+G2wyGs7noYiC22JXF+BD7CPss3WE9obspN8
	 zN/5qbtSy3JXyVTc6MkqofprfsBpqjgbBVpq5Fps4zjp3iE7LtTVwK7BcqlJms0FZw
	 UYMSCs6u50IwMdpG+no4vKE0oJnJWdDxaa+qeqwBkMWLVGKbewD88S8vXiRjuI5wZC
	 1pr2pcmi1MF1j5J2lyEtCmzltNraBJhhZcy+qa5HGB/G5Nc8uR+XeOVDAfDR2lf3QB
	 viG0zj9HHscKHJX8nuUVKU6q2ViLOVONnWYCk1aUbMwQzMA3rZmoficAln+JxuqbIZ
	 N+RHwzbW3SU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC4CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824035361.14677.13175149121156020377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58e9691f6086dc1bfae795c38dcc3d471fc404f8abf683c7422bb812183d0c7
Date: Sun, 06 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728240353

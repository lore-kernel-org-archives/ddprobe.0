Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E971EC00E
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730898953; cv=none; b=g1pZrRnMFv+W5nl+c8MigJgn9q87hql+9VM5t9/CoDye7VKuStnXLQMRuRMhemG46ofLN2/Vcjk3B4wckoBjok+CfpVrrbeN+VVb87BqzeX9DZCmV4Slr6cv91pzn56FFQ6WVIJmiYlzUxF1LbT7W7TtnWhHK/otMqzvrsLAK78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730898953; c=relaxed/simple;
	bh=lVZ5+6cq4plwxtF/AnUN6WY+2Zd1ziZCLAnEPYmKmqk=;
	h=To:Subject:From:Message-Id:Date; b=XAafbXuvMArnP7IyBKGUv5qg4QJFJSJqcnppVRAfLf3ROFU2P+0Kiofx88rG0oaW24zBq/H7aHhTLmKaftbbVEdu5NO0IGbEluOPohhWKfmqDKzsQSwP/JVVF+6O5lVoe1fUm+xdrioFmdeYQUQBrof3cQN/sZo+z9TA7RBEJAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBwPB0Jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBwPB0Jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE0DC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730898953;
	bh=lVZ5+6cq4plwxtF/AnUN6WY+2Zd1ziZCLAnEPYmKmqk=;
	h=To:Subject:From:Date:From;
	b=sBwPB0Jv5tzKQQC5Olc1TwTnZ/DZ+wQCKiAPe/3WnqCxGK4HLRT8f6w/A1I9/W1mC
	 BdaWB4peP6cc6+eQs7Puf9Xb+jmrmTIb8a36Ft9R1JOXhueayMFWedzNEJyNd8QOvr
	 3V53gLJ86B9Ekm1zHsd3Ec4hpbCz+iuki/lEDtimnLZW9e4TPy6QXPo5pDVYzyYR8i
	 wRKWQBBNlfvMqu1hvN2FRipX4Pxm0VK9Tgox8h62m6+4yuVH3N7W2EcAGBtZPtwGjz
	 FkDIixMGdB48ES5aQ2Fh/mCKEp1jQ7fMUpyTQJQPEgFj1Wv7GpsPWenJqhGPQOi/b2
	 YnLtBQ9djD4zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CFCD44D58
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173089895360.26287.13193710955655412650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae47979e669d906866aadde0a763358d5324a54b6492353e409bd8f2e52b0941
Date: Wed, 06 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730898953

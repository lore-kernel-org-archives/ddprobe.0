Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCF238384
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749871794; cv=none; b=u6st4BG1B6lkVRMuDtxooHrpeQuQlhg7zbH6Bzhw/VixtTvP2xkLrLdIzkUTin82NfxkDhFEjbOv8EemkMNcYa4nMgZ5s5vtK1xkTqtxJLyKmqQEYlgIRHWTpjlW3sMFufc0bsQQkiCEiuhgfXKFVfnx/a44eHfbCvLocNpKq5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749871794; c=relaxed/simple;
	bh=DhGWmf5vQsz1k8TrUbZn7gLEYdqVUHp1pIGEdIf47+Y=;
	h=To:Subject:From:Message-Id:Date; b=bQHgaxomBvf7qU8ydNunFBcfOfWLZUuZ6tl0xgtFncDeJiAJ/Bp0ftlGTKBNor6NXWoJpsYX4LFA3ex65wf09tTumcojMLLlmatY0dZsWi2rOoT802C6wEt9rchWaSmPixlr5VXIHXoPGPOp9VPyM0bJJZTyI6oeq+0oVBbuLbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzIu5GpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzIu5GpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FDEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749871793;
	bh=DhGWmf5vQsz1k8TrUbZn7gLEYdqVUHp1pIGEdIf47+Y=;
	h=To:Subject:From:Date:From;
	b=qzIu5GpCCufSOkoZkM6k1KAhh1ozN2V+BV71FTBv9cbFbC4F0BavKFsLkPKsTpq1k
	 zjUDuUVho1+Ji7q2TGgoJlqKVpZXivwt2PGLiMlHedWSFobgC/NvnYPV3AY6shxlvS
	 nXZ/Chq64xIfHY859L1fZSpH1yYZRhkSSKiDw+xaA2T0On26g3lFjNJlKfhfXqx9eL
	 Z9kj7dSw8QL7NFPYjI13NrfV96pWM5G4e2xrQbU74FLRslyLJOOHbaqxd+HBMB9nar
	 hTYxql0Oa0h7UFsnRq0RVJQGJMUa8+wkxTNMtELeifDWalSi9iXEBp36P1C7KG1wU7
	 oc+9eAt2JDWog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F22C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987179357.8831.4975695892831209189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17f7beea890b2595185749c7cc6f9c256ec35cfc15d7b4511ac0f2eaec0c7f3
Date: Sat, 14 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749871793

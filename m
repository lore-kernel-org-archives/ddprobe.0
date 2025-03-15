Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5381401C
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742012335; cv=none; b=bsGHuhRVefTm/GepsxG5PY4YG8uQZvCJRBl/kxNkkHKSYGstl/VYb+Fao5nVSCcGEdvt61O4cuRVqSfaOdrh3ytvC1evFuVBpA1TZgbU6LkWaowHsU3k394eiTR8zk+HVFK5YDo4nAI5aeD3yGqouMc0lon6yxoG+R9SeXnARgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742012335; c=relaxed/simple;
	bh=MCA0ubueIJRBGgfOYLOA0S7be0Qoogn3k28kwfNxCas=;
	h=To:Subject:From:Message-Id:Date; b=O5a8Zsut2m8aokmdQI1nqH073Lrx3mJQvAcKF6fH2BfilxIt+BP8BTMAK/i+tObFDBwPRAY6Ry4MPHhzVV8qhUJ1esiyLoTmwVhxchvM6RYRknbfFu7N0gVIItXiESzJxG7QClCU8JjCw9k4yWTQEOEJ/wVYw55oBTMaN2PZ398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMoGijpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMoGijpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13DAC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742012333;
	bh=MCA0ubueIJRBGgfOYLOA0S7be0Qoogn3k28kwfNxCas=;
	h=To:Subject:From:Date:From;
	b=vMoGijpY+hTwFpedCnRmdqgL+Dr53/Jl4Uo+BpNvWrcgXLTNgtkl9T9hkgjo1LN23
	 pPt7xBWOcbWnEeaqxBLb2eKxWnm7UmWfsI3JOtS1LYTRHJvOG2SJ7R3liX3dCYu3Jc
	 mTOPPHB7/2K3uOA5biWfAYGjn3BeTy5Usu6auqp+Um8oV6kW36Q4NSZ2yAnqjpXdo8
	 n+DA2WcSWFnXneSMQpwsv1vHKN1vzLKqQv6m8XeDsKxzg1U7IEwVEbHnEYgjMatmcP
	 ZllB/HQ2PDWNGaWOpZP8CPYNeMXjzHx7oFXnXqxpLveAPKxStR+GXZd0gQnBV3xnsI
	 waspWA+RReyPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14E4C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201233362.27510.1393008239792501055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eeebbc2c660a5183bc17c3433b66e57ad84b638fb9a1355fe03b0becd495ffe
Date: Sat, 15 Mar 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742012333

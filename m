Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5A2212FB0
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743458994; cv=none; b=uAJxQB27Jk+CeJFoqR7JMyQqyrcKX6eQdMmMDR8ImllqObLtaeLNf9eI2Tr7Wk+QEGqSbbyOy1GgdVtR0o4ZBOkfhJzIz4XBMVeS2TWh+abmjbO6fDujS2QeI3E1m+EPVUO1sI60Cyns8FuVTG0i3YOdhqTyAq0NsMtcS2dyRwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743458994; c=relaxed/simple;
	bh=047nQnhu6Lo6USypvznpTBBSRjnaWE7QQEzw+RIwy2E=;
	h=To:Subject:From:Message-Id:Date; b=cWs1TsUhUUo38fVFepInIbJuNcIiI4aLMCfN5xyTTQNfAr3YWW0rLarr25UCJliCOZg5E4Msk+lsDDqe8gj28nc1VZGvIiJIZPLspDZrOBq0paLP/hNOoaCnnapaMTqcKDcokkGa0BFqI4kBJPAw2d/IquZ3W4h9ztn1rEV1UfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+TUJGNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+TUJGNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE262C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743458993;
	bh=047nQnhu6Lo6USypvznpTBBSRjnaWE7QQEzw+RIwy2E=;
	h=To:Subject:From:Date:From;
	b=F+TUJGNug3gYeXuk67x3sUY1+x/M/JjKWXyVci4gDfYmVKanZprD2uPbobkSoSl1S
	 0TYqxW13A1K3u6wrlq6peooWewX9ZHDANF90qdOD3+YbO00E19Vg9b/8GKjEXjv1WI
	 Uh5MJg8yeop8SsBUW1RrBNZ+bVjtoTc5DKxghw7F2D042UnZfqiycH/ztoPZsoSm4c
	 SIKDy48oCUTI3Dg+Xkgsl8tjt5PSSc9ter2N2SSva1vMrC11PFjEjKaIQS1rX6KkZ5
	 vbfunNFzzLaM1YfPUb1Mr69KLCayC7JACngObASOZbMByZvTkZKJq9ecJyszGPTmoq
	 7eHGWAI6XjcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99602C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345899359.21295.3588152146517204046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c047c1b591ea88a4590ec18578ec4ef37dcd6b822b4b69993c3c1748be0240e
Date: Mon, 31 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743458993

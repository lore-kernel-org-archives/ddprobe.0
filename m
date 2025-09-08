Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2854D235BEE
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757326794; cv=none; b=X+bemCLG6hjtpjKwotDu8zt7PU0NO8OUEZzq2rozAk1yn+XN4N9o2HZYWdFckmgp40anbLSnH1ANp34BW4UzBpUiQzcuAW0dhhi21xFdQd8EbjyJ2pBAow35R58+BJxy8GG88nXe+6wK4CNMgqdBVX7AIEL2dd5zEcEYRr2VyvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757326794; c=relaxed/simple;
	bh=y2fLh7bi1ATE8LhZsfJudVCzRC+ekX5yXhjeUufzygw=;
	h=To:Subject:From:Message-Id:Date; b=Wv1axuV2DesltTXAQqoqDeaN0O/2IhSkPriZ2LxpatgYAwJH4hCGjqF4K9VoH8TUlnyTq9qbHJ3mzTlpkANJFMOu/sVAI3o/+SSUt/fCoGWZxevb0NyQWb/U6KhkkJDtxA7YAADlVvD22cts+BqrbxTYfX79teI2beG9hJGjkSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjXWjTu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjXWjTu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9B5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757326793;
	bh=y2fLh7bi1ATE8LhZsfJudVCzRC+ekX5yXhjeUufzygw=;
	h=To:Subject:From:Date:From;
	b=UjXWjTu0l2Fv0JdgcfKxkzPov6aTixHnQ9ccDNYj0RvrBTxPhEll9bVNEIYWoVsvx
	 SLD8yMS2SJ7Ss220PBF8lOSuavi0ZoMGymIYCL+cx1rTXjEzjr/ODn/50+4P3M8nak
	 srrxPmHrk0BVSMlzOAsL4oXqpqGOwmNg60FyCSEgsIXPkDQAxWkA25E2jbP+OD32Cz
	 BdlhUEWuE6JIzWSdi9WxQwaGA83aNuf40NKkGzVZRIf3PQoBSWQuz29PMeT/RcwVKa
	 jV/9bTkmUT2JbFEbPF2DOjllF+gSikRWWTXaCO5wbfXKosJIvxOOZsP7L/4s9yyPF8
	 Lds2DiqCwr8BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9093ECAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732679358.7331.4918259496324966683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e9108063a2d1ce3144eae31da5e3b218ebc71e2bd4bc31c9319c2902a0ce52
Date: Mon, 08 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757326793

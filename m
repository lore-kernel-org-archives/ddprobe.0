Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1914326B742
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791337834; cv=none; b=Gl73D+PgORNLxZ2G02VvxJLErccu29bfTBIV5WHf6BMnkmGpwkN5w2yWh9rr4oaukaiShMRZYyk4w9lhMyJYML0KDLVMgmverP5yNXUKLe21/C7EmrJKcwVvmKY5dus7TvQ32zLxx9xVeETJnNjPt/nsBL23g4haY4X5GD1x7Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791337834; c=relaxed/simple;
	bh=yohNEtR/aDn4k4y0TOAA/u3zcbjPtJGhuXUXyBuuGJc=;
	h=To:Subject:From:Message-Id:Date; b=uMOa3xbEKeFSMUVYwJJoU7BMe6zF3B7KYL+r8Xj53S6scPxrU33D7KYlcDLTfPnDsXclFi7VAJ+PV4e3bTqEbXhJiCfmRuqBOFz0fEOsa1XQVgj2U6GF33cWCYtPKLziKM9H6C1M18JB/hUn3b5emzkBD3k7FADW+EgktCCtbn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocjik7jQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocjik7jQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C70C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791337833;
	bh=yohNEtR/aDn4k4y0TOAA/u3zcbjPtJGhuXUXyBuuGJc=;
	h=To:Subject:From:Date:From;
	b=ocjik7jQAozbAsAXFOXFKcqSQo/UlpMvV2Xj2hP/TMn4sFRqBxIXOi8yJZGi02nCk
	 YGvTyPQ2750h7vqheyoiPOVamH6FbbV3fzKYNi7Fecb7pLBciUxt5NKM+aLVThlM6b
	 GtSHathNJFJ8XhZJ7bC6kipdeYN+xGh8nODF/ZrR4maqskm3wveokxqgL2NvodZUNt
	 fNvA4sKDHP0i/SZDbkRbQUecE3oT2Y5j6UFCt8zH7Q/WSpe5erQ+nXWc9Kp3SZIzGe
	 fhe9Nn/u/iisX06AOpqdSHrkAHDo9j9hbPILTP5enSjWwiaE9usIKInDqMadLM0KJ/
	 QGGvcRgZeRw3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB520CA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133783369.21859.14958645672112555033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0512777a1fd3074f99ae6477480609a5b95485721b9880dbe795075b888869a
Date: Wed, 07 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791337833

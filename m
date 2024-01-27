Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049D829D0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706366297; cv=none; b=Im6CbKtVFutqbiIPSS03WIntcfx7aULmRRAYHaIiMmK7zh0vMBWvgIUxCuOZaAmWHpZqhNvV5hsJXiTygowrhM/pC+kTT0eXcNsWQXVY8e00UTtfz5sE8AL36UJY4kffqL+XIWZYvrMvs9MXHSVZHP8PpIizPUgscu3/IG6mSyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706366297; c=relaxed/simple;
	bh=hU1+g57/BNY5q10IlHv/nD2aVRjXit9TnxtfjjtRbqg=;
	h=To:Subject:From:Message-Id:Date; b=rVW17PCsPO4QUcK14Oer+iTsQdDQ7QK8HE0DuKdSDAoFSmR1fu5dphdkSo7vwn+sMdzXuqUoBxqjSPPH44gJjWkBsLELuTQ12QcQArUz1BAa/RgBIXa8Ioqy91283QI1pxNHq91DPAhxOUlulVQ2gDbgG9YBUWtM8h8jhXOym3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyWIIObL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyWIIObL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78435C43390
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706366296;
	bh=hU1+g57/BNY5q10IlHv/nD2aVRjXit9TnxtfjjtRbqg=;
	h=To:Subject:From:Date:From;
	b=jyWIIObLMMNrL5BpAxHLtrxwGEampLh8YHyraJ7mx8ocqf02VYD45JYkc1EAhqpY1
	 19mxRsbuaWlyhMNNRs7GRlKiOsp8NjryGSjM9JDSCTEzxYPsX0GJQB7dG2rM5YPtsG
	 PDMsHBKBHYV5A/+86cNqocRqLiarfFFs+gTIPFrbxSC9/aw8Qwzm3zw1LQcGGV1D9U
	 ZagPLpOZ/A3wHq/q/+xqiZjbvA2RbOPzoyZsTwIzSTny46AlWe2coHxtG+sEnlcbT5
	 y8E4eqwIC58PeyrzVrNcWvJGxMziOLJ0W9rIbht8oG4Ub4h4GCOgA1ITw9U99wLKGN
	 XRWim2ErCPYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6189EC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636629639.514.17935881036273784935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40da59744ee0c641708335b7b803d626e3d9cc9fd1b495f244ec0a36bfb0e089
Date: Sat, 27 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706366296

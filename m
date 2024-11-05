Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E37071747
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730821554; cv=none; b=QJgFVqpjP3Vz0fHtV67gbLBhI55UhlP8g7TsDIv9eunskLFH8D95doNVH6sXSdgJO/p5sx3Lwv06WVPoTOUl72kQ0/gn+wYXOR6XFC50JZHMgW05Ak7NBvJE110tLUkhuS+0B5g1vBhSSZspH+/5acbGNkP81V67HhvYxHq3TrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730821554; c=relaxed/simple;
	bh=S8C8Y9m4r/6c8cTKdp+jR8uABfMrRJwN8eDzaR8doRs=;
	h=To:Subject:From:Message-Id:Date; b=DSiq46d8rCLIg4OkLOLRvJGFdslEPtoGtTsPnOxph1TMSZ9fyyk85m4OSpD0NqOG8NuDLojlwLC5z+LbKCfL4CYwR3zHlUDkqM9MYsJIgnIO/vVkvngblzWZoV1i9CfiWZrG+r88eUteKs5KC5bBvAppx/pZt8MD9r7ev3MLKGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXTTArOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXTTArOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC1C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730821553;
	bh=S8C8Y9m4r/6c8cTKdp+jR8uABfMrRJwN8eDzaR8doRs=;
	h=To:Subject:From:Date:From;
	b=ZXTTArOfHSYBa5TdzK/85waYFlNAOQynWrx5XM/9vbDrvfX2Y0xFwxJSEUGhpQFy3
	 touoNTNUIAneY5cMfCLYYxOb3EWzxeCK+919xKPc3pZLX0fFMo32v0uZYUu3JFmS2g
	 3PMD2FS7F1sNjQG8jfCqT6n4D5RfRhwehqQlAktGhWEPqQA5hSHO1sPbRqr7dWrg+l
	 RVsMprPYGxWs04jC66qvP/NRl6fmmxC+KSp1UZyzy7lzQO9SBRcvj/5ZaWmBnOMKS9
	 oXQzqan0TZG86oGY1ck5emjTW/ezD6B4UtuksANfYfSalFssfwZwXWKW98RI7Zie9x
	 RghNSfENAPnZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CFD2C13E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082155358.8628.9929199024648050279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3802ee3dbd601c0e05719eff6bd8383ab5f782d02477b43b5ba4aa21027f8f00
Date: Tue, 05 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730821553

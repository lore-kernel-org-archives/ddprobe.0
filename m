Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C5B23CB
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716415403; cv=none; b=cCgq0kVAKB6a7ZK33xirZ5McQK/cXxQ04+23ZmOkPG9dQ0QVv7OE86pkyz+df1V9ErwRKAKsbJ2/j8DOHv4vVvuh9kjlDV9+1uTamRDEMWz6WjH5cxFqTtJLbIrQViR49Kz+/M9wY7BKauyx+CX2S6FRh4nFfwK6ECoWd2tpcpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716415403; c=relaxed/simple;
	bh=YCj+SAmBHPmrmxig+AUm7bsBe8GXwQQbxXhjWL7rF/M=;
	h=To:Subject:From:Message-Id:Date; b=imBbCqGOeGIXEqkVbYP1XuU+BMVZVp+ya+SneFRQ99LrHMfmbOkeCSeuIKmgtowBLNbJeZ8V/tNn+BfZiAGzcHEwN7EmtidPRbQfb10NE9uAMwAoT8tPGSUDwgYBG3GCfIiIbsG7Pzsh76fzJufat85EyAeqhlw7o8L+KC84QIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndoVeGEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndoVeGEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB50BC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716415402;
	bh=YCj+SAmBHPmrmxig+AUm7bsBe8GXwQQbxXhjWL7rF/M=;
	h=To:Subject:From:Date:From;
	b=ndoVeGEWW8Vp770FezFzi4vU/157XREoKRUIp/+UsjaUafLWgGjatwwu5Cbl5ZuHL
	 6aNOjUYIXx+0GWsDt65ln19wuBxFiXPrgIANMQzXh3EVg0Ub/LLXEjw3z5s2BanOxI
	 HLlU9Ul+EA/byXn61pWNYcwYHz57Q1jT4uHkjXY/Ejbp9bxTF+I4zJErKH5Xd4kr/h
	 VWj1YbtqaTSrO7s/bq0ydTFBtGAjSawkoJgJFGIh77XRy1R+irlFt4+yNPMBeNafmR
	 ZWe/aTcH5/z/Ho4klGY/etnQwvDNuiMwshs2YYmTGEovnaHZ9vCvEOSxCDh+rNsRlw
	 cWQRkM/2gZSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C735CC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641540279.2645.8138372193717391817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371e20dfd6b24997e2c4e3fda99e1f91a88cac4b0cdc75cca5da116402be9920
Date: Wed, 22 May 2024 22:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716415402

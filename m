Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EB521CC6B
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740585534; cv=none; b=VlJdBcDromcliHDUlY8+eHT5JlWqMjnlpXaeofJt8wD6NDCrbM9pR372vaNrIEvw8X/5VpRhyHPbVc+rgvCDa0lbkLR3G22OkvfRNiDBjjibF1D9R2P8gxFRNvEPkw3XOojK2NCmZ7gyYE8JMb8hmFlE/gCkAYn69izUT6MJ1+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740585534; c=relaxed/simple;
	bh=sTK8aoCTJ/ZZVGr3onl0mZoDR5UchxB9ker3QBmGM7c=;
	h=To:Subject:From:Message-Id:Date; b=cTUGay5Zdy7oaxHFkh8E1o3yS8gBnZ8bRSJgWPZDlTHG7t1H1ISsZcVC5Uuh5KpBCo+TA0AI2hCVnsELqdH63aZvSAgOrigWDgGJf5Nx/4iMMk636mkUyA7YQY96OxeTmwTWiUzBr/Sz7Y0xPW0EUqr0nv9qolbJFUN3rRwAStY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elJMtS8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elJMtS8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64DAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740585533;
	bh=sTK8aoCTJ/ZZVGr3onl0mZoDR5UchxB9ker3QBmGM7c=;
	h=To:Subject:From:Date:From;
	b=elJMtS8sbCf6syLwQ7bqbwvUA4X95e5Dm4uKdBxCQO6Q8xbX7mmYT/EExffDhU1IX
	 nLFy7som8e/ihNI8qxpytB8TigilOYLtSRsOHrrAZPk5LFgfErQfdgWN2dk3wuq5Up
	 pEBk35llA7vkmPsWRdvIp6ZVm9+VzQWrDmG8rbcOhPTWLMORzbib/zXOTzO2EVMDbF
	 uLeJqXysdVzDLEvcHS25Mdh7uTSqILPMSUHz1VfF7pPjUc2XievsXIY2B2YIEwMdme
	 XRHR0geTmberv5XEa5j/wF8uSdjuJJF6oBaf5qAspEXWPUs6pKGYW23uQiL8wMg/OP
	 39ZKZiEtexSEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9938DC021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174058553361.13453.455252602944439204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588a3533204101226750640fc23ddf55591bddf5974725890489ac5a59ce7904
Date: Wed, 26 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740585533

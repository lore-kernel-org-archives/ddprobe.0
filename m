Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D9F20AF98
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748620794; cv=none; b=ZjMyyif0QRCjXz7Q/dfWFoYcKnfiYkbRze2HkbncdtA+99xSKD1vRzgxQkZnz9FGP5Xx+sxwX4dBGfibkI+IqeN70mqjPxZqd/Ug7aImgYYvkw5yDc+7JhQr+j8e3Zy16B94jI4B74b7HC+9ILYbPaz7AwD2FW4QhnDg7t91khs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748620794; c=relaxed/simple;
	bh=H9mY5mP/2Gj89id0Aa97UbyEDSg/pYfxOljPMdtZdfI=;
	h=To:Subject:From:Message-Id:Date; b=Qz9sTpyiSZ1cP5GVYr3Vtf+RM7vBcnPfuuoRRkOmUg3HRPi9o7Jmmfgoq7BRkzkLaClErGovLtDg3zLvMkhKXLuP5pkHnTeu7lIycLE1LXC+vV9ki+J9rP4gJIR8pSIKXluDLw0fXTVxx9iRLgX6F7ATH3dYSUhLVzOL1pIP1h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTy7AlGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTy7AlGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1C8C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748620793;
	bh=H9mY5mP/2Gj89id0Aa97UbyEDSg/pYfxOljPMdtZdfI=;
	h=To:Subject:From:Date:From;
	b=gTy7AlGV3ZhD7NsEqVB1bSKGvvbMQ57Mw4On0IDFplYbqY4yiJQiTb5puYupk9rHW
	 vM+vIyhkSrVrTzUgXeT//6NOxv0B6mIzowtQ+AxHCLHIY1YYxWi9eHXV/u3tPCN2XJ
	 FFc2BbcROrEhN7WO5hETCssOaY/LvJs1Zv4faE4uK6JmVd4wcQxZnTPYnv3LCTWlRf
	 4A7XUwfVbv1jDFoLzBS8ae+v8Wy8EHhYqdVBLpY+69kruCO1rkAIgYA76+433BNmKy
	 Z0EBdWITE8jSnWAXmwb7W+Fh3tz6AjP6gHpv6D0Y9UhclwhohDbXbCt9K6wTs9q6sg
	 WlbDesSQIbEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97078C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862079360.8990.16804669499690906237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7ef4124118e0fa64386554665d3f35d0b24c2b40c5852d9b850ef6d9dacb4b
Date: Fri, 30 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748620793

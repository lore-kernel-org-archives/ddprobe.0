Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563961EA7FD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742437795; cv=none; b=SXAjSvieTdNGSOw3wVjDP6+kDTlJYYxSzNPPhFLXzcFIi2IyXT3NMjz1wi+jFiov5uz2luuJFOqDYIK/7qnZyH1HGNX3ydzA7f3T7UZAbYMbZyLCg1Fry2LPjS9bRPItpJAMMH9xuHN5yYKQDRMq+72GBMmtsh33qXlPfTub2fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742437795; c=relaxed/simple;
	bh=AfsXdvY7ZTRK2eHmlc6tB1QcgZFDiszjrGz3lpcMLDk=;
	h=To:Subject:From:Message-Id:Date; b=JTvredlTgzlI2WMgIJvFdvWQH0HAjLKEyizRYAauQql5afrYaX/U55V37abbqygc6RoT32BFzhqeQc4GpI6HM/L0Um29vcfu5Vmf8zVG99UJ/Ekl5oVaq7tqZ0cCdXLZ9CuL99jY93Gl6P75FbK97rOiT49H5ASfkR8yiwXQ9nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdAh1ook; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdAh1ook"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4578C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742437793;
	bh=AfsXdvY7ZTRK2eHmlc6tB1QcgZFDiszjrGz3lpcMLDk=;
	h=To:Subject:From:Date:From;
	b=WdAh1ook5pCSoDQRCuaRbWaCEYLLaZ4MuKtouxnYln/5PAqplrvGc51kzRmack/BB
	 RR/0KYZSRyWrVLnJkSMisYPlbE6ecPm1OaZbijiUlKnNURNWbENIVTadgi+5T0rMNc
	 VUQAhKItG7PhYX5QdS3pGZH7Y50t12kHFQwwU/mAbtgxTUVrei1G8+nuYsJn5LqTxm
	 AV3Lg2aVHp6POKw59ug2Wa0Gnh5ZfuXgih5SoRx9U0ANulpPx0MgIJRIZn8WQ7UmTo
	 VDhIHg2aRnMS9DXYIC8FojlrBWJKvydNpH5FM0kek4oLRcHfO4XtFE+URr+mDQhVGv
	 3FCtwJPCJjVSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B347AC35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243779371.22728.13709069639553866786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374cd676c7b3f9a50422a94f1da442f087531703b287aa1a37a40f2857fa00e0
Date: Thu, 20 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742437793

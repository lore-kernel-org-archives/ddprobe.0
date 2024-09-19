Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330DB1EA85
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726757754; cv=none; b=aGANIeS30zq3St5tUcbMfPLEaFG7NGl09oBrX33kU61Hg96l/Muy4P+aV5aiZ9sIFQA3sqC/v1pc70FtIlRtKcJm8pGfBbb0ULG+YUhavT043ltZlraRyoVA4r8isErHi2FgZrjk4pnpsZudnZdC5/LWTLLOjcm+dGRL+pdDCKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726757754; c=relaxed/simple;
	bh=idfVXuiIdWeyMGwikYDIOrpi8Jn/sWxlGBUEeE7r+xM=;
	h=To:Subject:From:Message-Id:Date; b=O2MsyVu7UHrfw4p5HLNX9AlGSyBv7Jb8REVAJt/lHKfdxClMP7Zup9rqiocpl8TEzE162InFE4Bw2RFwhdDZHkfL28uctUcxYjLplgrsbAhQ86uLXNV5Yor4h2J/FMRnP/YjFSswM1lDJmFZWkALJMGxHkqvuTo7XLoRVHal6ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGHfuaTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGHfuaTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F97C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726757753;
	bh=idfVXuiIdWeyMGwikYDIOrpi8Jn/sWxlGBUEeE7r+xM=;
	h=To:Subject:From:Date:From;
	b=EGHfuaTXpEU03cKAF5PZumRba+jCAwt02fBM3WoIhov3SJAay6YWJ+fSDTeJn7OWd
	 183uQEVEGh8h6BM0jEouLM00635JId6kHlAY4VAK8b5lQsgbkA4S4UXX4TMhcXScsP
	 CI/ryPo/oKsJHQepjD4u+vopG3Z+E0/VaypBq0pcJQFG2Bd9LlVSmuPKh6Lfb2hIHP
	 oeUFDvAg0G7oS6vgZOL/hheRYkRF1EDukYDJVPk/qy18WWyQR45ipMwQQXtVwriu/q
	 EoseVeyPrD7VI7y/Eqh0UO3dvoNxqcU0Wcma8GHcstkrdnoHNPnTACULveTOgjmGQF
	 AvZIqjLbJSb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016ECF395A
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675775358.6393.15988647271414332697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d36c8e310e907aed873b6fd82243ec1231a9e4a9165f4bf38bf4ee6c184ca0
Date: Thu, 19 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726757753

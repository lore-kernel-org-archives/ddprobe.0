Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4562C18C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732919754; cv=none; b=NPMsiOBjFwI0m6AeSmi9yaxx9w05wyVBTAN1Io9XO7YPQLx5LDv0d5UpNTHO8pWRN/QqpsJqWBP+fcuGhPxHuY2AAd+EhJ2MXphCoMZssRUMBYNcLxROnGCBYnVcVTr6dHbrECIzDUlabpKx9CcgMl9ilWoomNdN2llAQl3MU0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732919754; c=relaxed/simple;
	bh=KL/VCW4OaZCUb/bosmdYIq6zKn0Ce04c6ElDl1BWGkM=;
	h=To:Subject:From:Message-Id:Date; b=WIvELYgZ8uWOMAxRk5iWkk3VY2nvKMn4XYMfIg6E78aBGrDkaO19UDlmo9w2IlE4rd2PFaHbo1+hMUQX3rusU2hfPmBx0y9kWI2uuB2BYlrBGu/FhZYnThCoOGU8OyDtMNScF7OV5sCTIa3Y4n/PVrbmb34WtGnmU5fIT12DnF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL0vdfN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL0vdfN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F55C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732919753;
	bh=KL/VCW4OaZCUb/bosmdYIq6zKn0Ce04c6ElDl1BWGkM=;
	h=To:Subject:From:Date:From;
	b=BL0vdfN6iPAcw4DWwFTynLMRei8B+Dc4fbT63YZ6UnccPfyDGE/DZzLywc6Sb+SFU
	 NQyRiuqSLJRVkBHCfq1y/vILbsPhne4FJ/IeasmHxWbMvZ4PG/AVYO5Ak4i0en5z1/
	 gfQSaPiJRuSuxSBWLP8vu0y+rsi16j7yq4lut3B7WkyX6de81AnjXD7/CC/STmB2DG
	 h4aPDX4Vwqadqxdm1awxf0CXa3iKFKIlADv/7t5CpgQzRZcTtRtMCA0+EqkngDFwHl
	 jJCLDSUjdW6GZa6J2HUrzAgg4SmWj6PFW4pJnyUqgjQSnkL1+g/Xp/iLMKDsJSTmId
	 6k0DLSMFy1axg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A245ED735E4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291975362.9842.15681695921192738574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1a9b8d90490c041fb3cfd9eb1cddee485a349e1fd74bd3366b21fd248b8e9e
Date: Fri, 29 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732919753

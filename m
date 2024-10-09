Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2918438DD3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728449154; cv=none; b=YS6mSMhmd8U4jrxcWxFgwAay8LP11lGle0UnhONxkVfovIRFZqWMPSvIThbBBgpz9UR59wux7ynN3mNf+0FDTyw6muNkC7W4sawgX3Q3aj83FdfvsjZQEFj0V6nszjrxGc7EbY3ca27qGYNY3ag+ZjSjfYD3800zobhRBHDLznw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728449154; c=relaxed/simple;
	bh=NaHpHL2CCmq8Yx/SHp+nHbOKQg+CEcM9GquGm3FF3VY=;
	h=To:Subject:From:Message-Id:Date; b=S/OW8dg9Ret+Lt85w+p/pu/oo5ydKM4a8Sx04yd8jBUHFzH6S5oFptDf8ze0tK9Mft2hVwG9zm1MQ6ya/e6oJhiN5paHzBzBfp4J6sHGHljhMASnnpNTA+4igeUXVrm1DoeY9Y/Wk0YipEJtrJNC6T9MdtG1mfVe/JFW7rCWxhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpcKqXcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpcKqXcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE0C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728449153;
	bh=NaHpHL2CCmq8Yx/SHp+nHbOKQg+CEcM9GquGm3FF3VY=;
	h=To:Subject:From:Date:From;
	b=HpcKqXcYWjJV670clFwlkYeResau2opaIrLP8enRfsJj0JueOXve7lZApdD0u8OaO
	 VlY42Wo8xvDi/bsNnIULcwSjASpYLwc/UyiiRNusGUmaxbK/h99nMcDELVJoQ65DLO
	 FbjhheQn8yF7hcJpOYkCQlQzT23Ls4giFS1Mumto6nEbGrl1xCHsr+P2B2cMjdbgS1
	 wlUmHcLWaMP6GVTzkG7ThVkj9P+Ll1g7cuByH5Af1iIciMeVCfsq+Uegb49u4DqVz2
	 noJZsZ+vEMAYHvixOZZ+rK5S+McRDa+D+iSd1Kfa/IH0b9N7F+OV2eq2G7tsRQdUrM
	 m1rzNOadquC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949EFCF043F
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844915359.22685.2669393076341069266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad2b40ab5870529fd033edab16f1da4010a5229760e9a0491f28b11400b9644
Date: Wed, 09 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728449153

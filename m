Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2461531C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751430594; cv=none; b=st+gGIQ75K53EqHTnHiQE4HMPyioozSF0Kkff6Elqi20cx+XIXMOdW6H5acapaqWkyyVGmhY+chmlvprNBY94HL/HJo/+OMgzSztflParFD3Che0dxbZ6IwPHtu/FgO6w6gp9B21U8qqpxOPqicwIAGTWYRc/aAM5ZWCd1aA5ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751430594; c=relaxed/simple;
	bh=sTy23DC0p+lgbcpInhhhGmGIpgKEwn2BI6DuakL+HAo=;
	h=To:Subject:From:Message-Id:Date; b=YfdTCzyfKhKtpzQZH6wJ0BGGMLt8sLUJJ065BMN1p6XD+MAlAffAN1xXUIfSxdblG97MnRH3L0fjKojKNjWZk1otJtoCYpLiogAs7inFraPBls0v8HVM7KQ+MwFjmQ19ZHpniHeSPc3XmX1V3hqELDQVlwqIZy7AhSmE6zdQ8/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhQLWEDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhQLWEDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B634FC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751430593;
	bh=sTy23DC0p+lgbcpInhhhGmGIpgKEwn2BI6DuakL+HAo=;
	h=To:Subject:From:Date:From;
	b=ZhQLWEDApV/u8CG9ZIhU9t83AX9bWz7yAUqscDol03kQWQZatlPLdd3FKgtOU9Fgh
	 mAHQrVF8gjSQ/4ViRFyWHYoN2qJscDUsnAkebwjrOdX7uF8c1KX6H3azZMbhFgIdVu
	 iahnNe/w1uQQZpTF+ta0YnQsi+/ycIQCXhk3hLHYM4g+pcPTW6pzc3KGH59W5umgvo
	 srsdIB2xsSse6s9ZYHpUxpPloYwvAuyVxRj12H/TPanB3K9S8ndrgY793/wdBBvj3o
	 qTrxkS334mj5nXcDqmqtDxTlBbJD/4C27+K8/s9Fppd85ML8of8WkUl0eUpWGocAGP
	 VQ0VEVhlOPotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06E2C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143059363.24300.12990484412902755937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23af71b9046f269f5668b8959ca0f46fa490992f616b8f4457a03ec0d1465393
Date: Wed, 02 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751430593

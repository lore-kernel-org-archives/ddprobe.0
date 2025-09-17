Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4D71F09A5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758114594; cv=none; b=YlUN/XGQKnjoLOCdzQyn4m83tE0bOOdJQ9+AJ9zpa6iT/9tu89t5BCAF4dxBKIValeAmB6sA0K09+BmAg6AJw5Uy9oP6BfVqxFosGRhHuS05hTb3vMG5z9u4ZTawj/qcIvsewG7KrbRfdpdZf1r8+p6bcN83Yhf1obmXinJqgvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758114594; c=relaxed/simple;
	bh=FLJ5f1xtp6PpdrBuEOM8RrDu73Bas5TE68cGLlihsxs=;
	h=To:Subject:From:Message-Id:Date; b=AJjpM2CJaYYL6HIL1siaUlS1jkodwx1jhMcb4i4vJ6hk+au8GEIW+SIR/ECiU7/uObYAgdfgfiWg2dnoWlhEdhR8B7xDTVYLgaDFNiZWtqjDIwHkSorZkVp1jnv9TPWXGh52JRLKfufKEzF2Rh0uFD3yRz4M+Z/RLetvddQrSIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAbISrdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAbISrdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758114593;
	bh=FLJ5f1xtp6PpdrBuEOM8RrDu73Bas5TE68cGLlihsxs=;
	h=To:Subject:From:Date:From;
	b=vAbISrdF3gNPlVRRiR+jCaTCOmQ81+AV9kAkQF6r9nKfST8q2V4MQo00cDdpeZiMM
	 p4vdNRFkkCxYmH7qWD6jlPmgc9/HBKxowWLbWtCyLtTXP2UUDMTrBm3XJHWjjbi+pJ
	 3bnRp3FmNrfg20NZESSnTBJ4g00wT256PU1Io30S9lnaxH60zmY5Z3ePGVvguz3s/e
	 JQ/uw7p+lXuo4t/+7kyeVZeKt+6RyhPCJhfA9J8JC4OKGbV3ypQf5fZr8eFAcetCas
	 OllWKGIbua8GlIWTecdpB11+jbm84/PAiS/PebRjkW/DfeJ9+XH5XJjRbK6c+tBG/2
	 GLhV7vb300iDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90210CAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811459358.14338.14619925805861170824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef5926f226fb7cc1728c765456d5c58764ce0e104b730b58d2ca03f9fa71e48
Date: Wed, 17 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758114593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5171A841E
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747241394; cv=none; b=dxInEFc25LR8psUicIzhmYkz0UVrS7EA0CbOPOs9DbNO8DZOoeTaNdlptEBGK3PQNVOLY5CDISkDmZanbM0YsekWouFj92TeA3hz6ImvO7rY58PsB1STeNN60w9cLe1Hf23lFZnXkBmgqcpBmzArSQjAAcbpTvtbFct1PKkrgJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747241394; c=relaxed/simple;
	bh=qGoQTdgNJvBvQ2ANPtnAHR7iggsbC3RDJAZJQ9mXSEg=;
	h=To:Subject:From:Message-Id:Date; b=q1RHnff+PX6PEsFrPluHZqPvsm9irf8gHppSr7kmbYtaInh0EsDbsAbzl2d0DyIfIRSfcfZYTRmj+xJU4FG+fivOq+JwUJgYUEwbm+eJfZr7Xaaklx56PMZVXirX+YI6UtWvH++xUfS5kt41j2+mn337OCMmrB8wmz6ROw2/Iyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6biFsLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6biFsLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3178C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747241393;
	bh=qGoQTdgNJvBvQ2ANPtnAHR7iggsbC3RDJAZJQ9mXSEg=;
	h=To:Subject:From:Date:From;
	b=l6biFsLarhwCOy6HgOKwiwUtvMh613Zbhen/mohOE8vgdR6j06hOFK4WqpyB1b8Tc
	 olk8nIB/dfTGVBNChzy4a93+YOKaQbtRM8D1xHTC6JiNXmS8Yi3sjc4+dPcnXU5YaD
	 dGeok8fnKAazM0S8tHcS/4Xa6K1n0B5yLQAB1Wp93j/csxJyMcafFk+LxlApWDk7qD
	 9Sd8wLlJdRfdBPpOStB5BBGoeC57nl4Ndj6vc/BhBpK7Yyar3n73Q2RloypOk/TddH
	 T/6ol2p9qotWQuF6h7bfzHNUwQtugkl9lnrkQE1yA6McFAjn67yzH1GdmMmkcvY8dk
	 jlwAgWo5Pu9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC8BC3ABDD
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724139361.1542.3887493797176096719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92694e26f5a89d40b6e695ea176e1104ecc72f248ca2f091b5eb708063778c73
Date: Wed, 14 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747241393

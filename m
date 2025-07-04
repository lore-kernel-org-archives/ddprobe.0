Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0988B1EEE6
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751601594; cv=none; b=dqkm1gkg/LfdiflurRuKkpZrw0rxOsVpiCdFhav7sv59T3FBkFVFRcU9UISOY3/pH5Qn+QgieNWKFdGjZfacsWVZnDXij0TZNMCNjvb4XU+B1i/aKkIF+brBz0z0vC4bRPuBeoLMuGosjGzme/+IiVvQVfeMb39+wTgR7NI3HbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751601594; c=relaxed/simple;
	bh=sXCVXrliL1e6PL5BzlsHM+zlxUilPrCSPwXB/LItSsM=;
	h=To:Subject:From:Message-Id:Date; b=jz+MoycZkh0dB3wqshDJ9OPGGfGIC63Drrt4qCOUtih5l32+V+5KSfe76nOjxKloL7FHCfdvSSpAN4/m8I1qcYvsAcb+jGx/U0luDBjssom50yVs1b7TglUj3fE8wAsPITej01WzN9zDTdDYM3vuXFLIjbMhIlr7ZY8RbeDWlm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PayDBrgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PayDBrgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751601593;
	bh=sXCVXrliL1e6PL5BzlsHM+zlxUilPrCSPwXB/LItSsM=;
	h=To:Subject:From:Date:From;
	b=PayDBrgliMTHy+efYxgTXeySzoTB95TM2f6aeKGeDv1PMcgqhD+sUn8DF/qjIZBcT
	 JprNLcxaqelaILU3UtOg3Oda3o/I/0ZE9j/GMwUsRwB04fkR9cpeGq+dQ8zStjgF9b
	 ajCCgYSIv+d56NnAU9v9YOIESbILCr5xZKlWxdlfmURK5x5avwfblt0Trj5hs/+sTh
	 9udL5tAcoy2RNbN/Iwh7Uqu48c59UP78Us51OUI9CZFboO4kcEpYRbMz0SZYzj1H0z
	 ks2f2vmtTSQT4+r29TpS8s2MW6VJL53tmMnOfS+pJrPGMOEa12yUI2sex5yDmiimZO
	 W9Ij4vgUdWWsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A6C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160159357.15122.12592321517479125120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1e8d054f79013fdda5042a30712ec851647b7bd55bcadb7cfa39adc977b8c3
Date: Fri, 04 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751601593

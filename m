Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EC86F305
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755921594; cv=none; b=TvwjTH6d91AAfj2veUx9Km480wIuROWFK6xQi+ybYXZ+SKHYyCfU2z9z2iiI6HWaC7x3sL8FIzBZs50rtnSGXtA/20hmTAPwqP1HHQVgJc6w8N66ekqBMy74YD5Ig82Z7Q9jOTf12Qd1rKjqNA2O7yfw5SrE6/qyK49L5+nl7nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755921594; c=relaxed/simple;
	bh=HjhfPlPE29OwoHlQ0tdwWJooLV97EIJY//GbKwJNnl4=;
	h=To:Subject:From:Message-Id:Date; b=K0NTsA420dmVBGLipoH+RLUce58RmuG7UkSpwZesQm4rgtCxi4l3rScHj/KSj+wFvodD+jCGahwgYp9CqwPYiEkLnMuGupBQqrH8/vMWhOi33cR9GgDnZD67QG8jRNCOG8fsQ6PSMNcTNOL4Cvxj6iiRsIHwlF4xLKeQBS6GyGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqbNN6Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqbNN6Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755921593;
	bh=HjhfPlPE29OwoHlQ0tdwWJooLV97EIJY//GbKwJNnl4=;
	h=To:Subject:From:Date:From;
	b=LqbNN6PuTjaSaiNuw3hWbc4tH3K5Zh81xwvTgEz2DFenmuymZP4Aff0ae9JWF5nQR
	 oGmXluhTwiw+72sORmQe2bD7reYoWZq0I9FyzaqRsAvxOqTlQoOHW5PbgcDB8TOejn
	 7yEybQOq0D9yBxPHA5oD2IzQ/pu3MyjvgzYZMXDIlGkGnWFNF9n0rVdiiJmr8gb+bm
	 2uin+vXioFi5zRzhHqNXSHBQfSP/Y2o5SLaud8CMwZO/1ZCwOFthSy/luvxvzNQMCy
	 NVxvTA4WYfoN6tDfzRP0Xj+Qja2TbAB5EVSVi60MI1MSpiMzMh868VY0RVk+p4H4YX
	 +Df10MLMWCLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92491CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592159357.23027.3478788958506779307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40be157f544a62c39cfc85f06692eee3e32c99398ff9fe91180a9eb1d531238
Date: Sat, 23 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755921593

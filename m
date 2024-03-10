Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F147216FF2B
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710047897; cv=none; b=Ayz+V8El5XOCmra7OeI9dhVHQk12LsQXpt/34VR7bLgKkrFCb2MjNbQZx5Mod6Nb9ygptX73t7n3onetrT83WV840vnSi9BguDbTWvmeEpQpGHDYBVUHdnieQtC6F/RNceOhO9pgQdmfX813ours1a5cDwpzwWewIzaUAGJJRyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710047897; c=relaxed/simple;
	bh=3Zs0nGtsuPaJpO+SXS9OLjOUq2IYtsiExqmyDv+lalY=;
	h=To:Subject:From:Message-Id:Date; b=PTMPwgMTLbU1f46G92/uH5yGaUHmV4ihG+sqg8ymcgsbWJKPzt/hIFkziNYTigtij2mya0E+Td+pggpjzYTv8m5yOC7IGHs/qNY2dOtvozqp7rWUvPqWlUfNXiXij4VeNzbXCPV5KJ0XwJHd3mkSdBZiVT0Sf3MIB+ToeveEb9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyDcF/xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyDcF/xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD00C433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710047896;
	bh=3Zs0nGtsuPaJpO+SXS9OLjOUq2IYtsiExqmyDv+lalY=;
	h=To:Subject:From:Date:From;
	b=pyDcF/xsO4BManABR8zeBJqRuYaBVLZO21GBX4UqB1wK7MC+fr4Jpe1YlpJ+D3gso
	 /VfaGRHR2K8qdD4k0R2ihHmnqXztvVce9qEucBDl89zbcjWwVjqvGr46GmSb7Z/bq7
	 6iyCQhxxwPDvSQUqf484LnbjkSun0ATYK3rr/fNRqjqOLwAFhvw3Rf/xyWK8fe75+N
	 Ejz/GNVug2ofUw7mWbrOvGL9BODac30KDOur+gZ/DIsSJQ8pErt51GhA4b8BiexewN
	 VA9AtHI0zxZTEMwqNlMJlIIn2E3Y4uW3Q0ZDy2ppT9r4t1fiO9aP5dMNFkcb6cS0LV
	 Asgha9HZiwi5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609B8C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171004789637.13518.14796136781055404955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77de002655f5fb38740c26f9d6a79e5bd2003267d65b7ae1b5e0c01b40048d21
Date: Sun, 10 Mar 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710047896

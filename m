Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466161422DD
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751266794; cv=none; b=khwVYewdXWsAhkyd++S2iDHwawucPBAXDPsEFYIaSNaVLK603zzKXREiYaUVQmDkGu/b7vi+EXIXWXdE1UaOzKReUKRavsdszGqVrtjdVBJrXqSfqxKeDFvmh76KdNPEc26/fWbeVSG/hYMj+ulCbhtgYY4L+mQu+nK+AIX6rAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751266794; c=relaxed/simple;
	bh=wq4NcVoB8IBImn2yE5w76lYgYGwcItYbYmMWZILz1Jw=;
	h=To:Subject:From:Message-Id:Date; b=OwPeAOG+s4pnGE0L0UzCs7bQ4L0FFkxtEGBiUbQYej9hRUDOPSLcY3R0un1sXlre0wl60c9sYlY4K0KtGxJuYsGcm0z3LX4OEsZz7TczqOjLLpkBTN/tRRIR3Dt3cCnis8AV+RrdCQmnSOKKgre2DFVuokVlUZoDujBci3RPN0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG4JifqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG4JifqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0943C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751266793;
	bh=wq4NcVoB8IBImn2yE5w76lYgYGwcItYbYmMWZILz1Jw=;
	h=To:Subject:From:Date:From;
	b=tG4JifqZ2VvMKnmRNAyL6zp91uJCL1Fq7n8pOQIdMmyNu+SKq7INw+P78Q82frY/Z
	 aA3EHCgX0zLwYymyyJwY8N8gXOZ6jIumsZ19jxa2AfwgpH6qgDMYdmXjzFFGQlfOUm
	 B9zSpGJgfyi+JhxcKjAjBZSQQKSvGFI3QjebQVE+BjwLZDkQQsR7mDobbj/GB44KtK
	 j1m7Vi/HWbJ9sEfa7uRHPlWn+bxG6lSeDg4noQ4icITx659Hu9uti6QZRRqVKh5Ra4
	 eVcc+qdXBz0yqteHBgC40yCPzy4MZhkw3hB9da1W+O80pfsHwOjg05snYhk+EP1URo
	 Met9/zRHMyPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03A9C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126679364.4917.4742273387644467723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b6224c469336eb14b0353ceea01164c460bb6f9e4d6cd4f7de95adb80d1f9e
Date: Mon, 30 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751266793

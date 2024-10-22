Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0310E0
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729573554; cv=none; b=qUWexRYT1PGPquCuzmESdy/an8MonNG9KKxx63tABoRoGB7/PYAjd+g9ACYfvcxx5Yr6EE3q5S4uQLk3RTkq6WSTIiqpMthDkyclySmsjou96WRnepRnYUPn/50yBML6YxQCTQVmW4AN1TITjyaG8bRzziiRjKsrQddQoFhghO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729573554; c=relaxed/simple;
	bh=gXy46GhYgkxdU8ct1xtj6zpW05bE+WAbZlB2WytRoqw=;
	h=To:Subject:From:Message-Id:Date; b=Qka0+BKRbZxN2G/5FzhR6m8k7N9nY4myheOwxbjJ1fF3EXNJwQXjZ1eqbbddczhz7iET/veXewhzK4CGcaRUU94BYeMG9pjii1AslORjMkA3Dap0ML+PgJa6J7TE4iCwT+vPszF5j3/z7nwLTp4gb7KpIaG6cF/dkQMNqsIPt4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuPXyWYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuPXyWYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF852C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729573553;
	bh=gXy46GhYgkxdU8ct1xtj6zpW05bE+WAbZlB2WytRoqw=;
	h=To:Subject:From:Date:From;
	b=KuPXyWYReUxtMIOsILss4HgFCdxsPAYgDPgffTv2k8jV4KaUBBxKrVXc/o3rGvB9T
	 AZxv+W6/D532/PXXcQqZD023xIl2z6wjFtzJaZ/SusZXI2cHDY/OPIZ0p6Ep+Ck0BN
	 SeP3QEgdvrN/e7blDSEd2vuT0ayxmYSZLaebGzCQPOw+Nj4jpGLhRFqrNUGLGgl9vi
	 ANPf+ClfP4g5lJ9fnbfiPMllQIn481ze0R2tVahVgicOYaukgVO4ML0jNGBvpwbXLy
	 cG/mYg+594O0IgATt996dB8aYWWd7ffaN1hD02Y3oweVCgDFnbuDObU2ESTDWBYjco
	 9TFKVyDoSB+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99418D1715D
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172957355359.32548.1600023159531972338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6942e81a47b054f0315755f01b8818da6a604d0794378fb788d8ac0c155a5303
Date: Tue, 22 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729573553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6C9359A6B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786599035; cv=none; b=REj7TetDTFdY4jM2i4DQH8ewpXjvPGyyucZ0aEKsRxBJJEfh+7EI1OsqeggmV6XQGoeF1Zs7rSZoEuhqMRxQFNuYQsyrKrVxQorSoNzMO/1uFbOxLD4tljGS5MVZbuWNlq+5+d6ZxbWJn7mkO5JlYSra6Pqk+ljvm9Njn/gUr+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786599035; c=relaxed/simple;
	bh=5Ygzx/RG+Y0DDiAgZfBaCJmX0XmMNyDXxqodYZ1Cixo=;
	h=To:Subject:From:Message-Id:Date; b=h3t0H/ZWoocJl2TShIEHPMuj2A1XPqUgCm0a2zE6pkagV5wQE4BFzGonh7bSvXDcgIoRrQnceqQrz7DJFuZ0Ls6bwDjRh9TzmnCTKa7zMQKk9xbKZDEUNPMu36mhNNFg1LPW1zzeeoO9Zttyu4AuyLzMBj2uzs6M5LzH8wCssnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YffTtGP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YffTtGP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB80FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786599033;
	bh=5Ygzx/RG+Y0DDiAgZfBaCJmX0XmMNyDXxqodYZ1Cixo=;
	h=To:Subject:From:Date:From;
	b=YffTtGP5H3HNyX3rPxuOIhRE4SK4pQeQV0T2glajfGwEjk70idcucAi/EtJTNVwj0
	 QULUgsDsbKCIDIyJolGLDeMMwA52jJNxM0RhqeBoojf0mtlyrRjQmP1C4i6ssI8rc2
	 l2bB0pPvcG7FjtDywYK36nSufj2L1fvY/sV50L7qQ1NzZzzK06dhp18QpBPgrPHFwD
	 vHisUgPbTvIGGq/w0MhQ4R1r9kIKw405X3VTdipK4dvk4QYk7tkNru8UiC4bFLe2vw
	 ZZ3gmbwD/1bkm9gbwn/bGDJi5dcZXVoZ9phGH2n3H6YGR/0nDS/difTpYZq4JunsdT
	 TJUVA1w6u7eng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83A3C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659903368.15735.16589718295302207535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5353a884effaf7fb90bb3645c3754aa195a1510e89f0ac6f3a4a9a81e0292f
Date: Thu, 13 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786599033

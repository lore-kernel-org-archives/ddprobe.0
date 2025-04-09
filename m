Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4404A25A2D1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744202994; cv=none; b=Q1KdPhHQ0H68yDZyaOQgc0Zs/u2bMoI7DIJEquXTZgryvlMO3ovcFtmitRZXfiQJgz40p/PCZs6iaD7gMiNM2qKnMNtyTt91CPET32HgmAlV3Yd77p8ohUHSXQL/7IhgEi23mQZvjbfNwKVI8EgS1pC813/x0XXGyHoFzeHNk38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744202994; c=relaxed/simple;
	bh=fm2iGKWOTvcHzkKV+ErJrjI8JU5nSOvTy3ww7O9Bxug=;
	h=To:Subject:From:Message-Id:Date; b=CC6CLJoIdoEtMCdvkCrFl8FSMgiIbv+52qSXVe/7tzFbysVcJUiOf5zPAeajc/zCpMSS79kV8e11bje8dq5PFlytdtAaQUIDmango6QwHak+boyfT/oI3Vs7r1xCl3smdi1Y/3FYboneJwSxTktl35AKcHuXgM04feSSK0AonYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N36Oq5LW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N36Oq5LW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B353DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744202993;
	bh=fm2iGKWOTvcHzkKV+ErJrjI8JU5nSOvTy3ww7O9Bxug=;
	h=To:Subject:From:Date:From;
	b=N36Oq5LW8ML/g4RNYfESKMbNk6sthyI3WSYzPsxnbMaKsFVNBOoJk4TJsl7LaYWGx
	 jDHTRNilCCv1y7d6LQiZvvzRvfH2TOesCVH9W+X7SDM3sp6WFVCsub38Y4o9t8dqUM
	 m6GY/VlwwEcUwOptlarRcbocDpPk0NmQ63J/GsmteGu0w0dAn5nLAY7vDKdbgcgEWD
	 G4w1g0uiICHmdWUbXkQR2oO1GOSKjIj5C9KZ2qICng5pMk/Kq99jSVT+O9JNQEY5Av
	 Vp/kvgNhjv0fHgdbpABHcsBeUh8aonbbserFsWIG/HKM4HsRs3ORG/eu0CeNahPHB8
	 YP5mvf0i32ATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996B5C369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420299361.14804.13885331956111903027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc76b4fe94e89c5c4fd47814e912ce3b02d75820f2b9b204d7b7ab01bc6c8e5
Date: Wed, 09 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744202993

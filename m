Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EDC347BDC
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784693915; cv=none; b=reJJvCLP/iNAoxtg8BSkdYmgg97NYavs1S6XUZaVTHLiugs/muguyFB+Pfjehr5ntd8cEQm8+Sfq8A9AO5diH8N4ZBWcyLxhbb0RWygy33VRxh0p9q2KKR022+ZE2PUwCjAJDkPXOHrOOogAMIoK1QteSxvYDc9OFUlRskGu2bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784693915; c=relaxed/simple;
	bh=0QLO1HPtu9Tfrde71+DQVN9HF9335i9SqW5jbPAxQJw=;
	h=To:Subject:From:Message-Id:Date; b=j6SE1s9VvmNZ2Ws1S0AB3bAviJ5nvP1QqGSoAxV3pl4ZjP9I6025RwkkuJYA80pKGcPkbTg8gxiWEM3sIaljvFol1IZFNFG11QNpdUQU17HuIn9itVH4t66M/K/UfLB8Ntq/qb+CpGax2SI+8zoX8UyBXhfxHPGSZuwLAk3qqBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKDdxhQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKDdxhQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79100C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784693914;
	bh=0QLO1HPtu9Tfrde71+DQVN9HF9335i9SqW5jbPAxQJw=;
	h=To:Subject:From:Date:From;
	b=VKDdxhQR+zcxmmG3ICHvE6r5e8rD3M6hZtem/XRKqwWm64tSYw5shkqxbaG2ca5p1
	 16RcAuneBZnkLpgLORK2pYJjUHaBc8k/6slBkJW+Vp5f4PM3WlhWHuAISnY4VnMyD3
	 Q22UiYRfzgoWblVi/wmvgkuJxmwub2ixjTvjJgt1MjYONAAyWg4pXlfluXnYFag2s3
	 mmBUWLf0mTST+DEUraMB+N/PIJN0gNsAdmHLk8zBDvz/o/qYKBpqecLDcbAm7F9p4u
	 +CNdtopYGWYdgH+dlEpC+QguOOs014Cw6DX5nyfzzuABSUGPXTESMyb7OH68Im+9Qp
	 8FrNKZV5jh/1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 252EEC4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:18:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469391400.2527.10706819900484076875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e05744c2f89d8904d6a8b13a36ed26b381ea0fc1461b31d9954fbac1f0972ef
Date: Wed, 22 Jul 2026 04:18:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784693913

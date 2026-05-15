Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749B63F8712
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778870434; cv=none; b=Wqjf5AaTRSZIF1Iu8pHP/a/qJxeKWNvdrexd4320ueIB3B0/pLYL1ykjv8XdBSvE74V2gfP9p9mxubQeLcVlnTDTxvHV1PE3pqEJs5N7/fj2O4CHl3g3HuGa0lg9wzfx6LuLy00tpvEK/36SpuVg3gdUuz961Qpm2SIgbXoG5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778870434; c=relaxed/simple;
	bh=eyUMgTSt0/qvnWgLZXTpT/ZSbyMLdcK9tU89M8LLwCw=;
	h=To:Subject:From:Message-Id:Date; b=rxyu+NAVQS9n244KnEzopbGa5xd3XMiMQ27sq55ghZtsVoKzn0ctYB/7DV/IzjDQDoRiOXt5YLpuafhieuJgi9lwxKN2DbEy3VgQTTZFi/lmsD3BIxncaK7FmwvSy9MZCsU+oKyb8s7vrYxZEyyAU0ClzT7xeqprqvwJWeOl+9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GryLveM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GryLveM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D1EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778870433;
	bh=eyUMgTSt0/qvnWgLZXTpT/ZSbyMLdcK9tU89M8LLwCw=;
	h=To:Subject:From:Date:From;
	b=GryLveM9dnSi/qza7yg9q1EiRkDaHaP1VlFDT4xcaHgVzMp5/a1yj3jJ6xzDTc58/
	 nWwz8S/5EtUi35Y3uHNnhy/V0KQVxWyKAGtxNkvkSWPU4BFihlnnaq3gsfN5sSxO8c
	 oL42cFt3bv2iz2ejwkYWRGuF0MpGd7dfS+2s3ZwanVGmSAxrgOhA2BlRMhHiD4dCR+
	 Wa6meBJmCjFmmcV0rmwAeCsZVvZkQ6O07/oEc+AMcbcMio8KsDrZ+9SKaSJKZcPIR+
	 9kI7OlhcKVl+6JviJXEZtwW+jjY85TQADF0JZMVudElDGaJcbc0Uo54iVR/aRX+abF
	 viq16hTLGXVNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B386ECD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887043372.4252.12827047025064773329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659f3588e8e37759228fefe0533daffc67f7d2ba0d6f8698dffc7e02ef025d5e
Date: Fri, 15 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778870433

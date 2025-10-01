Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262C91DF968
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759328994; cv=none; b=DXzIm5a86IBGhrG3AWz2VT7PG4JxW5uvJ4WXOrHxwsKzjd67dIE/UZE/mrF984+/pl8Kz/W4i/z6BUrF2I01x7xlM0x37JYsWYPGaqVIPKA/manOf0PCyuYDlVx5zCL6+IJKBs/H7m0WtjMYbzwDp88IQfsBKDoVIs2aclJHEjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759328994; c=relaxed/simple;
	bh=tYuT4hgHehcb8tsTqaIiSKDYKOz07f04l3DMLtzrMHU=;
	h=To:Subject:From:Message-Id:Date; b=AEH2TtjC5N15v0lo7N+rcZeBfxO8WY0lyuCXwrcYM8nnwqbNI/SvzRUAK9MU530H02OemZq8vY7mI71sk1cYoFkMEJ91vHXI5VkwMYCsefbR9Oe5Aagmk+4O17jp7M53iC4p1p5o+p7tIa0O5oAGUjOnL/rRmNIGw3gGxuF7E0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtdSyWxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtdSyWxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B7FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759328993;
	bh=tYuT4hgHehcb8tsTqaIiSKDYKOz07f04l3DMLtzrMHU=;
	h=To:Subject:From:Date:From;
	b=NtdSyWxKPS83x5cR3Pk8+O8bo7QxNzP7Sr6LXaBdQY5P0CwGjW8uB3+sE46dWgLSk
	 F+1QLvNsS40N2EIjtp8XRlI6QZyzXOiO2+XkgFJCGPvUagNf0xFTUQZhcYWNsAfwk3
	 etclijaywI9NixiGlHX2Hq9AZFONCUhaku7xAAnNL2rUaafCtrTQ2SE4+tHqZAJyS0
	 j6xrbMDU5LVFA0o5lAIWOaweV2PZWeF/lGvba82JWOky6urTNyBObFcmbtMBzbkY1a
	 a6PlB1w8CUQtJPUsv8ElRDp/SMzj6/O6YHFoVF+k5DAAGP25zCn8QDTVFT044CDkxn
	 +jNqIu5bZlAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932899358.12620.2751212773815022301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8f99afb56979e1099b912afa8f12c08d5c13ee713e1967d44fe5bef2f0cf99
Date: Wed, 01 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759328993

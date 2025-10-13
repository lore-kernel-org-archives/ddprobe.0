Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2261D275B18
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760322594; cv=none; b=Zt4Ipe8b+uwlEcDYeIaha0yxbccACbMbsB+lACU/AedhbLwdxNaLVB/kPrRzc2rItuA33WClxjK3zplrss4Vgsbxz7WeFuzASx3HFEUtH1ux7yzTW5//yBEfO5xVF3nq7T1i4ySLK8T4iC1OdkpukcmCJd9W/pSrrJRMBjhNlJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760322594; c=relaxed/simple;
	bh=B28dy9nnERP+r1D66RWuQCbbYZ2/q0O2xmHebnjROSQ=;
	h=To:Subject:From:Message-Id:Date; b=OUtFhdEDUGRq5CncqV6B0UZjm38WoadR0TsOC/XztBJ7VMV3hg2acQBNxZwZViUBxd3FmEv7GwQoLPwUJCdu+d2FfmflF46f/LTkd0cy8IWgTpLhCT458j/JE9rA7dmWvU1n38Tz52kYhkrAYlRyVqi7JXu2J0LrQ7TjHRKbiaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pN6jGeEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pN6jGeEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4273C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760322593;
	bh=B28dy9nnERP+r1D66RWuQCbbYZ2/q0O2xmHebnjROSQ=;
	h=To:Subject:From:Date:From;
	b=pN6jGeEjKn04SIYK5F1/vYZK3gmZnAtOFJGsSdlrf2LRmAhAO1Vzriclv2/0mNlzB
	 6svjQ9fpRw1tbw8u8UsyQ2bUfduqPPCxn9ATgyLoMU/vyLndMtqwToip03HUcjHo5b
	 tewkXX85jPJ67pRdkicZyXR8n1Yrr+anizOD0R/WU/2kc94KVCOxRpqGBvv4D/mogU
	 nzw6x9aqhtPINbGfXPaKwR+PWOdjnB0Uo/h6NREr6Bf1HyfT9WSqHTEKslRtr9M85v
	 B6dsuNxvX4QzG5UBP9sVeWz7b9jihixFfcOd+6kVwkQL7hzCtpDFzxPFaIzwfvYNrc
	 5vQo/Qc644x2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94296CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032259357.14849.7366306182497929834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8e860bb695cf5f5a52609e9ce582361274ed6d337afe6b92ef12173c4459be
Date: Mon, 13 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760322593

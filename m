Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0190C390210
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776419254; cv=none; b=jYfSqkE7VNYEC5Vg1nXev9jULqWuN7iz5qHzfmUnTuufopjU7JuVc06gYYamS4FAFeO0oyYcwEIRt5eu+bUjy18OVc90s6wHg/EVvvsiqpivTEY1Kw6pt1Rm6S1MOyOEND6ISaohbcmDxdT6CbNbH0ZyDzRCSzlSn5McqjvUIWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776419254; c=relaxed/simple;
	bh=Zb4gRHLbBA/8riOHpsfDOiYpiyfB77HNZVLmfFaEXq8=;
	h=To:Subject:From:Message-Id:Date; b=lK9xakkr/zrwbVCq/1UQ4+70lPIZRMfnLSg/owhtVgSJ5N13a8+KzNq5ncH7wEX2EbCL7ZblH8iiNpqLDnKphxkEvVJ/saobzNLm88RrC1Uj1M6CtApD9V7k3Zq6TLobjx5L5ac4T6ebtPKZk1K25tCdbJyYHlHM28heqIoPXEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFBgJJWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFBgJJWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D35C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776419253;
	bh=Zb4gRHLbBA/8riOHpsfDOiYpiyfB77HNZVLmfFaEXq8=;
	h=To:Subject:From:Date:From;
	b=pFBgJJWjhpuHNjVlsO3zysWNblF99awx6OF2IMJswxcqDR1C6MxOYWmTxnCNeKa0Z
	 +VXRUnD2l4JEQT9M7V+q0ZcL+6l5Sd5mlOzD45euFBtLeW9qCNaiCILLQVqs4BAUNH
	 +JKBSXHLHous8FmUmOls6UWRtu4pwc3+eqXPf7Pp3xBzR77ITOGMYdrUTMQLFgA6Jm
	 9hVAbv4kxNtuEnmFw2JKjclLC+3mSxmBgmcNUUf9SB8yCdU8EHSp/5u2rEniUQe5Jt
	 +h6PPjxI50WBYmQHGJKkRCFfsFr33PNH+P5y2VyGkjVDgFmKoQ4fU5IbiHiTLjH8jG
	 YsuvXGNL1Jnhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C2BF43688
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641925368.13006.17790082098460109553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07da9286b18b1742b367594d4b31d5d2ecc3a4faa270c93914b4ae201fd46a52
Date: Fri, 17 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776419253

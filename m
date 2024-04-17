Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0B3127B45
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347963; cv=none; b=BFTfpmbFXIIB5pxGEssCQ7N2roXmEaFEVZF3N+uu/DYFCfTs36x71IBWut2wx5x3rbxasY/6jmupppegPhJgEEwHOaScKKTKc+O/J9j1K1lkHbkexOr0L/j5+XTVh/K8ZHz1F7tgsYB+ivZrEjMLDfwcBS9wGXus9uvsIZMF4nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347963; c=relaxed/simple;
	bh=+KGwmLEMfNOI/48OqwZaQNhmq6YcLUPVDtgQIssS/eU=;
	h=To:Subject:From:Message-Id:Date; b=j25PeLEBaZyVXEF7hF6jVkyn/unyTs9rGLOVJcbMOq6yocDEFhdD4O/1wZJA0fOt45c3uD2xeCGQqNDhMi3Y8sKrBAx5J7GhG3tVu3sDHUOUftNViOlSApdPcuSYevJJkiZ1QCG7lXN1MUd2qT2QTPSk853SsonJyN96LIY6PRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5AYOVo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5AYOVo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8E7C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713347962;
	bh=+KGwmLEMfNOI/48OqwZaQNhmq6YcLUPVDtgQIssS/eU=;
	h=To:Subject:From:Date:From;
	b=r5AYOVo6a+cmrzy1nmjnpWz2SWXK89YGcIdT80/ue208c0TvpL4FNirKmnjjdrxDT
	 TORreu3QLQJv6EKbWffJpQ3txcucGE15PEOJNGbw0o0NYjLGTJWZ12diXdE1AMSS0j
	 ayp2pS4Z6yGNFiqXPsOlHak4eC/66Igc7xmIi7ObZNx1ug0dli3cYeEGhDYN6jWKIt
	 jFTezkBbS4OYzO95maKlMrPryQ+t1QzXuxfJXXuJRQLRwMYfRaaC7N1XIK8RciyRLP
	 4u5v6iPSrfWxwY3zoB8FB4bn0hNiH2LcaQkxAwiTMcIR7xUj3osucAqNIuA+ZXh/Pf
	 lT5BnfjWpgi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76EAC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 09:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334796280.8855.10012978907545427697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6284ef1b6dfbe28e1e64352870c306fccc14cacc51babe01664a4fe9a67aef
Date: Wed, 17 Apr 2024 09:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713347962

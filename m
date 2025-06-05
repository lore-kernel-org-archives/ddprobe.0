Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDBC18CC15
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749147594; cv=none; b=IVOrpS+OPrqVu6N4YfPIWiQ8JlGzeUc7ghms5HO61+1UAvz30PKjFR1EuHubqFQ7Pxlc0gOCL+lqE3mbxdymq2LBCzuJlqRdc+e4pJC+d1NjNkH8m38pkQiFM2xia55jiyVjrSadoodLRmHPfiMY+KppNVJXMxNsF/GSi4nYWHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749147594; c=relaxed/simple;
	bh=QTvWo7l2PJQfCBNTfsPlvtrhg5ISogLIiXSI5IPHn/E=;
	h=To:Subject:From:Message-Id:Date; b=D7SKBniB4nfkwCOLM8t3JcLyNItmWIYoMi1qYdUnFNQCz28ZBMEGLdgQ1eFcDtNf1M3TKkoM9n3jsk+zDlDw4Lr7a80z8P7b1V3R91phs8/6QIMO6Ys/GKLTqEBCttr3nJGZWlZUelSUyEGpGgf0g/z3NM/1jqhpeWjx7mSVaZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr3VQX7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr3VQX7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9126C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749147593;
	bh=QTvWo7l2PJQfCBNTfsPlvtrhg5ISogLIiXSI5IPHn/E=;
	h=To:Subject:From:Date:From;
	b=Sr3VQX7soNz808ORSyLqSij7Fqi42SAkIA4DfbI7VvWc8TB0fsaudnmscaU38gGsM
	 IkODx6jS4xuikTyAvpeuQGGLXVYHlnARzlkLDkuLZSjYUhYlr/x98mHQw6Kxk31LsX
	 jnCNDH9E1VvyJdtaTuMsnm9X84k6StWFkd2k/CAV+AoEKsQ5jBUPOtLOIF7BeUIosh
	 xAGeW3jlfBzkJ66KoR+cffmBbOVNCcudzU4siQfI/3uyLDLxvFafi1YQGoNZY6xLJ5
	 Tu9ZwKqgfFsmt4uAjYapfV6djCRIbnYPcicjYYihewJ2+kNKUFOaIT+qlzj3CovXqj
	 KltIbHmnw1pTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D7C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914759357.19708.17071821174396085357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3833261941365e066928da969eb0eba53796a23e753f37c9bcc53fafa78312c0
Date: Thu, 05 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749147593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA323570B2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766081034; cv=none; b=Z5D2i6B50Rdp7htC7eoEJ1SgU1IiEw0E4ww6RilduUiGT21NeqBgNl+2dlOI3U3lMKj/dc76nYWPMWftbmnsYWXa/KfW4EljVmisilOeQY41/JDqR/lCpAzEB/xVfv27XuJn6Yl03aEnfZgdf3+sPLCB2M+HMGillRrCY6PJ9d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766081034; c=relaxed/simple;
	bh=ImtWzAtCknvWdKUCG3ChSiSWRNBG2thHJV6fdBYPRSA=;
	h=To:Subject:From:Message-Id:Date; b=Cg1kBhNkdmCqWTcqJS45uhJIYdh1tZSTEefIEliFFvm0Ro/csh4L+VytO0Nzh3jfi562+Ol6GEfFHwkvnWe9bNGtmMxLuakEG2S7Rz4vAMAS/gBynxzq299syQFxmOf+0prWIVMV8p/ngy8iYMIjBpjgTxwOoFT/WVPhbIZ+z9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGPJc9V8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGPJc9V8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0094C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766081033;
	bh=ImtWzAtCknvWdKUCG3ChSiSWRNBG2thHJV6fdBYPRSA=;
	h=To:Subject:From:Date:From;
	b=eGPJc9V8nz4cJgJs19/1r7oAjkkzHnlH/Mznm+gLT3sutUqTs+JeFuDADflOuZW7a
	 gjvTCl46NtB7XfrbJ9r9gUelhqd+EVHGMm19m4RicAucDXIPG87mU82R5230boHdEW
	 GVrEGT2s/5ztmC1c8a2U17atMKIJIdVHEG9rpUCd5QaeG05r2YCfxsyiyKeam/kX0L
	 lCXaNz7ZhkvjJ1seWgWychVtYBHRCH7aIzkZlmeJj0bDye/eEpvt11rwcjtIiibkmc
	 2YbQOdUajfGMepEAA0+iXegPWPK0Pv9Cw9pA1xZS5hNQlTizhS0jICaKyEx69y2M0Y
	 IQRQ8nwP1CZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BC3D6E2CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608103363.2401.18256257335506260704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08dd5056720c5d06d2185b1321c8df6df107c5183680e8baa753ec9623a27f4
Date: Thu, 18 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766081033

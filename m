Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DAD2D8793
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776022654; cv=none; b=mNrK/inKzL6mPBfYO/BSkgrSW/R9nshPtDOlMEn+atZPRYb/dk2csiuRwpU07lTQCN13dxCfKHe4SUa8jBvsBNOpV+owiEE5wguIctrdj1M3KuZXwFXZ+pxgm6kGrGcNSKSAOTqTwvsIJdaS70Yo2COql2FV/m+fl94GDDEThzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776022654; c=relaxed/simple;
	bh=aqpObDilWlqoy3ztJD2HV7rx7FlpthpyoxU6gwyxgs8=;
	h=To:Subject:From:Message-Id:Date; b=GJxZ8FMMh2evvjqtftilJqAo6UZdkQ280RlrWkL3FjQcfQhChGcfdVloYakCemmFnibJujB+oqFjkHkDtl578scvDY2rs/eMACMmdTDjqZ+e39yj6+TiPoFlNXRnD8BLDD6Z5m2pBueUzR87ea+TL9A/Dlmyz0Ukg6Fh1gZEryU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIskNyEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIskNyEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B658BC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776022653;
	bh=aqpObDilWlqoy3ztJD2HV7rx7FlpthpyoxU6gwyxgs8=;
	h=To:Subject:From:Date:From;
	b=fIskNyEEdTtsT5bxvFKe8spJYL6SgoaT+EHSRPo1mLOPObmEhNsL9DPTffxdg5NZo
	 9g8t6B2/VNSW8CVIS2ZNHaCZLG2JGFZACWFDnBCc9KgLrr9fiq8XNNA25e2hfo2JmV
	 iVcI5NX+2ivFIdClEFHDuL2XACRCrmtouuWjIRT+nTR5d9U5KMyFpzwgaovHSkhKAM
	 kimCnO5YwYxqui06JxBG5ZVMu+EW6j+AesSsMEzHI49rjQK+uQ/V5xFjITCz+Kt5Ii
	 fvWL9cD/9b3MtlaDdCTwwpR+azWUv0V1NfZ4VojmpsGau3gtwulHWjPpfXB7US+jR5
	 9hFmUDqbg9Keg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F0E937FD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602265368.28888.7903427730739536037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ca5fa1b69ec66e9c275de686ca76d9ef3bc048b2a9885554a92eb2f8bab03c
Date: Sun, 12 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776022653

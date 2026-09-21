Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D9D1F5834
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789956634; cv=none; b=hDSo6poqMRZGlBiGvsk7+sjto5PtkeDCzhNuK02uxxaNKmLRwP7WvGUjlhGJoZ3H2MjKL5kDyq7rPxUSLP5RJFFfAkGBdPyVPdZizCCdF79IUneeurwh5NDR+5TPSH5KGCdP75VPoErqtHOCKXX3stvxdeGT8mhvfxSOCqfX4Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789956634; c=relaxed/simple;
	bh=RoCCFEh3wWFDEKu/ghRsdfBOuibHLYvBwddP1L5jcYw=;
	h=To:Subject:From:Message-Id:Date; b=EPAYTA1c3yr9Lh+9H6GwJEcYyFwQ+ZtlYGT75ESeoVxPbk+FAv4Ijk5qUM/WFQtVM3Ht42Qkv5lZGSKUI+nOZ3Qt6VqNwbvas6ZlLVVpXT2QQ9fPT5pN6ugqYDHlqCBdtEQyGHNV8Npb0CT50Mplyy7INpbLhZcIN+dDV2h8+j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3QhQ/50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3QhQ/50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D337CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789956633;
	bh=RoCCFEh3wWFDEKu/ghRsdfBOuibHLYvBwddP1L5jcYw=;
	h=To:Subject:From:Date:From;
	b=Z3QhQ/50aPuZjTI4faqvlTMwkgUIkeFWmqxbhTPd6LCQOoBuy9J3ghm9FvFkyPG7U
	 vTsU7WudZ1bmk4DRwyhf+tb5KnZ9pwOYic881AzBd2sfxdi1e4LkZ0EAmHKHYp5Ju/
	 YPZLmeVRd6sYaVjYscfSZDuRqMZUBD/iGZssVc1tcmp/gCsLh2qLtkWtjMEBqUZWUi
	 sqAeVLNOT4iX9/AZMQZ/A8aPMHpC8b4Jl2Ha87nqctSDsAcNcOtCf3LrfaIrHE85kT
	 tNENsFZbgocQlvl5QGTwDyh0A+BCFSQq1iUFrOYwDRakPwyMfTDcbdgDT+BGmP0t+h
	 ISlGr7Y/tVfVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C01C982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995663368.12593.3457629074276111404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b044070192f2e2c53de016949bec5fbfd01ffa803035add0c11f8c40c48bef36
Date: Mon, 21 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789956633

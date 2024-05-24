Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B68538A
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716548603; cv=none; b=k+ZJ2Nypj01hyw/xwSV/POGXOb38dkLpqc3+v3yGHabyvGZYrbjKbB7hIzUe60SYgv5LTOmbWprAzRotPRQyfcxK3GeEilo8iIrj3D02kMnurr54djKatTftfvX+eZjrVj77Mi90f/wUB03tJ3XS3H55T46zc0MCYpaihEChu94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716548603; c=relaxed/simple;
	bh=gPbq9UupxkQhXOwNnRc+4VTj3Ntx0ghCX9xdux2W18Y=;
	h=To:Subject:From:Message-Id:Date; b=u2NdEPfghZd1G0Pmho/sHsr6RRcOI5/2FJC4TjibZgv1U6G69lC1N+RFrYdQo8H0GM8hon9nFYvTmZ+Rj8kq3JpQzisDFN9BJKWGRgeu0yOZMDEYJR9l4t3dJnLYzG8YuATfefj5IsxueSaAFyKCp+mP3krNLHkpyZYKf4gp5Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNz1Hl7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNz1Hl7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C29C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716548602;
	bh=gPbq9UupxkQhXOwNnRc+4VTj3Ntx0ghCX9xdux2W18Y=;
	h=To:Subject:From:Date:From;
	b=hNz1Hl7q/q9FPZYeQsBeM8jgphLxBbyFPlEPew1L9ULoiRVFd5clSV3+9J/Gj/nBt
	 8Q2qJngJcjzk9XIL2X9KqiJgvSch/yI5egNwFZcPLteTdC92XL8JhvHlaZF8yaMgcG
	 u9Db6HgZFd+WpQch9KwV3Vlwy62qM0FNLm4GqA1sJsZXYI4+SXGK5WR1vwU+3tvjfG
	 IQCylhDUmSkQRDGRVYpF59RjYlyXKC+OlMvWgCS+Ng0EaRVCdHIdiVzGFiQHxsSOD2
	 9nNo4mdVGVwMRB3B/HGI8v7KCLOp0aO0poIZgCgoeMRUD08HpiklyfEOJgr0l2Wg5D
	 THpp1MUNKCioA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4420C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654860278.618.15691512271818508627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c7a4fb88258ac0cc8194af024c5cea34449ec194585f47fb8f8d5107532abf
Date: Fri, 24 May 2024 11:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716548602

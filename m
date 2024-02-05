Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F346B1BC31
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707136697; cv=none; b=cXjo887MRpR486PuP07IjvIbHl+WaBzSBQ++0ILfoxs2BTYoMvC3585d9ZntQFcHxQtX/VgFsBXzjmySzAI8w7fHhR+rD2ZLQ5J8ZQKoCGGzyYSKFXFkJ674IdMKZkwZqC0tndkHBU7fwQIW1DxwlYNAFx8i7tkPyGJ9l2JDdjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707136697; c=relaxed/simple;
	bh=FzZi8jxaWuhiZaMWwhPY6iBXCJ53dR9bdgTMg/QZy/w=;
	h=To:Subject:From:Message-Id:Date; b=jv1dN8igPi3lThXUZbUoNFnpJRQgUiu4eq/or8ovZAHsGh2L257es2mF5Df822Op7I0rTCcnBx8tj2gGC9/wxbdSZrLemt+j8DPZaE9RQ4Ve8fS9BvU6f4FIIZOyBImgeWiOAuLF48fae2ms/OhOFlKUNziglDjOnxSkBG6W8cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeBt1JyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeBt1JyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7989FC433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707136696;
	bh=FzZi8jxaWuhiZaMWwhPY6iBXCJ53dR9bdgTMg/QZy/w=;
	h=To:Subject:From:Date:From;
	b=XeBt1JyXcXanPFHxLphtGlvkCZlCiZR2GuSKGGodTudi/e4OYx9JtLQLvuX67ea1H
	 QCXZ1PBT2+KTWqIuAiNrFvDilonI5YSyPVoH3hjTJkO+CRnQt4iJOWQFRQEUzEq6os
	 Qj7abyQmJMoGSbUzous25aFiOGIYE6uO72fC5WLPoBT+1RHWvS3EFruTf4/XpXUtpy
	 sqxboKUh1/a9ocVHV/z9QNM+vbsN+FfCyYfX21ANe9nOz25vYu5y54hxcbNDgy1u3A
	 cMKuky5/f1P23+PwPMNQEKTyQIARcsLwHwIx3AckxS0SHob9dD5/D/BD/2Wo7JMjoT
	 +z9mQsvns5EGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BD4C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170713669638.9758.7045127960295811624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acab2a87d0592283758733fb7018c161c43b84e2da7fdaaa94c38bac2bb126e3
Date: Mon, 05 Feb 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707136696

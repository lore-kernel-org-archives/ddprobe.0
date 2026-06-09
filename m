Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4153C4574
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780989874; cv=none; b=FZbI8ZxGIvyyLGDv12vb/+77jOTPKy2O+zcspFwtuh/UX2NjvtMcxYJd9In5L/GdPeqtsP6yXFgvkq21LJraZNbeSUfLitK/sRQ+D1XppqLturJkSUQe0IGC+ZuFVd5g5eyDciH96aOXDwb9QTL9Q1+h++NT+BRaaUwHdsqrp7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780989874; c=relaxed/simple;
	bh=h/hdP/FNYjHntKm7nd8CHbHh9dKWkHz/sUg5ISxDnbI=;
	h=To:Subject:From:Message-Id:Date; b=kqUq27DXa8mUiVBETJeGrJj1EWIdxIaAPlVeV1Ho8oGIgfeNqHqEad3TZ1dU9goq68PDWWoQVurjZYm7EG3C/F35YCf6zBwF2GGe8X52KmswzMF4bybaX/50CA+3gA/+shFiAR6zx8EQC2GKaylNjGeIOkrARYkEzbbahD0hMhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRzzOvge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRzzOvge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBDDC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780989873;
	bh=h/hdP/FNYjHntKm7nd8CHbHh9dKWkHz/sUg5ISxDnbI=;
	h=To:Subject:From:Date:From;
	b=JRzzOvgerG1iGQkDkISlk9TwD5qO10M8Jvxf1tv2udte+y7hICVnEOIIItFqAPNUd
	 jv05+tIPUfxXfGzMK/9CROEjz8fd7yzDuiq+RHJL15kbZ+o3kbIKct+IUO9bvLO9IJ
	 575o7DVIXPJ2Nez3jZvJzdhCzNWc+fLaepeDeobQI2eSz6DeJFnB+sbZkuTCKOKCEN
	 dQbzOW2/IChOWHgyHiVN5u3VmAT2Groolmiotn+fA25xdX1dstqzrcC8O0edTwTUst
	 1SLMti+sYuRhQ+mSgjrhmZ7W6rnbhwMxkOwPYSGPQ3alw7oCnSlAJa+K7kJhD292Aw
	 zZ706ZY6VuYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B386DCD8CAC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098987372.18553.4150470000425955792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8088fb480378968a09920f99b39dc4ce8a2df454838e4799959a5a2bb0394b6a
Date: Tue, 09 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780989873

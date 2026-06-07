Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEDA2868B5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780853674; cv=none; b=XIU0laPNMjMUXziyxJfEEs43Kt/95aNHnz5zER+u29TGp9sYWW1sIXHEwoOVDhuMtcDi5bFRpvNCtjuLQIoeU/mS4SGBeDoWSTgORmCnUNrKHGOW0jQf2ODVGw7Syq1WgXKhAZKVybstGgc55FUZ9PAegVzaAK4dKM4VMiQgZDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780853674; c=relaxed/simple;
	bh=ApOw1DCUp0DRxqZrCcbVm2fDoltOMg77RmaIbLiVy+o=;
	h=To:Subject:From:Message-Id:Date; b=N8yHDohs5Bo1i0Stcyl286mIVN6X5Ii7CEEPtboIWp+YpA9r4nxtZBbppPzfGGi5MPw3mFE2v/+Yfi+OxwS9ejsaUkfDbdBB6GJo2xFf5dP7C/ZRFEModopkyOsqj1QZ+554sMrsqw/MwGBG7277nJ3tDUlU122tmf5f8kyK0q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjrK4Q8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjrK4Q8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C96C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780853673;
	bh=ApOw1DCUp0DRxqZrCcbVm2fDoltOMg77RmaIbLiVy+o=;
	h=To:Subject:From:Date:From;
	b=jjrK4Q8jjCY9F4rUBzuTOCsyWg8L8wLuizJv9wxq5DxqwzzTQJ8NuW6Ryr3J0X1Sq
	 TmJ6V7/HRSmbbaJgsZfFoQIfZHd4Y237FLDqgwk5TPVWSz2d29/ovxnK/NWhY/8n+q
	 L1A9wBC8Wvg+5miDUr9iRee4Rg4+ndLgV5iyIwsLU6lpnh7DTo+0fk2oomkcd8/ozl
	 OPzbaiE1Lq0ZD/ZPPUtJS9aXeuRMzwY4/qXkPy0ZIQ5LYZiA/vMOA3GxurMP7uq03o
	 5EavYU37p2IoCCqLgza3EZzObkljOrtkP1ACtI6f8dNoebFvu6FQh2A+zCz9H5GwTv
	 EEqkbxpbks/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5B4CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085367368.2474.1538345025093191505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192d1319b00c99b264c56cda0f93f21f0c8c48bc2fd956b6e55ce37d5cae199a
Date: Sun, 07 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780853673

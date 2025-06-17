Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8D72E7191
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750168194; cv=none; b=D8WLJk3RJdDxd5aabSssI5/x5rVw/exOyxyHcBhp4OCm3f412N3YH0+0ddDV593nIYAifD6dDaoPoEfxcT/E6eAXs2vFzB4znDC/S64WHdkwyH5sFnSf2l9h6KLhhxHAQ8ETZQsvVGSmJ77+oqF1lK4/08uYPtjmOFqPlPG0KLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750168194; c=relaxed/simple;
	bh=AXORoHB7fcVGqZ+F80m75xkUD0k6nbu4unkzzJrkpU0=;
	h=To:Subject:From:Message-Id:Date; b=mdmp7AyiovsVK+wyZ2Al8qe0ho4COagie3Ox23Vjh1EsFsJmdARKHN+J44MMyzC+WrFf7lp56YFkvN3ubHcGZ++0LMPZiTtSfmU4u15qAgZ/uHm1/UjEcyXEWTAta/A/B3GkFG1/69QEZP1z9Y6M/W6VqD9wtoOfz5nMnRc67IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAmXmIln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAmXmIln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D21C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750168193;
	bh=AXORoHB7fcVGqZ+F80m75xkUD0k6nbu4unkzzJrkpU0=;
	h=To:Subject:From:Date:From;
	b=QAmXmIlnb5WwXykFj6jyM+dTfGy2iJTzMru5WhjJOxp4+D1RVjPuvM7deMcQjU9Oj
	 D19SHf6QEV7TtNaAXU1ct9PgI+boRtaiwMu/W/lCae12TmbFWkzFXySgpwBBD0yWh6
	 x0RANqB9du90z7NG7uU4quMQhIc6UOUk90nSDs2f8IPwHSh672PUcELmSrCXvpzFB4
	 pJlDyb4yeCEqBc+m7Ixe8BM9h27JW84vrZuO+Kg1ka2SiZ7mk9flDw/GAC9rgk2YF5
	 Ws9epZy5vX3g54Yyp2kUIjrtsZOxXJr4JP0LGAGRdeu8BWBWHASsH14FOyuCeAWh3C
	 VqWLxcw4vovTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F16C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016819363.17484.13760592187954438144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5620a9d36a9f04ad48ff600e7e100d9340e0e6cfdd62b62c84ebb786e2a2f5fe
Date: Tue, 17 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750168193

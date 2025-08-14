Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A092114
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755148794; cv=none; b=G4guAahN6YVD3845Zz6Ztie6X+RMJ43yOcqhtJu3BCTMwDcWWOISeLJ2wVlH3RkbGre22nUlucsgrjmjAjxSP4H/g2EMOgQCxi6gKK7/AYE0QjoX07XTMoYbQZK5nxmC9setNMPnCYeLC2Idue6F/Su/UlKFC1HusiCCc0ZGb3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755148794; c=relaxed/simple;
	bh=jSlq3tmGOgG7Kg3N8b63u6rRaC8Uu7ZHC3aDisRECU8=;
	h=To:Subject:From:Message-Id:Date; b=q+V4u2z6sYFpN7ABGtvINHo/wUo2f1dae/rVAxK3IJMg7L+WENM0JkfJQnL+ZvAGvufpWIxGEGfpPXb96125wy/unuehWs+eDGBzXqnGM8sS32WkOi2vc8gGgMDuxRa35g/WH4Mj1So+v7P/cYczkp6vVUUVbHoX/nInGBoR/vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxQwMFmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxQwMFmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2533C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755148793;
	bh=jSlq3tmGOgG7Kg3N8b63u6rRaC8Uu7ZHC3aDisRECU8=;
	h=To:Subject:From:Date:From;
	b=lxQwMFmOSml6kajKOIsBP7zabJ9FVfUtF4uDi6SwYwJRBsjG3Cjw/thKZdjGGV9O2
	 4nBaKuFVdsOZ3sV+KSfnV8n4TRhSH1gyqOEFRQ3DPkwj57ca+N1uR55Xg317d0qGBZ
	 5dsVccQ/0UNpOmEETFkxEZS5OncBPIvGUladY6c6cI8hk4sh05tUjeTdO1KBJ5Ersr
	 05rROVM079w0kYHHinO5cnjvIUMvlbFBqhagNG+/1PokmvSdjKVceF+O5kLFLyfWuD
	 Dmhb7eLQzGYcF84Ke+h2KdUkCWc/xM1i60rktyI2mRYoKtoxYX+E63mK1NlxdVu+oN
	 i1XkiG3sCOAwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146FCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514879357.27930.816712143165324578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab783944c11ef51044a59dbb7f1d879a7b2ad5079c0e0ea0d057555f23acd240
Date: Thu, 14 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755148793

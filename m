Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46127257D
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742406595; cv=none; b=ElJvrqoKWXZ+gKxJWwZQqtymhkdAJd/215NZENALtzEefuGVVEy6v9lhPYXADorYQV9Vcs2vyQEPjFc9CHyDlCVYfV/X20eMcqA1nugiqPV1a63ZcJ0FEfVat7MzgCTsv3kMncig16cY5JWcHcIJD4RIYNeznh66X/deowRLL/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742406595; c=relaxed/simple;
	bh=dK2hddnaBBOQTOuaS3+bockzSC2WQu7NnKjAxV3d/T8=;
	h=To:Subject:From:Message-Id:Date; b=jFyPszP8A9GC6bv9Uz+QE1QPf0muKW3Z0YurkeJfMYjCOaPpkcld34yuDwwbh4jzPDu2ydtg69K7in8fFHbDiOIDj5s+TpO3kcQRLi9i3fpvYIXXlNtwrA6IuwWvg/Y2+hhZZ+uk1erGLKnuxXhtCrNot+ZVHY8q5YTtFbuk5/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/KMghGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/KMghGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC090C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742406593;
	bh=dK2hddnaBBOQTOuaS3+bockzSC2WQu7NnKjAxV3d/T8=;
	h=To:Subject:From:Date:From;
	b=Q/KMghGEHFO6uXZKCtySkmQI7Gc4uIsbZz6vf3GUALM82AALTXdw7QGue1n7CrPWJ
	 O48uh8b4qzwZuAabES4Z9k5GHFXvopxI39AdkvbonSCXKH9NBm2jkRUdsO0dZZNy8z
	 17XflG+R636IclTHdFyd1m2/fdKoEZaLSK67vMnVl5qOC/nB/WhDeA+XVjuZ41Zs4A
	 XgY0W0FKewvOxcmF77RYjoXToRixZCEeKguLF3feFipqLgLD5DiX6niPp9RCIX4FIJ
	 ycq6jzlOz0TFnrOIx6iVlWrfD+GEeY4EVFhZj2cTKBXjv7OeXFFWPY5ZvkY5nW7wZR
	 XeF0pE431wBvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9637DC35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240659359.27118.4776125523213330219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771cc8011748ceeee8b5085128c16232cca3d303d1c94624b7a1a8f34d4aafc0
Date: Wed, 19 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742406593

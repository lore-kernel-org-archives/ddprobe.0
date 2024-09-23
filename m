Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5A810A3E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727071554; cv=none; b=tKFRTEqmZty8kLKuU3Bpws9U/DDXIEZ3jSuAIU2KIw0XWh9o+EgBmc+o4F2fu2iTJR1aQL+kHz4ZDFvLJEOikAJbCI+UA09B1DzHGMzzfkVB1xNWyTYcJfkqNL1jWzKfwOSXdRQTcZLGGMR2MRbZ7UG+i317y/pSwCq7mgHv9uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727071554; c=relaxed/simple;
	bh=SfgGw+ejfLsfnJvFGoSiKwYiWYaKkw8mjH+Z05p24/I=;
	h=To:Subject:From:Message-Id:Date; b=mppYZ4ahSTP+/P4SwboPMY8Fl0NvUYVtPBy2HNy39DyMb1I8xvIiZmH/jKvbOJ6JHyC4iwXtMr+d4ozcVpmafBxTFbsWU7fnHapAkdTXq+K+C1dbK0A6mY/LfX9xmD6M2qjQGLDgeu/lt+m2Ozbqbzn4+sj0DuL/qKsuzx3lpdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVXSYHEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVXSYHEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDBDC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727071553;
	bh=SfgGw+ejfLsfnJvFGoSiKwYiWYaKkw8mjH+Z05p24/I=;
	h=To:Subject:From:Date:From;
	b=FVXSYHEEDWjROYdeUZ8rSDmVAZ6c0K1EkBYmPB+TMpj2rnyLsCo2B9OZOJs/ISGHc
	 cO3b+6hz2jhdI9pTqm0/FmYtQ7Gk3cxj5nxu6RagTXJ5MvoFKnkpyAQvMzqp9cZQ/7
	 xLl88bDjZU3IcvgyrX0CpqDJioufk9iTVTQbXDXtQBcJXCjX1DXEOYTIy9FsxtCRyG
	 bsNmLRoHWMxwPqu5NQ6pWkjefVjBC05o56qGy+3o7UB4QCPV+6vzxQachlf+t2M985
	 zQ3P8Tkxuh4mghrVuw4PUIv9okCSA1q1VhLDzDbLtNzhcjucH3HEy94EmVUJeR8Fuz
	 cZIaVbi6TkHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F4CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707155360.6361.5077429097464854399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1c71bb4780c4565ee8b0bfc4809587c41f7c3c52eb827771d632960992c4b0
Date: Mon, 23 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727071553

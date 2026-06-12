Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522833C8708
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781270194; cv=none; b=LtHggjfbxGeHt8R0tBJ0r3YdJnEcFLqyCST16zN2bXNIxclDno7+EiXlKOougUBRk6mghlBc4SW13zFOD10F+Du8FgWmXC6bNzBeAQxaz1kR+OJQgt2AdouJ67xkqyKZiFUa9rWbNYniKJE4xVv6NMHImv/FISUKaUBwl90Qrrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781270194; c=relaxed/simple;
	bh=yxT+/anDmno8jI+tPEiEO1Y5teUgKk9O6MPbp4ThUbU=;
	h=To:Subject:From:Message-Id:Date; b=ayN0UlGfnXvjJzuQtWpVtZ8k1PAjG5WD9tEsatN2UZmmBKOkS/BTLrYtdR7lAvkNHu322k6xhj94/JYiKVaskogo0GbglzV1wKVmBbBOetprEw2rXxd1RG+9BUSGk4ceT3xrd+lvEsSSy19itkMT6SKjqRuuONkfehlJAoR4Ps8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvPAAiyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvPAAiyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FF0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781270193;
	bh=yxT+/anDmno8jI+tPEiEO1Y5teUgKk9O6MPbp4ThUbU=;
	h=To:Subject:From:Date:From;
	b=NvPAAiyJf4cpgRXHu0zwhQjutcsxVqUog29KwBnqssscOYQbkZB9LW+5sLcPhzSw2
	 j0g5QvwEY/668kyVebxwbebcyIwElZSx5r6ARaz5HVlPDmy+5WM+cd1Va6bqYUFJzW
	 zm+IyJDssqMr7+MZNHdk65/DL0ziLCIDXpCR2Q2J1F6ZBhj+Jnst3yMonjNzK+ekPl
	 yi62o8HJcshMkOVqHXH2i+Wm0YQYMuBeL/JupnvrICNhBzk+RlcWLyNkGn3hpZ/YeE
	 inkUAV/VewJWY4+WN/32HFfg/nLM51PHER3uoNcB0+4jzhOPdK58ry261h2lBZCGL3
	 rJ88CAdvZCGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A13CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127019370.14290.11640357402504015645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173c4c34ff33cbbbe8432b5f869ed30c7c95b297dd25da6865959e0f496c0a9f
Date: Fri, 12 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781270193

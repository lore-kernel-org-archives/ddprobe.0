Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42544348C5A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781966194; cv=none; b=KoE441oIGBDew65n7qZfTDC06LBRswRvBDolwJsazbDmzOqxlPfVycAGOEfyna4ITQfFDCgLmLuQw+KMjchaYwljBfXDBI1mszSE+fLrTQDePiMstqgwzLxwPyAxo0mSld99l6JMkF9BhymcevJwFljAYz+2/Ccrp+oRWUm0I2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781966194; c=relaxed/simple;
	bh=jrhbfGYj9yHb6jzuf4BOGbFoBe3YUZM0icH527komcI=;
	h=To:Subject:From:Message-Id:Date; b=AM1ViW8uARbTBxrwy842ZqbRjWulAmrxd7yc4A3D+0Vm4LKv2NvSWFQknb6sGmO6YTfWYo0qAuUTWW9uN6ck+TfoubOpwTgyXik4GnL3YiGZCuEPzdCj11WnCIgdG1gpO1jCgG0LEKjQMIym40u7lSupoFP3qEOG9BpwTeM2hT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc5XN8eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc5XN8eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8049C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781966193;
	bh=jrhbfGYj9yHb6jzuf4BOGbFoBe3YUZM0icH527komcI=;
	h=To:Subject:From:Date:From;
	b=jc5XN8egBbUKaGllt96C/DxAL3RVfM9yiFvHLUyw51XtdZ4UdBO1TnvMCThKeMj0y
	 2dnHQjuwERIyESLEsv3hgOUZOL0JGLuZY+6T360CAzgVcrhI8QT8I/8L7HnTWv46J2
	 iJjImE7GFPpzUpximQe5rQY1X53V3UYfydMeSsH39oSCs2SvL58J7gLS1LAWoUQNRm
	 0ghg5xn1yvqiX2Ba6eeaPBLOrXTki5SXME6JvDxcmggHbXMJ+6YaZAB9qRhHz3EulP
	 kQb4xldUQLw57NJWOpCqHmlIj9IYivYeH4fAqrcvmhLWmCIiOKZ4I8hLTBEs1d6BW+
	 /Ls8dI8qxl1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4205CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196619370.15043.4990208867781597260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0259f6f3f5e7f435b6182e6c80c32dcb2de864853bd1cc9e3fcda2d343a03f0d
Date: Sat, 20 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781966193

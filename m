Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C0F245021
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756022994; cv=none; b=JC2MkfjmN6fAS+B1gL4M5oIksQXAcDuDQp76Dkj5hgGB6njzcjywpr3p6+KKJXDXesLEWcxL3JJhn6reNx8ZtEzNkQDsbAVjWQ3YvMh+hB1Q08OkDI+nrGldPxjPjjNmW/1ZX0tnE8UDe9oLOpn2U31PXQoz2kF/Aw3Pw4FDpxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756022994; c=relaxed/simple;
	bh=wJixKbLdHXLpYzce6sdxu7lEoq0VuJuGQ+vyL3VvueI=;
	h=To:Subject:From:Message-Id:Date; b=Z5iJ84w74HRDFMQpyFx1RTK96NL5KpjSjVDFw3F+3JEx39OKg4x076SSI+7PMPBlwHYYAKR8uiAOiMn4FxfqS0LOL0BAS18GZIjnhhs6X0l1SoKOXbIaASqTfiYwM1UjszjlpyE1+KmPdAmkCJHo7YOIKxeKVoqYQaCSKX8fA8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UO7UTLup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UO7UTLup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD23C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756022993;
	bh=wJixKbLdHXLpYzce6sdxu7lEoq0VuJuGQ+vyL3VvueI=;
	h=To:Subject:From:Date:From;
	b=UO7UTLup3DNI7WxHLLzOV82rqMWFTOWT1+xfmBgEDyVENoPRN42/Hgk1fzqYCLU/R
	 dJe6rC2iBHGw/GAY/4NKa2RBnWBFttJYyl7MOEJch0e9R7kt2jZEq5sfr23UgrWJrl
	 FEA8Mvl3iYE8cYDMJYs9/EDscNrbZVUOF+7j5lEE1PGfBWy/Zui7CC7wUB453LKwJM
	 NgarFfmSpyoLOmWk4QmuGB3IEstUml7qyhuXnKYyfJZksCh61uaiSzJ28LFMBCSIsK
	 32DDXHHxOk9lxzFXtfnXBiDiaBQedJ2QaFo3P4mIf3ijzolqBHMc/Sy6KuYJ2sl9TD
	 2dxNuVh96KVQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6AACA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602299362.22416.14339583828787591126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce2f20e62934c0bb5b71b3693f8d7f4f336c247101c209c8fa6481a9a3fa93d
Date: Sun, 24 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756022993

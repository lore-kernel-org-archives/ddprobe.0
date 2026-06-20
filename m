Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5463B371889
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781993194; cv=none; b=AYDa+NVhhMsOonv14NVVv/I94X7UD5ZA/NwvhTnMVoRTGtG9KCP99/JRUNBQm0b6B3co86CDjhgY4Jl2loISBP6xin89K+fsQzBEDwuRmrsN0mBbnj5qwVm6rSw6JIqgfVN2drOOCd61xU7ZXkwoXRcIzvDSSZboTw1oiP/QNMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781993194; c=relaxed/simple;
	bh=bBEJsP0IPxGd5MJmOgAn6m5eArsCoPr+8XRSpd7kchk=;
	h=To:Subject:From:Message-Id:Date; b=bsiFyiaAd3rMY98UhuKz0eeA1HTtQ/eDIaBiCva/7COZbhOZ7yDfJLMtCncz2gz2JVUipPPvDp0CpMaxnU5ePKuF3ZpYkd1SzzMIxuCAbhWLaqkt8GhHoSbFos77g1/ky8uUWIvsEoIKEl1j2hznbYsJHkq43hfrv2w+jZLAC6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0V8mMLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0V8mMLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54CCC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781993193;
	bh=bBEJsP0IPxGd5MJmOgAn6m5eArsCoPr+8XRSpd7kchk=;
	h=To:Subject:From:Date:From;
	b=q0V8mMLcDJpzC96bgGWuI83LaO5KT8Zb1KRQ4+4ObnQL8rBBZ77cKNkFe6wPMtEJq
	 RGYo2dFvPFlvFT2uQAzs5oI+z0M1Y4k/ZirmZTEgJlG8NAnMdl05vRUNourEzL7q+n
	 DGmydpZ+WRpScZBM6nNHBeQ9dUeolud21KEIPdREx6j/03WlbUPboO43t5x1AZwKTw
	 fH7yAaKk1sXesKJ1fhotNVjJJBrb7HGnSga9Spb5Htvd/4bjmEmerqJmfDd624PvVG
	 nRDil2+aa1lAbksFXgxAZhH+DIW9XRmEPhJBvsHVcAR69vbv6Y820ZDuICC9WtkgzD
	 Ov9Wm22+YM/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B203FCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199319369.13258.7019063833957077156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ea03339a87472768a6958defff54f4d7e0881cb451b6ef85251d9cac524c31
Date: Sat, 20 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781993193

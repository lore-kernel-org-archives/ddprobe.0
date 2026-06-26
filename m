Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724C43EB7E9
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782466654; cv=none; b=F9w5XUiPE1ignsfGlQkljkZAQ31PX/vYXsMZCd1OKzyso95FHhdYhOZtylBne5PdlCVFYGlk5YalpIFJEZl7rA3sly9WlP9+S0+haSa2MNvZSmGvpKx/RCl7GlDjrn+kX5S+OF1QGskqcyASE+69CgWDcXUqskd8KU9GChvjwyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782466654; c=relaxed/simple;
	bh=XmwyR2KwOXD+ZHFGcyHRcTFFdHvlckX8brX9LEJG2jE=;
	h=To:Subject:From:Message-Id:Date; b=g4QqjWn21MCr2sfYju+FXLtSycKEz0jej5CkJSJv1oDt+/EIJBmToAjZz/2Bj1t+9BETGtFRwC2vB5XpsAbDEn38e6f94dCPUZtfoi0LArtztWWcSH7PYi6kYYdwKpOd4THcQQdAIKIVwWTSa013fgn+Mous1pSXXaTK7dzttaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8V+QxAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8V+QxAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC21DC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782466653;
	bh=XmwyR2KwOXD+ZHFGcyHRcTFFdHvlckX8brX9LEJG2jE=;
	h=To:Subject:From:Date:From;
	b=s8V+QxABmI2FpUO4aaGXVb2Du/r7Opq1uI4OWl58nwYpNQf6o0k5BFzixpDjn8CqH
	 xbUHi59DL0bD90CZFmKrheZMi/hBzJkGG/pApDYx8NiPKAj+ONJWYUC3s4BRBX916y
	 6YBsB72vfszPU4STQgjOH2z0dxZ1onjmbPl6Ry0IJmL8PJLBYy5rBWoxGd6LP2SU5C
	 cwfsr8v9jPZIa/UhIoexyyj93PJ/gTxtxQdEvjiKGmNZnsM19Ly7/SpujHd9U+gJmp
	 eC8s1zUnx3GH3qbAjJV5WHNxYkv8QzPm4q9BpgTQskmyBhWtbwWcJPQoHcSIrhanHU
	 usYWEPsI96q+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB813CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246665369.12089.14472150992581221363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d97374f7b27e49b0c921aceef54ecce045fa55237c221f2761bac2e5fb0ca4
Date: Fri, 26 Jun 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782466653

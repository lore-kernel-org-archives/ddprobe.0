Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB2F33C1BE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763485914; cv=none; b=nKzSJiPVSPIozYHLQpOwY/jD3uPPiNVxh/fvE4i4jImu4W6yI2+xqMuLT4nzWylcPrcslnII9HtQWewHkr0eR8XJTMUbJvqQcD+ivarCR+GQ9Dd+McK604fMF5f13cvJn0N7uKyhuukUg/LGEmRNSETPGNM/yalYJSaEjYQ5Sxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763485914; c=relaxed/simple;
	bh=hCZY5MlcdCV2RSNw6AWuPG5bEkVb2EjOjps9t9JFc40=;
	h=To:Subject:From:Message-Id:Date; b=q6BDgtUVgCa697WzfOiv5t4qXI2LyFkPD7P6poZ0xk+9Kst7GpbtS2Cn/DfNZrMiS5luyv40H5P1hpNlHQ+/fAA/u1J07pGiwL0Ertb5le2Ms0hgoTvXLxZ7T7b7KRYz+lVYmYsOhZa4NhNGvFCZTUKcfCk8UXR0Ysve+Do+KVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q86qnHJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q86qnHJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0ABFC2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763485914;
	bh=hCZY5MlcdCV2RSNw6AWuPG5bEkVb2EjOjps9t9JFc40=;
	h=To:Subject:From:Date:From;
	b=Q86qnHJdUSzrkgwLeSpSO1f3GRZQeA1km9J+Tj8lvndtyd+1Q1jXrsx0za/q6v6Mf
	 oVpI6C5wW3auzoBZoZ9VjpjL3FZm/CoYWyAZnw//jBORvdrF8GaP0LNOOaRZI6Jp9m
	 rNp9ZtTkFWp0aM1+avQpEyQNduWii+tuu2LjhbHwjqvXVdBxwn8646TS18pKTEbR9m
	 ZE6+zoJctJZ/jbhRGtO7bjo/4yrssyHWd1Y/afmHZ12V+nmrWtmC0SC9Cwc7epvnc9
	 bSC1Hh+hc80fwIHV83bDDaFPSGphof6HoXK3OE74cJGp60bYj93q9iFytCwFp6xQdQ
	 s5gLN8/qHJU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B2CEE33B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348591358.12101.4296272418199999857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75038cad110003d41ece0d451bb426793d32ce114972b403600b7db13b56e2a0
Date: Tue, 18 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763485913

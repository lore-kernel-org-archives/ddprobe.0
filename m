Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D86430BB9F
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759163994; cv=none; b=EcJ9L7iedl1CIzqpxBFtI257s7Z4FfltTccFDsKMJ61lDOa3Zv3NMesT+auTUlQoiLrrJbVBmGIPcjGtIbtG3QwLBkWFjBSTB6EBYccU0i3B+ZLfLnAe0ukgsZyruVGnX6Ju1tRwx/olgfdHHEuOREjQEiN/cHPDfyL1OeKCP48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759163994; c=relaxed/simple;
	bh=6YrMZ9hFBlCJmvW6rW/qSbGYkEn9cENC/DeR04Rcoc0=;
	h=To:Subject:From:Message-Id:Date; b=cXs2z7v7LJc1RaRakwR89zv9RMrEgQk0/6p2ZB4rJIaE6GrED6A2967eQtdqB4B0bgbdjBEZTX2lWJayH2vIWbt6H7eTLfhTDyEz0rsMwULS8j/hOZ+TNYdLdYwShrVDVlF/oQaqx82GhOOEjUE0gfRk/cYUE6QdWvFGr0VufYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm69O73U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm69O73U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6729C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759163993;
	bh=6YrMZ9hFBlCJmvW6rW/qSbGYkEn9cENC/DeR04Rcoc0=;
	h=To:Subject:From:Date:From;
	b=Lm69O73UJK5ZEDppYxt/SpceptrkIGjiY7/LHB3YnmUWVINM6sJFZrtUcQe4M9vE2
	 NKFof5aZDp1pOREwBHyVRjG18kenvWY/ff+m9hWYQpRjt5wbfDoGaTTI5CRosM/SYr
	 0xo2amiu9hEM1NI1kK3eg7ZlhOMhtEOBT2lxolzRLvU2lvPJvl8/FhHTbbnXzPW5ej
	 Dqut/KlA2fuO3p+W+UPiv92yeIyY3X+HdM6I/eFXn7AeWYOyLSF4p2yWXin7oROwJr
	 eAlViKwI3iNuZaP0V4WCnVVPTZB72dJu0hv/5WwSTWggP1euisCEdDFJbGSFcqelVe
	 n1JXLpjFOC6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91989CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916399358.12252.11951798812772128579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052fd36bb4b8d9617ba0eb5c7ba05bd7fcd23e9be45eb2beca2ef7dd8521b9aa
Date: Mon, 29 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759163993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E53B5FDA7
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752260994; cv=none; b=gmOhGCZ5ElWTUxkJsuMmvgMw1bFS6lTJmt6uKeuQg6T0DrqKwFuQfzo+BEWpINoyuy0YgZLl2D1M77MD0Mv+sRGUeLbTqiEEI28Jjek40grZUr90OPfWhDiO6gyZ97WmYY//P8gfArXDxSmQFbYNLk4Uku/3R+1uIbCP559V74M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752260994; c=relaxed/simple;
	bh=mpYuThB12XHH9HllFX2Hq5fUMbQe1X/ALOf+lKyQAfg=;
	h=To:Subject:From:Message-Id:Date; b=AKBfgkZDUyiJRb8qTvlqCQO2ULCEPV//BAbVm5Hu2nA4I4iTHpfHlWkH05cj8NNnkmcLlzCik9LdiINxvwNpXJmE7F13Oa9OCYeCjDEPcitk23Zzk2dyPT57QGFyODsVrwzp9M4QXQeVCYQ/YmhzTj7+xBtRA43xmw/jk7U5Cz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7oAdv4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7oAdv4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1998C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752260993;
	bh=mpYuThB12XHH9HllFX2Hq5fUMbQe1X/ALOf+lKyQAfg=;
	h=To:Subject:From:Date:From;
	b=o7oAdv4XbwX2ZtDdfUAqxovFA0ZrrqG2Yne6jVHPKde1rEdMTcxPfPqem7ERjAXtZ
	 v8wzQZU2UQdEVA8+6wR+4aHCflYvujpWjAQllNJop1ll4PenvCLxu+vaxthoCbHT2j
	 nnmojYn43sYR5DzZps3iNAPmYIXDNJVW7pzvAcK3ft5pzPglBEmJOpy5uccU7ZFUNJ
	 5MlFxBvAbgW3tRfa0WA5PAGcxhlRrzOx4Ca+CPBesHSVEsYVpCagkQQWwvnKC7AN7/
	 ze/KrPilJTS1rXM3V/qMzl8oZN2xBqV2FEd9OyCF0TigIrRwMcswFBt8ng4UdMMo43
	 vCT+qieWikQQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226099358.27218.10631536134111918167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ad8485360c69f5b804357d8b9a4ed8d61a55e728fcddef6e0728c2d2669319
Date: Fri, 11 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752260993

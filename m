Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36340284686
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761997194; cv=none; b=Q3CQycuSTmJDmSBlzKkBAZ020iL/srKV7ijVu+oQTqjE3kJ3sSpKiU65HnkQ5JhUP1SoS4oqSJJFWaMcWM1rhKSOhsjtfJTRcqiMO/g1G0Q1tpXAnBWhOb5zOzAPi+lp2bItp1AKVvpYRzKBx2qFEVAbQwusqEmQeCfWyHJd3rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761997194; c=relaxed/simple;
	bh=5G3wDt4SFlih7RfdwUMr3u1t2sYsb68OPC0Daf3myCY=;
	h=To:Subject:From:Message-Id:Date; b=KkgDPGmLtt3jFOph0iXVA+Id2Ah7E4BQFr+J1RU5Oa7dTTp0MW4N+IHyj+rm13pr8oNRa1pR0GF02DhIZLZV9kXBgFe1fz8zddH+iOd4Wpk0UAJWsCpN94yy3biFemU946rqnnPnmVA1hVQlNgnDNz58+crYwxa/T6ORlOGi/wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCysTljN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCysTljN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3D3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761997193;
	bh=5G3wDt4SFlih7RfdwUMr3u1t2sYsb68OPC0Daf3myCY=;
	h=To:Subject:From:Date:From;
	b=OCysTljNyVAlYNqASUiFZ0BgjtbWSQEjThvX5+tWDT0jbtC8iNpj+tiubXz+Ks00B
	 DRG5mAYx50UmoyIcj9B66QdGzoKZuwGFkGnzH6dqOQtKG4lG567SDq5HfWrJa5hafI
	 OSaDXyQbQ9xIVypRAIdzeZql4luyIbdFfwFGQWUBP7eQJsYEkQIi3mSoNOL1hMc92M
	 FenaKwROAXZSWeDEz2c6P7ADCxxWmpAhfZ+RhY93MoUkuBmZqaRjfpUenns98y9l62
	 7gKWTh+065P3S1dduG3e50zgAU/gkm73kkNJIEDJS126XHSh2IA4jWhIlxHakoCS1v
	 q9crJpI4zEUGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6340CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199719362.26311.4693182099470717412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efbb15987c3776697d5cd8644e112a3e0d2323f055c90c7af25b250fcef397f
Date: Sat, 01 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761997193

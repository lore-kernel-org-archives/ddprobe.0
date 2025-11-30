Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233963B19F
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764466374; cv=none; b=u70v+qas/yOVC6L53SPPkzK9PAeHwH9K7WA/SV2/LR8XO0QLTAmsmkEy9loliZG3QKj2hYbKPJGpp9EAkzD8EvghideUw1CDGr65tbMKCrQwjc+0XNbEexUvPvm3A9H0BXKyUXcAlrdL1n0UJs4+LTIJkwe8EfCx2mQeU5Qs3E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764466374; c=relaxed/simple;
	bh=O7HZFBTA+p1Jq/nqi3NhW5SOi+4Jl4te8MNU9H2nafU=;
	h=To:Subject:From:Message-Id:Date; b=ZtDeH6uf1zTsD9eJUH5dm8AZeL6IsfHIGuumoyDmOxsWTX0AwhaFYbXX5pgsi5bxGERcp49IOpLNAMA9fxMhC+oGTlk1aU2alUEPnR2pGnY2rcKd5f0qaVTsbuDl9e3fWjpE92bXePpK4CIL1+mL73fau7tCBWzAcrknwZHeqOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3G6rphc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3G6rphc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB36FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764466373;
	bh=O7HZFBTA+p1Jq/nqi3NhW5SOi+4Jl4te8MNU9H2nafU=;
	h=To:Subject:From:Date:From;
	b=K3G6rphctlFH9z0AghApt55JEWNm+CgmSbUHCFxySpuqHOE0HC4ESqYPMvkIg9+wH
	 7ekSCJWOQDNOfGy8VprP86hH1sn21GbAkOpg9MfHTlkb215MrSzL2nCNXKugjnE+tc
	 m7Ak/QLXzDPqtHWdZwDULbVT3qd8EycVosO7mmQs9/Wx8/yeMx8dNLNnsWyZXlmpQL
	 F7xdPf5WxK00RDghIAwpmwh2l9FoD0NV65R42x7cWzRFeElX50j4nXlaapcARZWWEI
	 AboqJtpOEWRjPgDgse9ZM0AQvExoWagGMzx8fBYucaD7Wu9WvtdnSqfvjxBmIc8Onn
	 Z6AUN545onPUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98106D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446637358.22008.4830035485808297036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e2423f0e80a42a90f298341702ab3455515861b4466dc00cc250c664a7ed67
Date: Sun, 30 Nov 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764466373

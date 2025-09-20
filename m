Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B50A2ED85D
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758394794; cv=none; b=Cn9TqUxnp1AOvGOcGBdVKvMqTMD4J59U+CeNlG1Gg7gV1G/STH/JhOpXWZDxUGAGjPSp3PSrLb9DaY+x1tvhwqHz7YAq5BxHFdbdPXdYbGbU6q04HuE/eBb2FWl+UPzZtVoQDi6sfvZYuF8aTcGjwdiGHM/qcUo7efERF+wCqdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758394794; c=relaxed/simple;
	bh=GKvzsr8ocCz1uz7dbcEKCypjRdPZ7XOPS4FWsuXR9ao=;
	h=To:Subject:From:Message-Id:Date; b=dMWH2Vf58ANfMowtqkgwN9YTj+Fuy83+Z7x51o9LtpdtUgs38RUBg1/TX3bkJ4EtF2j26TSnRWExImh7/C+repqrIyQmQTIzawVm1tp/8UDfLAm9vQF6UZ7Gcy3qDd6Nfom4wFYzEPBwxPJqj+9v6roZHs0+tMvUfTUcTTHQ9RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLxpyqky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLxpyqky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A025DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758394793;
	bh=GKvzsr8ocCz1uz7dbcEKCypjRdPZ7XOPS4FWsuXR9ao=;
	h=To:Subject:From:Date:From;
	b=GLxpyqkye9Ze7KCYaxcM4xSQLNo+QAmF3LDb+uk6xAj/nPq2tFwAzsjAB8cJqvIYl
	 ppQ0GuCChP46ypP5ktukOnyHSVYfN8tnMOdCCbZaT+Qony4F92fbxGvswFnp7+fSFl
	 gC2acrMGVl6UiIM9LBEYwSig0Gtq8+8RDNtZSqUzYUiu3zzQOqkO1WFfVML/k8Z4vh
	 SCnu0qgVJRKPHztSuVQw/2K7RcTvU5UkX0H0uDKtziPPyRtiYFjpMzzm+HLBiAIBP8
	 21QYFxCkLKOt8Gx+1W9TkR+e1L6TuXlZJ2hsVL2R9pa1l46r5zfpAwpTc3Q54sVlh0
	 X5vzEL3bG27cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC42CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839479357.22247.14705082407431135948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa8a9c981b60005fc56cb28892d6203654647d5b8c1bbf0f241d0c6828c54ac
Date: Sat, 20 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758394793

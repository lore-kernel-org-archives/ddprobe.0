Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2160929B77E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756205394; cv=none; b=PjNR+s+SS0HFXsqSsbEMuKU8yBqB6520myQTdkvO4FOCbjVrAtB36otHsBoHF6FbOerbvAGXulDiIuOmldd36AcX04C5c1uzoOwZDrReNZRdZA0VE1EL1hMwS5iomqEPzkevk4roIsskIQTkIMZfJz1oFTLOJzPkKZDstr396Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756205394; c=relaxed/simple;
	bh=WZvnReR3Xl3Qi7gbhWTA9vBCpFeVMQLrvYO7kQHjXoA=;
	h=To:Subject:From:Message-Id:Date; b=jjP8AbA+lvOw7eP9ORxOH6WUv5Ppy/7A8zFdbFNn8aWxtnze/IHWZ3yAz0sxzKnpDrk0thrOgqB4l2lGkFrO1prx0jrxmjOBxU4QhSndkyq9zmP8lyuCzlXmcXxlttY5GBOALqJdl+h9RXEHmctILuRdL+s5J4k3GnP5SqwihCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHgetwol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHgetwol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9D8C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756205393;
	bh=WZvnReR3Xl3Qi7gbhWTA9vBCpFeVMQLrvYO7kQHjXoA=;
	h=To:Subject:From:Date:From;
	b=eHgetwol90ycJVIo6YhCjMLhRvcmgJMNi1K+t+n9yRxwUO7UkW/NgPRVp3lA6uzmT
	 DvSsleHtrk18HsjewGJMPLpG7+s4ghKWs+PvfUb+dRbawLSJ9MBOHRDWqE/10BkNH2
	 /Lf1+BaIxxwUv8ZpAbYBZnsfJ8K6DyW3wyJnEa1zNq8NedqmJwQVvuIIj6d9xHVI6P
	 ENrwQbrCH+rAFSTqntCUuqfzB84gDvsapezx282/wZnT+YhfIn0Jtu9YUw8XN+onaK
	 s3xJyYJfRrl7dZCdVY//3Wgs5zRrEz4Y5jG8QzFJaXxkpMNw9IaQgziVeDWT/1IOLW
	 /jsnMbX/9Cshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BFCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620539358.19761.11327448745508877849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa118535bdf3f86cfc375f444c21911769b223e52e5a0564aff747f017b3a8c
Date: Tue, 26 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756205393

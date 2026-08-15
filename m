Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D7126296
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786807834; cv=none; b=mhrgCtGrbcJ1svF3Kv+bPizqg1hoDXoV4wMb1WhqK2+IwyYPg+DwCBfIeQfK+oym8vXoUx1BWz1AvjISUo7w5YTeTb3bPXccNxPCUf1hPymVPDNf0J/Jl9aJeW0pCI/kGCAeWZkrkx4biaQfDBvl5pVLB4wqEsMA12cu1XV2nLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786807834; c=relaxed/simple;
	bh=qrXvf3rY4+x+c2m/VI7T/GfIapL99Z4SxsBulQXzxDA=;
	h=To:Subject:From:Message-Id:Date; b=kPJi3jrq88ByVS+PauXFi6pr1p/+y4wxHFrxBVyZYpSaDiY07NbhQilm4n5F7c7TDMFvPxwmvIQVkL/CGmSNYWyiLis1S+AX9B7ip1UzR7XYRXHOj5P9EtGZrFyl6kJtiyz+URAOW+VnKUNKrsZUrynRty2qPAbfGgSQcvlBI9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/tRyaeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/tRyaeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6B4C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786807833;
	bh=qrXvf3rY4+x+c2m/VI7T/GfIapL99Z4SxsBulQXzxDA=;
	h=To:Subject:From:Date:From;
	b=R/tRyaeXSPCTHyC/2DY1gw1Q4gRxP22C2rEK6Q6dQl04wU/92U/gyN77jIJkSBMxf
	 O6PqadaUWeM+5t2PVOzDoyZT7zzWwJV9fA/KxpkxDOB2LTPwsfLC8ye6nPZOgqyWy+
	 o58zfkS7oHAAJxcHOcgcXB/e1spR0NUPxlJQG/P46lF9GFWTmcwMKay1Ux2N384CVi
	 ObBJILK1SFo7mQfrN2zYcKaUI4+YNtQ0F/1mzJCRd/fcSE+9fjf87Hk8Byg+tkAn/A
	 mG+2fa0cTZN6vsegTlOHhkd9IogGF7UvMT8RPqKBo6siDTc7gzExWcldrV/b8mfyMV
	 EYaJvZl7o12zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC028C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680783369.28296.6994474088571239397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8debcd7fd2e82df34473c413cde5f6135275a1a188d00a0249cc0a89e1c5189d
Date: Sat, 15 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786807833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A946EC7
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716556403; cv=none; b=TV9SsTi3nFs+3wRVMyN0n8o1vdSyv9o7tUXp72k5iE1gzlkRV7ca0EfwidlMGkJHnUHZ59eRISdvMJIpcjIo25zoNwp5VAaF8kCAzvbprTXYKovDFCjGa+qqGGF1z57G9nBAJSOZ9FDgWLXrAGfMBS6+H/idcw6fjncmRzxr6LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716556403; c=relaxed/simple;
	bh=gyvSuLmllmGruQIhiblngYaafNJNDp8S4nTjUbD5F0Y=;
	h=To:Subject:From:Message-Id:Date; b=obOZEXowP+L/APJ+1ctzRBU/fBdj7LWGwgl7/NNkY5SGo0zOdcuZ9vYJeW+kTqbkXA5hUZdLvJ+9Edb2RZ+tY0ytlo84uV763oP+fn32MBOznHcSGiR0xsxSWhOa8IxHk47El/j/8T3tkhEDYkIvZME/sZ5nUenN5TGDNTy7t28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz5XojnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz5XojnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DE4C32782
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716556402;
	bh=gyvSuLmllmGruQIhiblngYaafNJNDp8S4nTjUbD5F0Y=;
	h=To:Subject:From:Date:From;
	b=Tz5XojnIz05eJAvEXgkas/gRRRl7nI3RaIaUHMnIVcVEggs7sbUoKjBL43xI7ZEN4
	 OLdN07MWP64FqL1wur06gmaPEKxRsLaJbclxfVHamt70zbIZZXhD1JWiisWDmCIcHM
	 WAMgY5R7PlE+EUBOMbYEysePmIw2G47+MxPHbuslCnwzRHIEjSNEy+jYEJFrxROCH1
	 WTrL6UAg6fntJEYpMDFU15naLDjm7dUPoRhfZHq9UAEpLGhPpzoQhBL3r/kZ2V58Bg
	 K5dUoo2Zz+2xE0967ZdqCZKRH4EZB1hXYYG6a1V/vUx8mj+2kN7yXXV/Cy3Gpwz7bw
	 ZgQdx1bdrtw2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3551C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655640278.20426.2675144855655947849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a299377dac76ff81209b1550c4032bd4168a01c85a969e97e5357f54354bc1
Date: Fri, 24 May 2024 13:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716556402

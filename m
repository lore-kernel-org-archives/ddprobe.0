Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE0A3FFAA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780644874; cv=none; b=CmlVeKg9APEqRxH9hGmLeSFTrSt6xUsqiSymbW+x5pEApweaCWR+H1LaRwPv4r/MNBFQeHtzSmnEbkNsYz5qR337tUo4ODP+X6TaJNGXpTptDXU+s4/t1xPYYUcHRMfwm1StZPvVFERXyMMQ3q4iLr/5jvj1aezz3CpLemdDSJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780644874; c=relaxed/simple;
	bh=t/2KZwRYFeaQknI/8rUia8+fjxR+i5rI9nfGn3TcrLg=;
	h=To:Subject:From:Message-Id:Date; b=Ks1TKcviHJDtaGdvxX54MGv/83J/uvA9UaNAIJC9yEKoQ5EUr+m+dN44EJwMXo//2HDeXam20FyMrHbd7EgDbiP4brNyOkA3n1QGN4gLdS1+N0Y3EL3N2Xz4LC+FHteOe+ktiZYUaWt96MugSrLeLKPETFrPY50gYaOoVAFeUNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdt2dTVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdt2dTVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8A5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780644873;
	bh=t/2KZwRYFeaQknI/8rUia8+fjxR+i5rI9nfGn3TcrLg=;
	h=To:Subject:From:Date:From;
	b=gdt2dTVWe28qjoFbUaQpWhDYH4+oaGG1srIp5IPVxBF5ZWUUwmCsLg/fd/dt5YipN
	 ljk69RywQdYZMy/yXjGEH4wxXTPDMbvQAcwTRiNh1JpmYdt127JCfYymkZlShx/TCm
	 Zyaa4q5HjnTHLVY7TtgPD+zOivklIdDwMkENwNiMBX1UjAIkD42HkhHJe3qUfvvUzb
	 oXijeEplO46ZZqEstVSt2oXW3dk+7aNBWWTU4Lr8lQguynQF5zN5NLfEqQM925AbKG
	 i9OS5I/ry8/KjZfElsMPaeqLXSaKn6oqk0/ONbp+mZU04ggGZSXPgP2l7U2scpIo1h
	 AJS5V2vtkqG3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC3BCD6E6B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064487370.998.7775922427498562014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd6625a5856cc995830cd78609dfc8e19fa329cd0ba0cb08515f29a7ebb347a
Date: Fri, 05 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780644873

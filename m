Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD261D89EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785588034; cv=none; b=TljZZk6ynQj8MuOUrNMzQk8/3rufpiLzKrURFQ29YopXJvcNue9sINCwQjqK7LLxvPsoIq5CM3m6GBqfh3MOLRizr934PaeRuObEFEIuyqOPj7rOHbdhT4+CEvBMngTDxUpWMX/jSxGYjY/kC3vRLqTsZFtyuK9wTEgjISlRLuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785588034; c=relaxed/simple;
	bh=vgg1JSj6SXzp5pngY+yq4cqnEoPGTqxvYjfbsf4CxWg=;
	h=To:Subject:From:Message-Id:Date; b=lASvJOheAWN3HuRvuzYfo9HFxgcoIs2j9GbRekKDfcSsnpxbNv2yx6vkhUejDNtijKAHOQIsagbyjabdBU3gdSSQ0WDzfAOHK0fK/tjeUvOEGDck01Rc18TR8pEK/DMYV1RHykVd9/9jMvG9mbJzCOA9em62pbbpyZSfl5//RCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8aUd5GG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8aUd5GG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F79C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785588033;
	bh=vgg1JSj6SXzp5pngY+yq4cqnEoPGTqxvYjfbsf4CxWg=;
	h=To:Subject:From:Date:From;
	b=j8aUd5GGs/sOyz6cx2U55o141+XJCx5O65oelhJVuJMch+JG7f9N2XSX0E/PrVjw8
	 NhKI8EX/30ApeTmxHToTVHHfBgBzDjdXI6SleeLdH1i2CY8XcWuIaFvj5UKYWQPt8N
	 iboeZTcj2sSs6QrfYaa6KngNWGAc3gFE5V8quPKKhvXrR0IcTYmlomIRtarG8l/urB
	 DRl+Zn7ldkWNV57n35yZ3wEl6uqK1nGBz6iQVsXi3cutz/kFbnN5muHcvK8Kw3Zujz
	 LNnm+BPLKKS3vDZjxt5YibmXzQYiFwRF0uEzgT/V+AsmJI9MplaUPP1KPvHlsyOpzw
	 sXOhJsAdkzaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF376C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558803369.28305.12550038099761332278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b30a8bb439f401d882f4d3684920665b89a757118685d151aabd4ebc966fe23
Date: Sat, 01 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785588033

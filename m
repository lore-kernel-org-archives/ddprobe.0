Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579E03655E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792416034; cv=none; b=UUNKHevsnqbizlObrixgyaZ4aGoNssJdDPvshHyjeIfgkdsa+Fe731hsyBrvByNEA2pEfKpTxPpg3nSLyGEezLmDA+c9inLtlTWrZQMjjKWCmViLh7q+Mhyo4REhicA/kvU4udqfN4gRQH8Z1CKX4hSMHIWtLwtC+Lg/TAr/R6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792416034; c=relaxed/simple;
	bh=a5p0BNrwuw5GkRSTftq8wk5LQrjy+ITd4DM7MDXszL8=;
	h=To:Subject:From:Message-Id:Date; b=akxyJIsXx+dQljM2YJ0ljcOU0H2TQdWZzJZ4qeAq9VGFOKtn1UumwqlNcg9tOLCv3LPI1tRTlue1KY3JMmjftgoU/Upk32Y0qRh2fFoM+9hX5AgQM7LJxthorI668PjGDByTTlvkCPfnmKq8TK/NfM9I9rhvhZ55jW2xFghl9J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTKx6ilR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTKx6ilR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2256C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792416034;
	bh=a5p0BNrwuw5GkRSTftq8wk5LQrjy+ITd4DM7MDXszL8=;
	h=To:Subject:From:Date:From;
	b=YTKx6ilR/qYLaDtNCA2rSH7YjKRM311r3weqM9RcIMbO+2MCko5JnxqTaLu6pGXGu
	 5F1LrsOY60sy5/piMjhiADcYZPMunV48qXms5b2G39D6Aau7GukVTInxoOxIm4MUnX
	 fvvmulLonVNd/DUv1WZuSAhivgPmRw1HPKQb4rtQr2Ze+bIZeoY95zynugIRH4BCwZ
	 WHm3Gu+rnTS4E5xw81WvANwpy1MvKGiRQZMTBlhc3bj5kKGwVO2yYp5PQNELSrJJvb
	 88SFBXla2J2/rPnDZtfRDb1NSbwqDAxTLI1aHl7++uPvo7E2qSds/XlPTRBanKNALR
	 oDmGHHa53a1jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CD0CCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241603374.22408.1439586030292300698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5464e000c60a6c7eec842183098291e2f3d108c94a8c09f598b010d3198e21
Date: Mon, 19 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792416033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B9B3E5A37
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783493315; cv=none; b=bNusB4rg8rDar9dhE37xODL9zcP7fzbYxlumnBBXq6Z5NZSv/SHWtzvZjMLe81bvMV+EFibU1jYaJ6ZS76ABGfkLbDcPlgpSwi5+Za78+zl1atXNQW+XfXACinRjiTauLnSsRAVoxX46pMASAtBnlafHkthULltqqCil83eEmkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783493315; c=relaxed/simple;
	bh=SzWd1UzYC4R6Fy2YTx4S8D0I7KNlSAh6w2d8hKaskAY=;
	h=To:Subject:From:Message-Id:Date; b=Ib0GNJakbfvRRwwSyUDxYLK9yoG93cEt1lKCvikEM5h4MCjNCdx63tS3zO5bub4vHXydm5mZekttO1CjyNJJFX5044LXvejRVEemWrEhOdjhjdpYbv/yxtMZVgAueMm7Gqn2P7ntdvpe/dnXIAHUN4fbu1YIlh7yrKtqn9mSMy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZt5+oZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZt5+oZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3F6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783493313;
	bh=SzWd1UzYC4R6Fy2YTx4S8D0I7KNlSAh6w2d8hKaskAY=;
	h=To:Subject:From:Date:From;
	b=VZt5+oZi+TTw1l9qElK/mLLn8M7LltW4ZPr0HwvwfWnb/+/rrSj+7qS7d8lAHQKaJ
	 7NvW6V58oCcMjvLftoOhfgGJIENsyFsk/xx594iJjHZobWSuXj/84uTrJN11C1D40e
	 g7nVtb3ERVvAuUOTEnqMZBveGS3UCXNsYVOa2DBixuyykDqF/NCgwFbC6OY06ljsLe
	 YkjoqRZqEd2T5OWMHfQlkTBo9pGvisskRZ1OIHmaIWc9jMWvn6WLrxIYxQ34lSVDaJ
	 Kc4qHGQbpK3uaLtaYzrOq3C+kGIw0ECZEDKsa4wy/Etpe0HiLmzeRXSDVSy4I/MxH1
	 Ic+5a5bgAcdrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D6BC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349331368.22656.16033691920466713984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a145ccfb5f614a54070acd35ce8addb5234a3ddc4bc52c4ebc4f68c886264b20
Date: Wed, 08 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783493313

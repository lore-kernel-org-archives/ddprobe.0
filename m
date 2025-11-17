Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201241DF248
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763415115; cv=none; b=rrEhsqzOkb+Dkm/M/zMZuzr1mhw6pgmcFlpTCDmX63o0SEDgQRWKszsC/wlsHtw+oMBBTYEuCpf4ao2ZuKLTw6HC7tqUdax3zQKg8hfh75tN9VD2CymNL/+5xON+lm4q5G7f5sBueNw4d6UoBlcoFtGEhGvvvcprCPwVl4kRhMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763415115; c=relaxed/simple;
	bh=1tR2/dXnf2TYxcpPMBiQ/ekbAHvwpar++GS2u2BRDuM=;
	h=To:Subject:From:Message-Id:Date; b=dH0o+ajandXmMrGI7/qzhg1QPFeuF+8fkUvM/iEuLCP/2nfQOR4AnYkTG68hju8+CAbn9AmASCCBj6132DZAgG0O747jcezKVRm0nd4iOLoVqY06996JV0BqOqxjNprtuNfL+Tra9Rvm+Z+DbdWPbIQzlQFmZtkMD6Y1IgJfsNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ead+zNM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ead+zNM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82F0C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763415113;
	bh=1tR2/dXnf2TYxcpPMBiQ/ekbAHvwpar++GS2u2BRDuM=;
	h=To:Subject:From:Date:From;
	b=ead+zNM6BRoVCVqKZaVXltgKTFu5LnRv2LNhtip3Al9/iVJsXBul5TqPugzDSt8W5
	 lno4yt2LvqKLvC3YsyOH3cQO1gpRviSATj4gNjM5B/jA8rkDwyaWr1lRbTGJC0cTHe
	 2EAi0kIgbrtx0iPT8KrHvCgaZ9Qqiofld2Fmf9j/rL3iGvDa242hakvqhUjAuYzJxH
	 bAoK44XTbyAgr4r/U30/YDLI0mvdkbntNwYKI5MO6zqm2KdhS4lVhInYzwDB3nfdpr
	 NztMyQ7Axn4DiEx5UZ2Iq2PiEN2WLD6HgY+C2OsVn6K7IM9g0ru4KcfmL5hY5SmXKp
	 2k9A28vVkNk4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A19CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341511358.15462.7309578698829431198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add5ff55b0eae5d77b16ac5026652294c6a41f4d389075e7a9883c8978a795c8
Date: Mon, 17 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763415113

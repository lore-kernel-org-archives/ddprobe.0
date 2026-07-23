Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EA33F0A86
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784794174; cv=none; b=i2dwQWJ7k6mcd2cqf+n+ML9qVtzMZNAKbeTexgiZWbvehSzZ7fRCzYgae3YRQg0FrGOnP568wcepxrP84s8J6dTtbUZVgel6mdN/8Oh1NP3j1mAdVVXrel2Pbpj/RMXXGBFDoDFRydTGkDw07LI0Lfbmje/hWjvLRwhehGklSfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784794174; c=relaxed/simple;
	bh=rv61mBFqz4t4fNS02yMiJ0OfDUPgDMC1iWUtDRZILuU=;
	h=To:Subject:From:Message-Id:Date; b=tlKWpz0RwGNyQOkvAmVaAfDtRg/7g5pJijDDLbZhFYNxkOoGYsOvcXEPKDd2UfdxAaWYj+usTX0j9fJATLs6+Di3KE+08uGaR9WLmza88u/yAljYlkCjWb6UUSoReZV6eLel4JSFqXrLpzSRhuW9MmyV7ucZ9KYwKhx1PP8Xe8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFG33h+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFG33h+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF527C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784794173;
	bh=rv61mBFqz4t4fNS02yMiJ0OfDUPgDMC1iWUtDRZILuU=;
	h=To:Subject:From:Date:From;
	b=UFG33h+LLerroxWWPbsskIzbsCwlvdHxX9flrWbzTBUgcjtvxlCFgiM/TCH+TYtXw
	 /Ghr4pjy0miOQooOX+VsHl4zg0yqlrV3IyTdyiWXWJuzHua81VOsoI1ho65R5tueuZ
	 reEDPHzXoBRevqP2ff8xDLBzq923TGSbBtMqf5a9ri7Vtuiba2lYfTuvxbXUnJcckX
	 DeuphqBW7rd+DJ+JwEbFcLNRC4hOHZ7+yRMgzqPJumupd80z3Bi7HML4xZ/kzDh1aK
	 hV3Ff2eGrKujdSqe54DAAqWhDtOLL3WNGhI59zasUleeHZoQWuTlhanVEBhSea8G0Y
	 a3oNGFCjjm/mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB2FC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479417370.5948.707593199628827597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65b0e54df1c3d72596695cae44eaf420914cbe59a949c51450858c0ab741ea4
Date: Thu, 23 Jul 2026 08:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784794173

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A553645
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741847334; cv=none; b=EZJYyPMBDNs0UvvHgZehVcV53UN2I8Xb3Jfg7gQaNkVzH43w1cz38fB7B3lJ+Q8DdlPjPbhV3jorYmlHTB3ni3eg6+mUzdhULSsRJsmIZnrVEOPLKvDlEpOtzgJWaFcXkSpfbAURsZzaUPJp1It/JRbzKCJZrNih6Vw6HpO6/7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741847334; c=relaxed/simple;
	bh=JzRKWvnRxVyFnEhQIni3OPI3TovcjEWLovnzd7z3DbI=;
	h=To:Subject:From:Message-Id:Date; b=oeAZpvghiLuUJLY60p1RytNTd1vKhRWlKyRAJQrIk2a6cd3vWqKtMtwNH1v4MF5f9PVzNg6TTASvKqctIID2uviTQHOdnhKoATKW/sAw34xtfPinBAieRI3RJYKN50iQbVLtSDge+sRl8/qdaEoq5lTnLj5GebEx7+jVhkCQdHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNJKZ1YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNJKZ1YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6318C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741847333;
	bh=JzRKWvnRxVyFnEhQIni3OPI3TovcjEWLovnzd7z3DbI=;
	h=To:Subject:From:Date:From;
	b=NNJKZ1YJQBg3j3mcyzsc3XVuOvN9wifqmCwTQYAT+A4eNIlE43LMZYafa7YQ5yC0s
	 HfJV3N0I6t0wgk9B+YFybPNzRyezAO/eEuQZsuB6ie6n3G8P962/asU+vlDuLQ28JT
	 G+/MbSyEsD4OfM+Q8rPna9vViWdxdCyOsW/Te6/QwluPiJk45U83lEKqpbAWx+cDxt
	 1C8rysKijKSlLJkNq7/cW/97ZZhcZgfytujgkjshplMi47d+7V7fKfZO2yFE5nsGT1
	 e0m+lwHGJ0aoqL0OT7llcqsRucqTVEnYyJ/icrm7YQaexp3eIjiPJw7FVqI4jO4rdl
	 hrUT953SxEBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201CC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184733358.27668.8173414495149590763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223e71863c8cdc0bd76a1efdc90f7d988406eed334c48eb00c8d84f147e209f0
Date: Thu, 13 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741847333

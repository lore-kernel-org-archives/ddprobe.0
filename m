Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD821ABD4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749301194; cv=none; b=i25yEZKJmoroxXVILA41y5JVhSU9HSQI1ipwskpQjxW3quscqEs+h6n6kn7h3fOuD3WWrXesWnxCKdM/ctF0xwe+Q3tyArYXG+b022ixzsbqN5SDWq/B5icwEHP71nCif5f/puhlb7RbhejmpFijo4hwBxSDGJFgbp4J97Fv6bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749301194; c=relaxed/simple;
	bh=6hElipvZfFNrdMdyLmb1Sb2qLte+YalBMjgr5Meswtc=;
	h=To:Subject:From:Message-Id:Date; b=gCj8TtXmPgsTFH1I3GaTSi3WOlWYIYAsSXJ8E5Nb2Q10PWbdAFsU2702VeF6J/FcdEO64V+fPBRTAiwjYrU2yKfp2lM2mlGg3aK+KKoH8gWyYpPRWKIVzIpS15Kn5EVG5th0xGiZkmdBqqZ3546YIoOQWZGyyyVJwNYdcRYapiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fce0WBZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fce0WBZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749301193;
	bh=6hElipvZfFNrdMdyLmb1Sb2qLte+YalBMjgr5Meswtc=;
	h=To:Subject:From:Date:From;
	b=fce0WBZNmyxk4gdRPEKs8NDHRAAFMcX/Ap31eV2cGokvVcEFDPRUVXuPpA+UrpAN5
	 g9z8Y13yRExCa+xvStnJ5F2NMxi27HgVStWP7MPwwcZEwVC5IL7MzB681x290quVh+
	 lg5wBcSvLc/QasUs7nvsOlwdUpVguHqd+WeIEyT3ckfdrFmApIVEtRicgJocRmRfxE
	 PBUIVAc7PQfTHvBtRDMHKx1UT6k0wdVmvuCgCquIwE3HC0dD4XHsXkZTZaMmMZDozW
	 iItwIZjHPOOwtfLkSruTWj0TMA42jDXmhDlQfOuiiMikiScfgAriewRw6bfIoLs2s+
	 BE5QkD77pqO0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9127BC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930119357.27789.9275762716011133139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879eee2b89956703b2592ce40f95aa25127ead0f607c8eeb44c572ad380d7ab5
Date: Sat, 07 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749301193

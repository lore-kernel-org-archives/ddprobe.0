Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3823417C69
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775268934; cv=none; b=eIpLcLkgqKfOljapdRhyUHsXtZGsnDhAepdGsg0Z86vn1kSxwnAAtEfk2UKuvHyWlbwMK40DFYSfGW3Q+SYvU1g1q3fA6R6AYcrB1qU/+V4MRcvhilBcIRe3JdQmtpuDPu2a/xNcUkxJr/70ihvXZ5DqQwC8hri7zTjY+DyD57E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775268934; c=relaxed/simple;
	bh=3MAZKs1g6h1YIr1FgcE2P4OURZ2ADvTWoeUXOa3+e1o=;
	h=To:Subject:From:Message-Id:Date; b=UclD1VCFxexgAnBR4Pf/YwW4ciku5MkNx2S6jo+TuBuVPwp4eXrrWdI2YsYksZdWN3E+V8XxQMrh7BfKfIcs8/e35pVeOkhGGBv6mfNRmsqWDCAUcDe4BoAKiEyfCkThP88vtamwazFbxPj8BoFNXGW6jjWpE5aZADUIVUhpip0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwCe9231; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwCe9231"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6944C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775268933;
	bh=3MAZKs1g6h1YIr1FgcE2P4OURZ2ADvTWoeUXOa3+e1o=;
	h=To:Subject:From:Date:From;
	b=AwCe9231VY2JSzazHBZWdGc96DJu5BxovIcdDtG9st+GKwEgFyfgnZEeTbHU+CCF5
	 RPiEDmpydLtmHbUjU/KoAmLezpXR/y30kBwSN6C9SiGEuBJF3nura9D4R9owY4mdtR
	 pDxcKUGQRMz8SRmaBirARts1ogwimTqhBc2QTYyL145pl6l6nSn9M1IUERyWALEHw5
	 KbJArwJeolkkRsh3+AbJZSj0ieONmYm2CJVigdqOHrbRmQP574i5Osek2lv1shq5f3
	 awkOjvqbKFl55IH1HGo8f+gpJ4pYC+XQ9VyLxakcOb1KSmsaYxcbHMLGeNYnU8Vyod
	 eTSO7PKGWVDag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ECCE88D78
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526893369.20452.11182542807558864924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cedf05392f6eb408e0f57ebd1737c697e397794c7d4c29b6fc96aa34bbce987c
Date: Sat, 04 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775268933

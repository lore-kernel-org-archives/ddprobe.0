Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F3A13AC1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756450194; cv=none; b=GLhpBeaE0cva3Y1MSZn/eHbHTcxq74wwYSjHFP3pjbARk2NEb6f51+mawaKEZ5ckLSD4wkiw5PO9olveGFeCyiU0zXUZErYqtnDv6VA6iRlV1RPA5YxqWU+xfyTaFCfLbwcQAKds7lgfaJwn0qTGmRPNh+LbG0vaY/3vlOKRI18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756450194; c=relaxed/simple;
	bh=/1zkQJXIHFu8Bd0TPUcR9V7S5p2xtLPTnhNwL18DlLk=;
	h=To:Subject:From:Message-Id:Date; b=r8ktc1505RKD2htJw+nz2/oymNqqmh0uf3kY3/hVrkC92kuFg4TtleXO6l7rKjFx7r26kmGb6hOKedTacU4YgxcGrK1ybHAVYmv66vS6TPGnHRuA65AVZt/C/vwuXNXGyWF80DQhvEulkDSSfbXovwD19gErfKlfKYWScH3jJxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA3TtrMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA3TtrMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE53C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756450193;
	bh=/1zkQJXIHFu8Bd0TPUcR9V7S5p2xtLPTnhNwL18DlLk=;
	h=To:Subject:From:Date:From;
	b=sA3TtrMRqbfbMYsbnN3J8PcRv8Ak+QhU66aIOvTM4IZw4YR4p6O1ikiw1q825lNmz
	 uhxItlu0Cm0XQ8H9QDLvxFgq8ZXYuBXG78SkoiW6y8OfZrTgM3UdxRy9AbFZwZFk/d
	 9izcS5IHFe7Xeh2XmbeRaaDVyp9GEeot9LM9sP0OM3eiC0ViIBzi9wcl8ymE9TOgkK
	 JgXPwOmOdcuBbduceMGXLuDxEc0tgKQXVVEwhlntuwNgZbjpFAOVVcmDWXGfN+m+bb
	 mq8aSnCA3Eb5DdZPn+i0hSeOEyfxsOA+b/hra19ma9dMaWbPzRbZOFI+y9+CuZBnP6
	 waExVylb7BT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92DC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645019357.17465.10653695984578692941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a5994855d4d1ce9f30e3cd72cc6582be4c069cf6933e7abe3db3c5688b0767
Date: Fri, 29 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756450193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0D72D8375
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458314; cv=none; b=tAZlxwa/A7sPOJ8EuXVbjKUldQ4E8VENEU+Ix6uYKnFwcDnfQ+RRdhlgWpwmpgAxN3eyl5Tn7rihqaleSpJeHCeMmOWP25tG1/BLejhO+mN1QpgnICeXK+d+3bucaRa2ZFAZsMJtjyad2s4LnSc6CWvD73xq9Kh7fnx2TAcfT2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458314; c=relaxed/simple;
	bh=ZCnUeMHp+Csvx2Ag/79gLXCELxQ3ijbbDAgrctVZEu4=;
	h=To:Subject:From:Message-Id:Date; b=ipp7cE9rMMFN28TwL4Kx3OmSKYhhnhiQDi/LTcn5XPojghmp0wvvyGXmUuGx15ulJZWxyuBNF54L20N88uKfX9OxiLKnvPDBB8QVE0fOy2Q/NasnZZQYtwaXypvqHqQagaqnEJYy+opguETOnD5WeQsECVzX2bgxNfn8rGT6D9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7vDN+i+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7vDN+i+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D957CC116B1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763458313;
	bh=ZCnUeMHp+Csvx2Ag/79gLXCELxQ3ijbbDAgrctVZEu4=;
	h=To:Subject:From:Date:From;
	b=V7vDN+i+xQBXWSo02C/plTAZBu6b7aYxSjdbqx8+OdoZLgpD1Mzuk8ytF0CLw6fV1
	 rkc7ekXpYfpTiRL0w8WeucYNa3ck5l6aPfDzNyLyMvw0421LT4yA1hE0QS0Mbja7RX
	 nGGTNl+MIHBAdtxfwkA8mw75QbxieXLKp/VUgZ3XsXtgIV647YPtHCoqG8t9nylXC9
	 sNjdeQiNVRjHMtiKct50WOjlqzlsAQ7qdE9abEjLHmD2+KU+Fvu3i67D2dZ6egHwr/
	 cPQV7eamXVhsEzzBIkEZ/ISbjWqU3gOYKwwC8kG61qEnoywYC41y1pnpwrGv8bwS70
	 MhwmvQcINlKBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C03CED24B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345831358.5743.3030687749442732779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725d3820b31586641dd0faa04c3e85b344f9fa31008c53a6423f62ea4ddacbcb
Date: Tue, 18 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763458313

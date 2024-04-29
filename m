Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEB77BAF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714404743; cv=none; b=EXoHN0uuCpS/W4Pe0zYWtU2vlrJ7dplQPGmxz1LilvYLdyqfbw/mqd1Mdvl3XxRK9zj39R4zM4QzmrwxOUj/SCqd7POM+TAehf04ZRgZ+6boyYdjJP7/Yf7N6CXIq6mTpWSZY7Ph8npXY5LsGc/BrwT/M2tvkJDldNsi2PwIh0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714404743; c=relaxed/simple;
	bh=lbUX8bhNf7LBrZWK5thjOmZV+a4pKfOgAgQSkbemYq0=;
	h=To:Subject:From:Message-Id:Date; b=lO15DaVIIOb/1AKCAmrieOURtpyR+Ym7M2x8OstC8/y3wsE8XdAbavYwnnrQk8fbDfCpJIzJvSU+2z8ZiW2EMTrCskekP8aVjziyc53cgyhJyjFwrh8VXd0xZ4IvKMKtqBacsDWBRHcsypmsTTZhKfTrfvQ65VZa14UMPV19t+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBO1u5SG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBO1u5SG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DDFC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714404742;
	bh=lbUX8bhNf7LBrZWK5thjOmZV+a4pKfOgAgQSkbemYq0=;
	h=To:Subject:From:Date:From;
	b=fBO1u5SGcC2TnsY7kI7qA1jyTlxq32WcXmLWDpouKXZy+VCRURRbFO7Pg66kkpcfG
	 u1vogQV608698VZQaRvycucXXWKkPkSqTba1YivDiVteU/uMCtUVEJ9fnwWBs5suvc
	 7bYm0oUIH6EGTBphax23xIfhJ80e8KD/S2VQITuXmlq9vRUm0bDSuZOkM9XLjR8z+n
	 9eJDGjcMcwUlGeP4K1/9B0kmD4FGI3sR0jIdQkxQCQfJ5CdhB7sZBmgWLteDmfH2gw
	 jKYj6hPTMPaM4JWSY4JJw+Ww/G8+IAB/m/usu/KFysvtkGcLTzZ5tRl2kw4q2nOg0b
	 zvxd06VK3xPFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43B3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440474279.12279.2582902501734380728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f94c1556b3b053013f275b2df4c09edd6293a245513360cf6ce76370f1e9a5
Date: Mon, 29 Apr 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714404742

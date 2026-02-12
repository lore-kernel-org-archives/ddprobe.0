Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291416F2F2
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770890094; cv=none; b=ZxmeBoQ992h7u/s7t1ITKH6mc7+qNhTxG2oaGQEGRlY7/wShT6nXmdHgkB2UX+1O020IzkULsSEnFmIXuJ7w/g+diWLe59matfo9lJ7MbuGJgAgkh0sNRGCsHctc6oiAF34NGiHnTKteH1+76t0D8IRNbheCRfkYUBCpw6RBjn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770890094; c=relaxed/simple;
	bh=keIqa1zC/EyVKxA3drUrOElXiy/mq9feS3iPkdXSpoo=;
	h=To:Subject:From:Message-Id:Date; b=bRRsDo+37AhGEnK18lh77VePSkYxyP92kuU10DDHp/HafRyczhkFqbTj/IJynPtAh3OVhfLGI/chG3fNMzqrBjQX0z4BM+G9liQOnAlHZXrTmy9lSssrzorf56iN2mo5Qkrv1UIaWAk+v0dyumM7cSgjcxXWormg3/XJRW6+C1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1ON4b/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1ON4b/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF842C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770890093;
	bh=keIqa1zC/EyVKxA3drUrOElXiy/mq9feS3iPkdXSpoo=;
	h=To:Subject:From:Date:From;
	b=j1ON4b/PTW6pPlZdNRLvgAAMoqhRQ3c5BsbhjO8CN8ukDkN/eKAFWjounOO7Shlpl
	 WeFpPveCZRG1CvzsAQWS6F5jZRM9T9xdB6FOX7F7fRRWChBzxr+qWVJ4Ud26FozdVQ
	 xl1uae827W/5n/NzCZfIDhAKxKX4Qsnvi1rKQULYgmKi+dhwtyn4Bb33S63ZWfDOor
	 VYYpCtZyF7+NWDHj66zP8j4W79u3jRskTKyFNAxzK06wmi779VwXn98aYHy/QRPClT
	 D9PmGxVkBYwv0kreSc0rjmN3yxzr/4UbPW4LsX6F5pvY8XyvqPaG/Sap9Tgn8D9uUV
	 jaWKSXtBTkwQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03E1EB48F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089009364.14131.4180164068461064474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf79cfc19fa02c7f1e9d374496d7af2d90a1a50b134d82d69bcc1194cddaa54
Date: Thu, 12 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770890093

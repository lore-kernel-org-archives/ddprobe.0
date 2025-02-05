Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443AA132111
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738762554; cv=none; b=AiKhHUQNUH4SsiD9sultHt1OJKXOwEX88jBvg4xchHY/EFwk/QA/HZwZV8DHkwXUg3Bi+XE93rfcIPuS4ta+Lwom1MJqs3B3ggO0sQt4o+T9w0U73wkWpPcijfo9Y1sRFnMvIfDOi87shkQtR26kcW60CWoHXclcAryZx4lc1Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738762554; c=relaxed/simple;
	bh=caAfu3z/I3MZn+cTIoBz3o1t4Rg03dFo+WTEDdeqzho=;
	h=To:Subject:From:Message-Id:Date; b=baNZaD+Y8j6XmjxR1EN8KkTGAJsb3IAz3ewMe2IxuHJERRk4j+51STOeijFORDp/80q/opk/Ek/r1LTFDjbXxPpFSscinajGWQ+A8OfXbcX9on8DoYSvqVVYcBXKaRB7U3i3ySQnz8jGDZs3B2gdQMmTYH0uplOpSIwGYd1nSvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msz7OqC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msz7OqC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFC0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738762553;
	bh=caAfu3z/I3MZn+cTIoBz3o1t4Rg03dFo+WTEDdeqzho=;
	h=To:Subject:From:Date:From;
	b=msz7OqC7CbqirqeqvpEBIxOd6C4f/d4SVWPJAYpKc5ciaUxVbmLreJ3nL41QjQERa
	 NU315ru2Y35XCl77yOv4dVEVqHjr4Oe0lWaClZTfJq/rl8FNqJVq4+mNufrGdgaNKR
	 raMp7o1zunTmOLSz1wn4gGxtQc5E3F1PATXAL9UNqHM289mnKu8jKCBUtfo4RhR2pT
	 lkd7SCKmySp/ZE5GDnVvlFKpkL8JVIbAEehj2of77VBnkTIHyWmWIcrx2viPOU3LTE
	 cHwoEq37pBPx+Dji1DvWAgSvhhXY5Cre3OPPHuxEthzzZoJxK/2aXVjuB/+ZkMf25x
	 LqBRaSjBt7QtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE72C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876255363.18363.13381339787071634100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3431f5d4fc223ceca4bac708c3b1bd127979581a38cd13d224c46758149f7a65
Date: Wed, 05 Feb 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738762553

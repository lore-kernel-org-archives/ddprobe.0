Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AB53375C2
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755898194; cv=none; b=nnEi3cKWGUNceew1WEAJ4zXRCFKr4Tc2MN47ryqqjj1rkYDdHci9mKt0rB/yiuq/87hNNrM3NASG8S224dbTg2h9nRhl7T9fse/A1jVd4BvKjgz7vYBsWev+wZ30Umr2Q0VO6IdIpsFjbxHuAle6+LFuUAzBtbjW9CoDM8T+VDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755898194; c=relaxed/simple;
	bh=Fpoz8RpLsng4oKqaBOJQwBXE494rRLRZf+sM34UFfv4=;
	h=To:Subject:From:Message-Id:Date; b=uRjnV7y2feubEDRkDnf03rba+RS0Fym2mWQagRwt9oxVMWCDRr7q+e6XDsfnVyI3KGS4DkHpwgDmsDQm9wXqvUiw4Y9bHNK2sEyYq9F9bz9I3nT01pPsbWHh5rqLcMo80LFI4lYULel4c5ERWHG7XiRrPLDU0FWYvzF6WARZhMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg6oWfmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg6oWfmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8CEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755898193;
	bh=Fpoz8RpLsng4oKqaBOJQwBXE494rRLRZf+sM34UFfv4=;
	h=To:Subject:From:Date:From;
	b=Xg6oWfmYeF9sRKKGi0tfU4e9+lqCTMnP7aBx93zsMlA0qEqvMLFOerhvpiKxw6FHd
	 hX1IBT5z5Ne67qbNEwztdvGMfDxtPxcq5/7pwcNwCkRZaYGAjL4+Sz6JDJGZnnOirB
	 +Z4VHF4GlSjUyU2F3pt3XuoL5PrJEZdEE4R4GJTXzOCF4OE/aU5A2h3LCmpCfvGJY2
	 eoP2XI0nlJMS7U2BD1S0cLFwCB4PNkU38A2FoETPD5oy6UT6U+Dpvo1MfQAnDS+RhY
	 brpDhNfQZU53Yy41G0hmPkqPmYE+imZD1z206WR4FicKPQ9K2gKdImg/MDTCehWQ72
	 tcEFcpYz1WnaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F471CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589819357.22955.2030147582287354505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0ba4355afb0d7ab7957b6e7bdfb688044f7d7a8874aa06f54851c98e0910a4
Date: Fri, 22 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755898193

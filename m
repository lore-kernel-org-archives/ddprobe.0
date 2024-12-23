Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7297DA9C
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734946554; cv=none; b=uNYva+nMBvPDaCbSS6ObED96WzRCCkHIAzZt8Rag8vtLXKaJ43EQY9hwI8SAKc8TZVRAD1A1CuKpyMyHVIE93M3nhYGAPsWv9z1GWLR26DuL7+9tPWQ1G2N2afGKBVNruW7qqfqA95yIFtYtLPLbTfja2sBOvMWOjpUFBUCTFPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734946554; c=relaxed/simple;
	bh=BKNHhXgnLha+smxpbiwdstWJ2n4xlsosso+e1rFx2u0=;
	h=To:Subject:From:Message-Id:Date; b=bPRqG5JbjmgaivUG01OikPoeVAhruw6X8FjCPR7l+SIBLNgWOyvG0PWvNpEfJoxrgC1QU3zq2kBgwiDtDCnTo31Hki9TbpOR7hrZiob6YkKgmj5OoJYedJ2MUZCSnzGZRiXl1yD/Cq1d/dddUoG7bt4fnznOOXXz1GQLLVz/Dh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ic/JrzpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ic/JrzpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF16C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734946553;
	bh=BKNHhXgnLha+smxpbiwdstWJ2n4xlsosso+e1rFx2u0=;
	h=To:Subject:From:Date:From;
	b=Ic/JrzpACqM6IfiIKdPl9AkpskW51RLC5MDaLnzqyNTDnO3SeFrgUtQdI7PMAwdDR
	 ugyncWy8pvmvIq45tkgBASn1WW+rJbSelb3o5WDHhe60B50iH0NEIoJMyvksvCTlnr
	 7GqyGvrWEYOy+ZgYusA9mOVg+q+N9RcM0V/igq35oh1Ws/79vp4gyzTg6hMkfJYb2C
	 PjUp3MRw9OlskpD5dt4W1evpT5qIFSvf776ON58RIox//45u+OIbaO0OD0dqZiWmf8
	 xXL8iGaNR47XUjYC11//k1khxpVeJxgxgpux7V+dmnwEjNk5UcHcgmiIC07E+kB8zq
	 Buw7fg5i8SVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B97E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173494655359.29442.12587397437357501012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88019174592db580cd9df7040380031fea385a68e26af69892dc033200ea40a4
Date: Mon, 23 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734946553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386CC194A6C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758605394; cv=none; b=JQYEDOQ9HeBzeQ5AklHzXT/FKulaNxRADyS95vcHSlR5Sh1dwEEcS9Zn04U+mGCPaZHxZhYGG9fl9PNYDTMSzrwOgaEuRg8FT8we8KEWrsJiRybrGuv888bv4iPe+EWvxkgXSWzRLOhdpqPQlfFWhr93lNUwvzPaYONCT5pHGUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758605394; c=relaxed/simple;
	bh=g/EpgQG1q1Df0Y8HTgI1rRn+ls96J0MuPHPohtXkkzo=;
	h=To:Subject:From:Message-Id:Date; b=qII3joOwOHIWxGf6JLezACWv/vgPgSLjHeqr1mNLAe7rrmW02zbqFIcAyLCj4F/BUO0GqxLf5bGOumo+B77zX+1MNysGI0mzp8NW11spvetqfloTA+LucNW9WFuXevmrkxSq3xWJ6FlWYh6og60p2oGZ7Ucy1LWnSV4xk1z2Mxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqOzjdvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqOzjdvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758605393;
	bh=g/EpgQG1q1Df0Y8HTgI1rRn+ls96J0MuPHPohtXkkzo=;
	h=To:Subject:From:Date:From;
	b=eqOzjdvXebNmd6zgxbDrqmS8oLUIut1dbFHJGcC16XHwKLeXHpE556z+zYBGvi0QJ
	 DbwXIbUNCRp0NsH2fTx4UN5PjfPcIXKnWVlfyQGOney5mfpK76F/E08U9djCVebU8T
	 yZIvCURBdmhVIo3igMBx6wpmJm+WXxaIbAPwBnfCmQgTApX0RjZgaWD1HtCAIyOG0J
	 UwlfOD97J7bmiQFcRVFK4JpcTw3XVa7AtLuXK+skaTUzkac2usQtV0kiFKqIRGZC1J
	 Qf/xPynqYvreVF4Ud4jbTn569mfPKxpATDcbhnjXWpjjiW2AldiR2aSZlLE0Qzcvgv
	 fRNFBzABMUPvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92291CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860539357.24460.12509098517601609071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea98bff0ad00315de7433c422037cc697af98c547e584f8710af5a36ef38d449
Date: Tue, 23 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758605393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A2138C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723942554; cv=none; b=R7V8Ao1Nazw8VP+tsN8+bJ7iMwCtzBXjyvEJ/DsYhBqo2rjSlIwQeO9xl2oYGmDuOnMOCj3LXt43fRzVC5mkf2bdRzOW95cFutcoASWWS2m3pchm6cAFUT5Bg2MZvaNAC3UY4Hv+MISKjqaIFLFb1rraNcUbHwLEXtnLHqWVSrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723942554; c=relaxed/simple;
	bh=p2PrX2majVbiZtC/PIu/5bBuio6G/s9Zm8oiKtGZSto=;
	h=To:Subject:From:Message-Id:Date; b=QwuxyRwrz+Tp8NiOzsNUQ+4iMP9SBvAsgZ6nbRDyPY9Ih7ckReih/GrtsEpO/VZAt3w6qakvFryzQo0BBfTELZg1UXcGTz3HXJf5CF9Ztn74Er4E+zuYdp3/Q89YBvDBnSDtCz3tw9mKFOl8v6z27uDsqVKBUM7h52cWl5ELa/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hh1J8dk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hh1J8dk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49ADC116B1
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723942553;
	bh=p2PrX2majVbiZtC/PIu/5bBuio6G/s9Zm8oiKtGZSto=;
	h=To:Subject:From:Date:From;
	b=Hh1J8dk2n/vhlRmlQSOyhgfmlExBIkPc+oMYp3FwlXkz1PfvZNSw5MppTWS4Xqi9i
	 t+vYJ1EK9AJ3fOOZl2/RMoQjpPQCDKlysc7OvxTksi6ZrksDqhhk6ocPjsckCNopfX
	 nQVzww8rn0QGwmHljuJUyzQN56O/WyVKiXxwn33gGB3c7+tEk/VZnAzDXzqkyibHA6
	 kf+/sWXVy8mOuObZtVvLMCZkqhd3nz1G6DP2cUySem8YNC+8qFDrO3G0Zw33LmfEDT
	 ILvI3565ZvnLn/MD6EEWZ2XTPgzjPXrKeAlSIG9Riz0Et5bzFdvwI4w1ziri0dyM/r
	 SxnFykcSmVr9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6719C531DC
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172394255362.5349.12858677687936931648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52c3e26b94a81c47ef6706ce95cd7ecb7b36a0c8896ce9082c39bded1056f36
Date: Sun, 18 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723942553

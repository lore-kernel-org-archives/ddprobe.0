Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1F4846A
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778319454; cv=none; b=TToeUr8ObklpQlLNv/88J2leZ1xlzUGjZfJPOAqUN8Xnp76z7Tt7wvHSTmkrfl8r3vRABnIi8NP113L4tF5/a+1E0recY1827V70dfoZoxBdzi4+qbiyg9FUWpR3maTKaagTct7jX/AltImvVefagrFYDyudKUXyOXjOuuXxyv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778319454; c=relaxed/simple;
	bh=E7VrGWfPss4VBa+xcf9ahmRs3HaDOLXOmgBF8oMTNyk=;
	h=To:Subject:From:Message-Id:Date; b=S6sEpRrtnP49NqdpSX3I/hHC5TgtWa323zMCOvBeUA6Yv0rv43KgZSO0qMfQZh8RJQ18HN0WbspYWidsSLtq+zLdCZCTt15c2fLQpTEbRGiNB7HeuoQrW2xQ10Fpl8c4k45MQbSkvho0Fgp8k1TPJ2jHv+Hp0822oDHuS0NBIfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orY9NrIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orY9NrIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4812EC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778319454;
	bh=E7VrGWfPss4VBa+xcf9ahmRs3HaDOLXOmgBF8oMTNyk=;
	h=To:Subject:From:Date:From;
	b=orY9NrIa+3jLl7mDiC64xgP/mDV4njt3uZOUoBQvyT9uoi4nkWMnIO2NJY2wq3aJj
	 Nxi5vSGdUlj0GPqgnYxJ7Om21jAOHEqF4FAXi12F8p2KKMQTMSitubVcx+bX17YVyn
	 A2A4TVZuupKdcycHLatYG8HNgFSBPPYj3ffYr1xzN0dRDzpicjXjOnbQgKxxKoi46E
	 qOJmA1j5w635cxSM+LXTNWGyFcgjBIKr6MnFvPVmBxEbEAxD8ddYfTzz7uLMcoLmxe
	 7yqXqTBfe9RwcvZ8C3uCiGJ9yPgPs31T6Q5jFSKPAaZ/eqClKaBYfwVnyLzZpE4t3G
	 IwIYCWFaOZSUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 038B6CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:37:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831945393.2668.7087808594570027770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5633ef0a45c27a9b48d8a026330a46171eecf7e5535af2665e3bec6962c1904e
Date: Sat, 09 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778319453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491F74AA008
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788788434; cv=none; b=iZak/ldOy+Ag4PQSSF87I3Jea4whUDOHjLAhkZgRpYfAACAszA0yx9T+alNAl1o5y0jOCUiWyx/dXfHfJ8RUOtfZ99Q1pH55BErAIBiV3LynqsFiv2DAzglVIDW/izRJbptvG8VL9j8x0K7PeB0hBFUmAuMqgy/9HeZaDwjbTOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788788434; c=relaxed/simple;
	bh=sBhGB7Sz3H7CVn4Ea8CTV/Q2BN1UXk3eS/hKVTom6aI=;
	h=To:Subject:From:Message-Id:Date; b=bGh6VLHwrI3z4kaMzkET5DupPtiQxoEem8y6KEGIlWy3v3jgHQVDgFpk1MZ1V20NlrRLDzAfQsiR1G6dAYP0NbGFWRMqWBX+ADHCKX0Wt4ZfdpGrjWTAZfQTMBps10RasDu5du8DZA4PaXQhjHzRfc0WcWKpjlmTjii7GW2I8OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heupBJ8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heupBJ8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D188CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788788433;
	bh=sBhGB7Sz3H7CVn4Ea8CTV/Q2BN1UXk3eS/hKVTom6aI=;
	h=To:Subject:From:Date:From;
	b=heupBJ8teX2ACpWBDqilkWfd+18t1tMeNTOLh5tNCHoo3Fw9dRmqyrOTw5sp4LA2E
	 atkdwo12S4Z0IeaJ90HpAG2mMNBrPVNZIsRdk2jHmWR8pDuh8pK4/b9deYzpdY2pav
	 +8WV4uzJbXvQwDkjfe5RLkFXLB1v/JVMUJ/RooKciXknGj/B2dO5vdbvavWiJKOinQ
	 FtMd6zM0fW+ro6aupJWJYAGNmDDagbfF359AAgU69qir07r5tUUEdXM3N55iSObh9U
	 SlWnEPDtGCCDlOopT2+tVL4Duxd53L1N5Vrffbpe7C6r9YC8XNbGUMekBFr5MX5D7m
	 mh5vNj8KeG1ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF8C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878843370.25968.5509560548753835654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0096fe7575229b3e72f78ae817c20c5a9fe89ea85782d8b5975a7e1217d0eb01
Date: Mon, 07 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788788433

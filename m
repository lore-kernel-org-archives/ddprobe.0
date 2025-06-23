Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256AE77111
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750659594; cv=none; b=Wp/g3EbL90MeJUesyhQLg89C+tamdqijD224n9nC1xm5/gjhh6QtEExZjji0fTTdVGxlrkGvjWfLWJwUtZgTAs12MPdd7KHSvdeOjbQMgBmT+51kL/bShYjoMdHRz6mTDu8Cks8B2R212l1AU888sr9gJD/ZKSKunltSNHR5DTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750659594; c=relaxed/simple;
	bh=RLyAUBMi1zu4/f1BE/WcawjDK9XQiz3Mb7TfrVfdRPk=;
	h=To:Subject:From:Message-Id:Date; b=MXpyIq6wXvW+QuPJJgNIA66UpJZjpaekZ4g1M1hSyRrRUHC/Emn2H1j7qH59xe2upC2fjawI9XwqMz7OcwliEiSHLMYF9N333eqLxh9BFTJi/SSp23v1sktO9KQ9EPLjwmGtTl2l9/3f6BHTRmwi+6T6M/hiYZhubxdkjYq9OUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUE32KV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUE32KV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBD7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750659593;
	bh=RLyAUBMi1zu4/f1BE/WcawjDK9XQiz3Mb7TfrVfdRPk=;
	h=To:Subject:From:Date:From;
	b=sUE32KV58KeC63ytktKl4PaBpSKOLLNtD6HBrFOMW5HFXIRinUNg16bukF+kBYBP/
	 h4u1nbXF1dRg7rFOTacNXME8n3eBa/U+gVMvEe8U2E6CDEatipUkc/IafMGWpm3lQf
	 pMNNyaEy+dRgnkSMP9pomyYGISSJhapbJnF7QQZSx+8MR+2ro3R7ACG4fIh+s97fud
	 fMqJMrHI5ugL6Ube+MVTqbqP7mszAijwJDeaYJfc2UDnNsI/ppfSUKTFXUCDW/b8Hw
	 qZCatBsCDW8dcGNKDtAhYTSkAS3LdFZ05idP8zFIdJOnb0QsJLrwM7R3Qio7AO2Zp+
	 yNDTqfmxsE9lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F723C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065959357.6532.17077934036629309484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6aa404419e6dab852ed1451777bdc700febe7ec3b7d34fc0a7442f5443d8ef4
Date: Mon, 23 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750659593

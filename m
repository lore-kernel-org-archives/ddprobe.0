Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD5331E0FA
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767582234; cv=none; b=MICEiHpQXPxU8USe/wnu2IQjsWXl0hM7dQy35nBeuHow2Z6MKTw2MilzMZPL1Ik8vuqGNgvd2aHC+e4sG1+MKBTg1mRcw1VIHNAkqwbs77iKPCv+/1f1rquXS895UK1KBSsMbByrZWaH4dMP64zvy4RmaBwXKSpmqtZ51GAwiCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767582234; c=relaxed/simple;
	bh=cl5wFqt7o0H1P5CK2kQgV6oDePiWN0wXfjNsMqnrxvw=;
	h=To:Subject:From:Message-Id:Date; b=XLIAz7LnzQZMGQYXpehMhAKdeY2+7KSxdcaCDJ++uHrRclgF4PghYt+hJAOHQFXhaQOtvZUqeBRr/S9+bIlK6L5vhGsB9k3p7GkClqbxrq6sDOh9YufQCTmFs43zmAHzxjwZb0BCnAUw0quyEQvteEXXQO8uW8RwbEmrIlL8QtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6THPQwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6THPQwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 964ACC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767582233;
	bh=cl5wFqt7o0H1P5CK2kQgV6oDePiWN0wXfjNsMqnrxvw=;
	h=To:Subject:From:Date:From;
	b=m6THPQwuEzRatacqN1ApgacWzlFFOby1CML2RF9YKzTrqDTKnBcU/mga99u2YajWa
	 7VWNqoo5HnU9mGK+HTv2xrj55P/kscWvjOqGtiomnkzWt6ZHCdkmQF9c2mikRHOU/w
	 d4IfE+yO2C5icL8PzIuSMgXPY2APvCY8Kko1JTgoR7K0lksvl3NdlTjdXhxwLihY49
	 cSjNH56ycyZH7Dd9FSXOgJu5q/frzvncJOq4JRS5BC7SyU5jK8yZI6OlKg3hhBavQF
	 Z5RxFtziW2nxnSpLl8KuCE2qSbZBttTpgqar9xhsGk7zzo/H2L1iC7dMchdCd/ed8U
	 vPdY3KJOkcCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50EC2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758223357.23668.6429318018380268022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf6bf124c6538f02a82dcb93a94199c9d4b16d4cd537d2ec13d1ce13ad6ae4f
Date: Mon, 05 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767582233

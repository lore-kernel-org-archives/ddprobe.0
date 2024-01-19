Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F293324B5E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705665497; cv=none; b=J1iCONlEmQxmPBpch7kXNjBYJ1fEK4kAk1i10yLfPIbsaOlwRxFwS0TSkeKlwoauRPRRVdDwhYVBqHbwEwif6VIDAHb5BPDtYDtpLROUKGAN2j1ABt494tlt/tkQD3KhP+fbX/z8pGlAhkuhEThsk9pxzGbAQM6DnPd06M6Gyu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705665497; c=relaxed/simple;
	bh=BflWRZ8fkTVlmMZXFZ0vOO4vbrhWeJLvk3pGEVnzFZs=;
	h=To:Subject:From:Message-Id:Date; b=ZaH2tREfeh6Ztvl8dW4pxN895T1p25+H+gHpwFMBgMhVyIs8gbDhoSDAKmg1zTC4BCkLeyunBRkqv6upXu9LGv2zmrSzQ/t7BTG9IuSD7WXRBqjPAOOjFJNYyK6QczGTPehioV1J7MY1PyBmjs9XMVizRb0hEdwv1LhGqdI0fzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K710iCH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K710iCH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749BBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705665496;
	bh=BflWRZ8fkTVlmMZXFZ0vOO4vbrhWeJLvk3pGEVnzFZs=;
	h=To:Subject:From:Date:From;
	b=K710iCH7L9lR6PFzqsSVNBvgnW5L7irJZOlR2FFUd6s3hfLOt723uj7tVQp8dA2yh
	 SGCnFwIa8F/i8A2l6Z9HlKw8ppXykyRuyc3U10TtAblli7V3wgLAJrnkN3G14TQDMm
	 Zkt2qfeWGTKKxKW39DdeMRuxSXROg5fxAqOBsYefFkQ0rmrslgrYfSu2mRYpB5fskC
	 H63h1NYKDMpLCnNCWTFw6drFBMsuWngMFvwW0KEvqyFKo3mpsZ62L/bNT7+A4uVObR
	 MKMbIqMyq9IyMv762PZkqX/oKh21OJ3spfqRH5TY14B9Pd53YJCWUBwSfiMYJmzygV
	 LOnNtQ4ZIMzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBB3C47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566549637.12741.2624910441528999756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819e67453d3d036887c2983c649e8571669b544fa9f415704f8a536cc9e96b12
Date: Fri, 19 Jan 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705665496

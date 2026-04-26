Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2977B212F89
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777174654; cv=none; b=h8kGPrEtuhMMquK4HGssIxcLIhdgc2Gktk9tfVoo8VdU0VeE9OMhNTwjNB80XVFytitkgk8H0RdLd/SA6Ii8fCOK/loIQwwKzSK7qj6GVBBqqG0yKrrvpo8R1i8GFMT8xwvMyxi1XoZcIzQ8y0XO/DXX8WA+j4SjpvNIydzGN5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777174654; c=relaxed/simple;
	bh=WTLVGAhHF7yCv1if8jpUrrtUTKRbupvtvD83bTmlhKo=;
	h=To:Subject:From:Message-Id:Date; b=Wria6VbBQWr2Yz2OwP82i5Le2ZU4OdPnb7XwL2nkR3g/DmLOGUeVykJZ5whxYjj2HcJhS1JTwwnfgNENfzE/PH6BWY0X9zJvXDk6SCO3mvkme7yAXKuHcr5bZjZQLfsCm2YGPwoYD1CXW73OJnKGw3BeLfkAiuHP5TYTTNVVIGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LW3SlYa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW3SlYa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AB1C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777174653;
	bh=WTLVGAhHF7yCv1if8jpUrrtUTKRbupvtvD83bTmlhKo=;
	h=To:Subject:From:Date:From;
	b=LW3SlYa1RXmlllnhhT/XB34u5RyJhuFW6LY1JIgje9Jt2KazTGyb3Vw5tDCvtfMS6
	 steqY9309S2T3LZtPITy2RPOXeRyydQuViJSdHKSJbmuC+XAn4S+xbphOwXWxBE7SG
	 0nqWJ0fhT66E/w0onUdMvhnBChIEoVCMUbBaUvW2unIwbvZQCmXextsJ7x7HZGPceL
	 +Lx6D64UThyqfqwPBO2VSp2ePWAcehKj23wO8vNynxiQHZe9An1oDNfsy5wPdgZ0Z/
	 NwUqMwqWrzIb0h7dhBg+ww0y6wVlZQGZDKt/mKVo+NETmbWbY4nVpTJIaxh0ZtAzgc
	 02k5EyJewHARw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF75FFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717465369.20898.2087224917747097841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abf785e4123bc5be86bec4e83f626e870da702c096db8abf53e988ea4c50e3d
Date: Sun, 26 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777174653

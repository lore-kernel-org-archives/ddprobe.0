Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289D52629D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734872754; cv=none; b=pYjjQiG1exTLnPKwmtcbcFEcl5nHNSPAGL95Y/mqbB5bbWKgffHEmuUj2n2AqK+fz09ijJshCl2qjNLXnSJ5YcggYU4UnCb6w7gKyGK5ERCguw2CUb4TSGXBdCu+1HQ7AtEwyg+b3HHb6JuNXuS5bQ06zjsASnS4diIziXz/KhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734872754; c=relaxed/simple;
	bh=JzmR9B+ijgXIDnPBAZ01raE8y+5xhO5+5TK2ltGIu18=;
	h=To:Subject:From:Message-Id:Date; b=LN3WCMD0Hat/6Mv07FrgZN1rPW2e9Vgt4vTWCyzDyiGm1+33BSEiXxKhZLcGnhIPjnoGHKeqsOHhtxChP3hrdiOBi7fN3VgkBFk6R3RgkLEdDwvBfXlc8uhi25d/dfGMYCT8HHsut/3/Fh71EYtE8pAxBjiQdrELOYZOBCd0vEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJCNZ9W/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJCNZ9W/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE0C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734872753;
	bh=JzmR9B+ijgXIDnPBAZ01raE8y+5xhO5+5TK2ltGIu18=;
	h=To:Subject:From:Date:From;
	b=EJCNZ9W/U+ugPSwP5tMqs2hYuOrS7Nmip9pduINmxrpGih2yymDWOFrnHt++40tAo
	 hJfFJv4wqJgATA+CmDBkC3c3atCbo5STZP0Q8j8catO5ASNIoAktfO5L4J+wKP+iB0
	 SPWkrBd1jaOqqZQqv+WBt9msiikP7kLI4tfCEI+Coz6u8Q5KGcqB0/3htOq74vc8q2
	 84F1cK4RtdI/mowuycr2bBnu2Zk15NEyj3Y1otIEHj2W0p1aBIx3LSO+kkF4tzKGVh
	 kn7DiGADZCwfAaOISDyKqAworzZKwo3hxwFevCr0lulsOq9DO+u+XNa/p+imtnc63Z
	 IQ40STxY7EEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D5E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487275359.14180.13352566100069709514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d655a37e2c950b27d842baa50a7a805ec9dc193755385aae3a4584a889eee7
Date: Sun, 22 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734872753

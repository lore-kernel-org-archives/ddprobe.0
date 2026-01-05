Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB4D277037
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767648833; cv=none; b=HRBddUoCJgSLKsVagPe83Cw6herRvU7ggH5yW95l0/iYgYAWy6Z/NiEnDwTa9Ta3n3Ya5VkcgP7qBk89eZizcs4LGW8d47+QrOxf24MpNwAusDCQvOaWEr1EIDDaXLsIc/qmkeWAr3a9qPJ9BNVWVGTrN6LuSngxrDckJ2fv8f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767648833; c=relaxed/simple;
	bh=tMnXVj6BlSmgfrOtTnAfSsAxO+A20FdD2c86/sH4M/c=;
	h=To:Subject:From:Message-Id:Date; b=mlcSnRAqLSBNi0spG0mEEQV+7Jf0xNdhMKhzzMTrpfMEpbpIm6L3ghD5HKBIzFTctu1DY57GsYNnSwwDrVmbZny6cCepyvrLDR14sSojpOSvA4QYuxsbviwylsbCIGAL3XdgQDBOSZMvidUW7nolmk26bTetXiPQoksrx+iFBN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtD9t0iY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtD9t0iY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C21FC19424
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767648833;
	bh=tMnXVj6BlSmgfrOtTnAfSsAxO+A20FdD2c86/sH4M/c=;
	h=To:Subject:From:Date:From;
	b=MtD9t0iYAh0xuE/If1FpqIIZug9E/X5Uualc0yQ+dK1pbm9tSbBejgdDoOcfCyf4M
	 BEJkHJnCeW+RsF7aPUPYVnp9NwLJ71BMqEC1usrTtS+WH7DHP8G5DJINktFw3eMXFG
	 cWnNyZdNr1drB5b/uYVQpOzeE01MrlhNFhpYzbh2Z1hw9ZJboEyac1dsE0ZjQOJQHL
	 onwcZpnycbXxcfeD12UdX8LpPOxGWJ0v60WZ7qekHKKVVUAKY6YCpCr+mhwN087ob0
	 Aq4REbnW1yOBw550kNdiyMNh4M856yowqeI4Zh8hSpcW6uZjdAQQg6o2D/mKhFgqrg
	 eAUiNPNoHnoLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4DCD0407
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764883357.14231.10107577035933004848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33854e2e24c0bf346106446becb340a634e14268e85a57f0a2fc2f6c5b55d781
Date: Mon, 05 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767648833

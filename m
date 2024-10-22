Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BACD1CCED5
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729631154; cv=none; b=ezNIx3tSQp2Lg/nGM5OxglfG6H+X1AcdYl1Ya5erZ/To/jFITfwLUkvziHtZWkirXwU/oyvzAdgSp1821NgsF9pjbjFrfMQZpgqo6HNTBgHZdjkVA4pjJ19odeBDXYmRyNsmZ5uQzHU4Cq2qhOMuG46XAx7kjROb2lOxJmjxND4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729631154; c=relaxed/simple;
	bh=vboz7VC64QEI1vUEhMWkTAoHhd5z2ecEThSfmLALw4o=;
	h=To:Subject:From:Message-Id:Date; b=AF+5zLspWb2p+M+n86allQZtq0IcFOJbNFKAtoY9TFtpyBeEz5gsCG2fE7sF7dsngF6W0p/idl74YX2z6KhtU1w3LXf/qTpG2SDAVQgb9BHax70OLF8keSGb8LFVdm9VSa2t/DJ4dfEhmVehOFC8a84cPYeB0GBSmRtc8q7VPRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7yecI2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7yecI2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFCFC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729631153;
	bh=vboz7VC64QEI1vUEhMWkTAoHhd5z2ecEThSfmLALw4o=;
	h=To:Subject:From:Date:From;
	b=Q7yecI2Jv4VruzSY1RBf+ko95cAqyJeCeYdEdfZRDYUlVdmwCZk+Y87XHtyqLyiEy
	 NBQr2cTSGw5wEqjWHiK17VYSLt5h8Lbt43CpCex5lzT8CSKdtZAjZ42IBrYW4zF2LX
	 pXhUamzHbOFrE6+zNoTlgvkkVxeE+YEU1GdZBGTBUoR8MBBT6SHg3Jpus6ZycVszC8
	 jbWveSZANszhpBwnZO035EfG35EQRRiC+7bBPMPiYHQ0QwppUZaFuB0ZH0NZuj01hD
	 brAk9wgCsfoCBUe06iZhZ564DTdtxbVNFaR85n2vr+msmka4arv23EjdcfJtCkb6W2
	 rjqtjBdPp8Dow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CB4CDD0F4
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172963115374.19014.15132581397944630141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ff038e233c4e669383fff6a74bd9c675c43f48a64d7c4fa5c55be56ffd7ccf
Date: Tue, 22 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729631153

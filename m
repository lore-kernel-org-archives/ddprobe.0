Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEE215C158
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773003894; cv=none; b=niew3kwj85nwkOMVb0IinYH2X3BXSn8Y81yWoUx4U0to5liCMlVSsZeRma32jQxonfWKJG/WuMyk3MCNW41N2VFMgjTOKBSDd7zGiMC36zmiWaOr3ztpAJAMwLFGsfJQFxPQ21S0xvC6r5Pljx8/arMvaLMrPfwVr+h3JVDAmJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773003894; c=relaxed/simple;
	bh=YE6xzrWWZJffp0a9deqOndIG2uma71CLbGaQsSF9EUM=;
	h=To:Subject:From:Message-Id:Date; b=LcUJZF4pBmP1D4/CaNxLWUN+FKHcWxexMYtY7dODQGDWgmGSXWWCQ4AGcrlydsZlDT4Fw+DwLZJYSObh/G+H/0Ro9Tts6Tu6gri/58zaYtk4Z36Vnn1S/LlWX/YGSG7bZI0D+iic7OOz3dsdWYlCGeOivUciQcsAY0nKb6HpV0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsdE/JXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsdE/JXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A806CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773003893;
	bh=YE6xzrWWZJffp0a9deqOndIG2uma71CLbGaQsSF9EUM=;
	h=To:Subject:From:Date:From;
	b=RsdE/JXjb6NjyLO3qe0M4VTHZLOax+x2wnVmO+O2qpOoXsP5385jldTK/z9XicIc4
	 Y3uBc/mlgfYTRGoRMi0glP0sqFI7w/milE/HXD7tZprG2Cw+Dk4eykJAYnKYDj/Mxc
	 eq/OqldwNaINodj+9jUKvlrNEM2p1gNbcAzEYV1VuS0AgmFik3+7KruDtBJ58XJlkM
	 wykRhOhDX423zE5qWu4NNUxDqchP7V9XNcbNdoo+j1Mxo7ZzUGuEPNI9sf+kl3AhCi
	 TjrxhrLOQfo9fR479bskYFPAXOcnbyfs0x+aHF2y8aW17vy0oIyetqqbFy1whP7icx
	 dv1n7eWbiF8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF5EA8543
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300389359.32090.7923739777609369320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b30d2aff1472e41c053e4bee756aec8b5880850f12c89f65ad073964d38df5
Date: Sun, 08 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773003893

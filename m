Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EDF23E35F
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787015434; cv=none; b=fNbbDFuP3bmcyEmUg9JfVP+Qo3phnqwwA6zQdbRnFzrdc1r9ZDI3FknY9Gu169yeoDjv7priDSxAMjwWGRDwyH8mfkxTri8+0Mur1P+uR/DGOELQhCBRfOjrmAfcNNq7FgfqEb5/BmOica6hprPNB7ABYHinOXXcRHkOH9+0RsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787015434; c=relaxed/simple;
	bh=E4MzWABGDHhoFoKJrWGR5+lUZSFrFVXcLar4ExB5fbk=;
	h=To:Subject:From:Message-Id:Date; b=qnrUfnaOhuSxrI45vxdP83vjVSIgyZ8Z9/wjvWAsVQjtwAcfbf4DjlgRThy9o41SuXLS37yK1sOIDVCGPPMzU+pBYqkp7u1IXUGFG7eqHzAxi32sYO6m5mL2bNei++Onf5nIGZ0V34BCJwM5UYHS1N0OyV+yDJVdDvJV4CG+T98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKFfasUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKFfasUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF54C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787015433;
	bh=E4MzWABGDHhoFoKJrWGR5+lUZSFrFVXcLar4ExB5fbk=;
	h=To:Subject:From:Date:From;
	b=BKFfasUnHFsiCD3PMwaz2qdtrH8nb+dHVDgLPj00ciWo45dA6EF2bRl0osT00d586
	 Xolm0Xi5JKGOi6+qZlH7pjZQOBkAz5FzZnVuCe5R+gxqnU6ulNDwgdoKeA02cTc/Kl
	 Bx8RqL2wO3SJMT6Gpob1niMCkJOPqoctH13WHvns5WaqW90q5FJuvIpMRrSqVFuKzl
	 pOafOkiOdxCtPGXb83q5bHVuPG/BN/ee/IKvBN2X0S+7pJSM1DLoZ00OLmEDhcD2e5
	 xHj6QCS2MuQBbHxm0ZeeCtVN5Sv2mDM5MZWbBreViUbUNC59K5f/2LBrtvJ2YdL751
	 iNCHmODSy1z/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8459C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701543374.2303.1858286253403277001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2b0797e598303561f685b87a2c4e690c895a9d257ecf3bb47f40394f63347a
Date: Tue, 18 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787015433

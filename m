Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200892367D9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779125434; cv=none; b=lw4To0LV4P+e3VVBoIDAFbc4NysYhrBjDPbdupAT73XSbN3EWlNSlTt3poYhZ5O8hBOVth4UDliLSLM5YWVqd+pxG3Dezp+h+W2S6mbZ+/njoLWXO0+ZZZJMO9/1uIP7LerIm+X2VU2YRTNx84UUO15j6BZgfYkk9SBHlYW4SaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779125434; c=relaxed/simple;
	bh=EdghAiCbPDWTZJA6dxFojr2g2u8TzCADM4xq646Kk5Y=;
	h=To:Subject:From:Message-Id:Date; b=AtJLN/fxlYRn0bPAyLw2nIiAopGVhaVh6h/0nBLwELpYwAwi1Rhm3zP2LDcEXYRe7Kij7wjjetFUllhmp0ldnrGQ1HdtTnSir/V1tCAtf8+pMS4YZMi7O2e3p30yyjXM/CK+/yKNUe4QVj/QLXBMfQ0CKVsoWUmuG7zIfOElm2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3fimSd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3fimSd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB21BC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779125433;
	bh=EdghAiCbPDWTZJA6dxFojr2g2u8TzCADM4xq646Kk5Y=;
	h=To:Subject:From:Date:From;
	b=b3fimSd/TmvGnmwPdKzPEcAYBbBfEgWyxffILLVdi90Cqcei9s43LjrEbBZ5Cttxv
	 iBXUbFzhfc/0GqW9bUrouN0m2IIKeuhCR9kvxUKDNMEh5bxJxuYWOXkpCv7j0VwHMf
	 aMoIs29Ga47NatZ4s6nYpkLzY5Cc8yzranZziWRjyWJSICRYNmUuDG0fYfpn8Cw+N2
	 RxU8p19NWCI7AlHbANwEoxFjYxw1ajmLGrw9cZPc8Q44lTeyHF5j3q84WHsXrTfqLM
	 80Xn+Xm1FgngEMJps15F0zXly7hU3IPB85raxKLlGAGHxTk7leOMp8KgO3Q0FIzCzc
	 8NN7Bnypz/SJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC79DCD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912543369.26417.11974869519122408747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadc5f8f15a90466bb5a44d05d46fda83bf5054ad889ccaba1bc7d8d2ecd1217
Date: Mon, 18 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779125433

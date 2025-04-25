Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3219D192B6D
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745609394; cv=none; b=LLYwmNYyoBOoOyflvyA1v/1LJW+fmoE+Pkes+1ABflhPdnC28oT7hiMriLlg0BgWc3kyxXS8GfXBvGP4Zb9c4IMaAI58Aqin4/+4dqX+ujtuaLPnSTKeLGkxyBlLeQhzJ3YXz0tUGeURAuMzMS/b9eiV3o7eg/tRsI9YQde/Y/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745609394; c=relaxed/simple;
	bh=CWi+CeoV1F6HL9/jvnpIEmWNYZMON3UMznH272THvbA=;
	h=To:Subject:From:Message-Id:Date; b=eSUzjXqzhXNo4vlvse2EgYB8b3kYmdieLG70ZZLC2TIV6hsTT7TK5sAaTNEQUHJPwmkaOA/iSWNrumyJ2r17+Xrnuuaa0g4qG2l6XyUT2MEYzC5nzoZJwETEGh2IeeF512tqmiMCKW8/GvsPa1kl+DhyS/mr3yqTaNpCOEgRvls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEhiavrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEhiavrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745609393;
	bh=CWi+CeoV1F6HL9/jvnpIEmWNYZMON3UMznH272THvbA=;
	h=To:Subject:From:Date:From;
	b=FEhiavrVGuR3wg25WKtjKHrxgq+6tfZ5nDlCTOf8pJJ+pCxhLFrZzzWTp+Ffn/x/C
	 r0o0wkLP8krI2pD6GrhKgwtUFK44cgBFli3vUDsCDrbTV9mKfYB7Igpv2ZXaHJ1dbL
	 TznTQFybLMCeZ2YYsmNel+I4/WXuNDWZAaLth8lWK/1GJuBfBVz9GOStbu8E4luXs6
	 ARYldrTLMEqLqyv1rDbb3epUNK5pDickPwb6KYxbMwPUh2Q+p5D7+ni8QX976srvI1
	 a359q/AMCL2CKsgGlCQi35kR3l18ILRD6GK+wfsFQWx/44BRqwoQ2haez9x8OpopJU
	 +kUUvfwzg8eXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C6CC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560939358.32396.5851414868679755309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1ab0b00cb0ed479f7f89a59832f7ecb8c0217e6d264da78b058f9444e10230
Date: Fri, 25 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745609393

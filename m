Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE422264C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755019193; cv=none; b=JA+snwVia8fqC7MWr9b//6SAeC0B+8QVdLKNPfJUNzyg+4tkhSc/377BwbMJjsW52abh6nEQx70IcV5rr2kAeYGfal5S2/ve+DnTWh6hPxo8TlFxDs9HZLzbDfvAMEcizljRGS4zyXFIUMGTevdVcnZmy7tAWw0WBdu5mqXdsl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755019193; c=relaxed/simple;
	bh=Rkxntt7dk+FupFc7qaHsMK/6g2Qd9CC9zIIXAc7TG0Q=;
	h=To:Subject:From:Message-Id:Date; b=mb33/IWY0jsgyqYzQRCwiggEGOr/dymXreZkvWThBQ8t58BplqWlm96kF6ogapzJ4ZX88G6Knf83KYcpK2ABjtgeGnoC5+fkhcDasw2XqxnPElVL9C8JKxx/3x9lfqWI6TcIQC2yxbO3Fmc+ZaP2JEQ/fLpRlujLRbuagAsGodk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOEJCZaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOEJCZaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE84C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755019193;
	bh=Rkxntt7dk+FupFc7qaHsMK/6g2Qd9CC9zIIXAc7TG0Q=;
	h=To:Subject:From:Date:From;
	b=ZOEJCZaKrwbNYCm6BcHCjAW/029GYf9Hf7aCccw5n2BPbOmelbWoBiBNMYMY/l4zt
	 H8UcOEx8fP0EZwsqaS4Qnsa/sBcIyvQYoDcZUdvxa77sAV1p5exCb98NCiQ4OEauWc
	 7rLyutnlFH2hxKiMfZL6g1kR38Adna4HlwkVH2nGIC1UAd67/BqJArH7+6fclmis5W
	 zjV9z3usPTj6NKedt8nbMHCRaoYJkDzWM8mOYAsmLqziBc01EdeJWAve6emlZZ+JMH
	 azWUFhvvkQHG2VXgoNjuyX6o/bVJORyNV2x/qZO0QLim9L/4Er/HZAI+MrF9aagndK
	 pvNHgmyF2lHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F48FC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501919364.27119.11090852667438729321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735c6473d6dd5171d6fe76a55e91c182c6499269c508daa60c80db3b865dca44
Date: Tue, 12 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755019193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F04A21D3EB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751066994; cv=none; b=b3A+oP6bMC2rsCNsiSQ8SFUto1QAz28fzeOq4sVrNRGoK9DigRwfa1qCHlod4u5jKc03JfOaWOG72euG172IPVJLLREYLMib+sxSBl9zW3HPkV7uD/jz2h1lQOW0KT8xKyg/XkaXZ9t6/EfpQ7J3acDeFJUs0VHFDtp47Dqq6uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751066994; c=relaxed/simple;
	bh=/MR//ZcRCDndCUh5uEuWavrS7NtUNSRkClE87fQrW8M=;
	h=To:Subject:From:Message-Id:Date; b=eqrCMyLlpUNXBwvltkcvJ14vCRzwaln1CT/Xs1Pa/I8aQyCTJa44dGknjE1QVY6Q40lB1Z01tov2JvrCR8+gmi3kcGpnTZwCnhn7pLDo1M9Skxhd+k+Ech4ajUtsn2PQGDTEGrjP3AS2yM7AtbDJOSXMjq1LK7f96kF+XZE5okA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5mu4A6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5mu4A6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C490EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751066993;
	bh=/MR//ZcRCDndCUh5uEuWavrS7NtUNSRkClE87fQrW8M=;
	h=To:Subject:From:Date:From;
	b=u5mu4A6uaVZgnuhfoT1MFxAiNa7Cacxj5YxEwCVX0OH2hIk4H3eVFw4OASvy6HkyU
	 PREIlweVvQidK6d9Yxmaw8VSNpkRpIrpb8w1MO7sdCNjFQmT68fipYI7j7rF2Pw+Kb
	 XwLzPynQgU0ITw700jyv4Y8fh4O12EXRIiW62t1LPV8OsnS6YKFZs03DqRVyU9XDJW
	 5INJrryp9rpE+x4Awm38FZNFfEcP0HFnB3fRdnmTF+zeKqdlMXuAnpI4Y8niDmuaBc
	 1MWHQpd58Rjv0hM6QmuDJPCCtOzcXRC9kVnSdJonLou9JL2dbqrcCD6WW7kR5hFfcy
	 Xk3pwUglbXHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D22C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106699364.26004.5792103291128890812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c4fd3204a28b55195e6ff9204041b717e4db63b176a8924c8cb1591e2ced46
Date: Fri, 27 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751066993

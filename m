Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCD44C77A9
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778691035; cv=none; b=KYPa1heIRI8Wf4s1M32HQY7ElKzBvmOt8H3Oxx+iGkxMoYUlm6rxdSyWbYnfNucuNKu1v/UBLSYg4K2UDqWcapOUvFLJs7KZY4yqbQ9Q56Ejy2+LfxP/cL167tyuyTD5awgYVTs3rYX+0Qrk9r6XjC4uEacrzWKvBk4wbIs4Umg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778691035; c=relaxed/simple;
	bh=rXM4wpsJT8GdrX8d//kOfYMXcY3XFVxXJNKu0YqKxU4=;
	h=To:Subject:From:Message-Id:Date; b=HjIWzSQuW2g05uDFSAIXs71tJMbY/IRLnbVXPfV+iEFvtP/93YuZBUYahbD6aVO+sgUBx64UlHTiD1TtI3v2Ui2E86zRGicSsgHvCNbWF6jhaOTiyTycOlEDYlIrTTykQl5ludLo7yyzEpn+Cs0ycOjOsp27W6Glpgeb0UlnZRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho1Mx5mj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho1Mx5mj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA5AC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778691033;
	bh=rXM4wpsJT8GdrX8d//kOfYMXcY3XFVxXJNKu0YqKxU4=;
	h=To:Subject:From:Date:From;
	b=ho1Mx5mjNDPoRyj1GmOlSekLqP9XgoW8NDrvPW48lVTRhPioaDBsOQi67TaIwzs0/
	 04AqQjp5Qd3lHH3cPRo8CHn1x3szm16Z82EKKmxT5qHGIgBlaY/cmK/uyKE7n8ovwN
	 edPQSt+mQqz8qKS3KWP/EwhZK0LvoGo2sVhfppwplwrgbrmthjAz7lHEvocU8WPwKh
	 tLBhvXimjtiLhgyb9p0JZEVej+DtUFasX0u65OOsxCbRnwfyGmceFFq16S/EHzpSBd
	 KxQ9UzKcEFtj15z5eSMXpbv+vcwvDruO7rbOgEHvlaDiAsZPIzOTr+dWd7j3ld+tQj
	 /ZR4FTgcqoltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA1CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869103368.4669.14186120564205506829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c31dbc9f25fd8a8bc255debdaf5ee309d3c83d6fed9ec6b77dad7e29f58788
Date: Wed, 13 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778691033

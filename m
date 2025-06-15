Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4171A7E1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749966594; cv=none; b=MkfCLHrlxwslsgB1MSdjMw5BqSzG24VTXHXuJuPJdCBNbVC/kqNOdrjDU8yGUwD5YpvxjXFPcdSMBvQV3OhHa3Xq7ssKP/yL7Hd2Fn2N+JmxVnMaH7hFlu/OLGiP0SmLZ/SlYB3NM/c6GoJyiBZGuk5q2/nb9/3OOn7tQMXmyAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749966594; c=relaxed/simple;
	bh=rR1AycGSFjIoF1lgV78/0KX6Br3Py1gIPWlI2xNmsXg=;
	h=To:Subject:From:Message-Id:Date; b=AtgWH3RSE45hGQeVWSZWKYagt2SgLuMKbLRkB159NbZ9x9r+/tVkEM4L+yqjoJfhqNplyRkkvObofXmFNYabWKGvtQT6gQQWLGqPYgc0SXoZSAb6/lIXvlUPEvVoUxIKGMU9zW1ZSe5ILiRyMwLi1QumiJGdKaP6UG9nOOxidyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeZsZlG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeZsZlG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98DAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749966593;
	bh=rR1AycGSFjIoF1lgV78/0KX6Br3Py1gIPWlI2xNmsXg=;
	h=To:Subject:From:Date:From;
	b=JeZsZlG4wvO2dCSYR/m+6efTnsEKykthTVX71y8srpUTac4gWHcBdI5amzGVORstJ
	 S0UnIcvdh7PXaOSMyo65017MX7uG8kNHYorZjuSm2mPrxPIZdzfMvx+XxIVIctIcke
	 53dRMrhN5uC2bGgx1C4x+YLBGYbc7PbxN0wK/32t5eFi/MBhgi4wGSlDDvtbLFH3ZG
	 Yahosc8zoqQK2KzNZuONvB28UtzaUummp6Hlvaskbt/1QL9Wjetx2MRbFMvax6cAm+
	 olL2uCA6iiri7C5YRl4QuTN+n6ITGwzgc4RPF6Q5TpsMRE09e0Pgbs642pG3AW8G2v
	 0GeQ1ywRR8B7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D78C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996659358.6888.1895555365157063066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e101bbf00e65a07a98cd65be3b6c0fd0bb903111c11041222c1fe6d24b8569
Date: Sun, 15 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749966593

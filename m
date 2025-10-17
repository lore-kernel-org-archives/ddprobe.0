Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C0B2AEE1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760678994; cv=none; b=LhBwoBzXTHLtI/m3nlSrIvqXJpN7r8wdZJE3q72mfD9GG96m2+8HsMIjXvMDiZ2c3IpMeLEZQn7bNh527/vH7ifZDD2riunxpoX8TdCzzbxhxZfCMSBGsNYFql7MX3+jfncaC2UmjJwJYm3GbrrqhNvFCFUmmpbpxh2iH1mNYcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760678994; c=relaxed/simple;
	bh=SPhKlb1zG5CpqANMv1nsgIosq4I2DUJ3sIJi+tt4wLM=;
	h=To:Subject:From:Message-Id:Date; b=uzE2pQwpo4kMSzCFLm9pdPOCnu7TYd4U9QNAQ+Jn1tL4PB5tSqUojwayE9cR0sHrDRhy0sDK24IqMdl/pj9Yez/HIEOqUqM0QpKTrihqU+AM42icnaAyz/JZ/+kTvW7oTTxaoXQI1LCBKLKXq37f1rkj6Sg89azC/nf4kY6XH+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fkj/Ml3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fkj/Ml3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760678993;
	bh=SPhKlb1zG5CpqANMv1nsgIosq4I2DUJ3sIJi+tt4wLM=;
	h=To:Subject:From:Date:From;
	b=Fkj/Ml3U+jjgKBvNznC7KjOnt8iKYuU5f8Y+fPphyNTBR02gA+3hvIFW8asZzod35
	 D0v1aOk0gR6QHdo/o0q3r9cpldUn7L4EF3aQ99WwvKsRyMnQfMPS0UftAyqV9GUwuH
	 bd4p3YFrOS7xpQ3+H6LuSHQ39Anlg5DDtwTcSoYV7/O32Av2toDkkSMISgOdJIJAmB
	 Nbfwnh8iBmCsR607ZPaA7ZPIKRHNHEMz4i7V0UhAxkCaQznGGYxLq3HMF5cqyLB0vP
	 jCjpMJbaEGZXedmGJ9qqq4tZ4aQ1bK2ODT2Bsa/McRH4H2h9eqKGOP2ptFtch1Osj8
	 5lHBhFviODgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050CCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067899358.28604.4299237025972079986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5356fab2f66d3b0dc6f31f1d7b02697d957e8eaf455f453d52fd20431521e5a
Date: Fri, 17 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760678993

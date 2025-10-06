Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264441B4224
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759735794; cv=none; b=h3oVfDJ5fs1AMMWFEmeJ7HrSBcJ9COutuvUUbYONnfOBUobKh6uXKaho4BWjCv0JKe92NrdiEf17eqpB0ai06maewOz7vMzNwYTlYSqllHPyVjBU4y3XvykY+vfIX01mi1mS9uF/rvgpkmWOwIh88TzQw018LXnrd/Gc5t00sTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759735794; c=relaxed/simple;
	bh=7f+70VD5FT6pWGthIT7zdm2EfrYQx8fuHmuVrO3Eg/U=;
	h=To:Subject:From:Message-Id:Date; b=JM5dgC28fhhp1h3V+1wH8rdfZ++zZNbhGFTPoquWrDu9htQFf22LuNNXBBcYpd3QrPe1n7lkRhbvQfu81B/lcgnl5mAJOhVTndMbCpflZpYzs8kvqYPRtHFGkUpjI90d5KdB6wDGkxEEu1nluofOYOjwF1r3F0h58tPBZmtdUnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF+WCE5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF+WCE5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D37C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759735793;
	bh=7f+70VD5FT6pWGthIT7zdm2EfrYQx8fuHmuVrO3Eg/U=;
	h=To:Subject:From:Date:From;
	b=HF+WCE5HosobecmXpWkPJjKB/uXFYPUUqQzd9BxWierC29w5egW6HNMjyzu2Ses7Z
	 xCi3Tx6syIplkKl3hsG9pk7ssn5beRIZC+KaRPsyaR5bkkomjDesKm6+HePpUUY7f7
	 l+B5pyKXDtYIuXCEoeiDOtuo0Gaw6If+2g/SdaI14l7qXfdCnEGql+6xzuKpqMkjc7
	 jlyKtmGnCwsBVYhtX3tBIwGe4Vm7tLZShEAhUuIcLMAK7NGN7WXjmiK2hdk8/XEnRx
	 U7j6MaQvTw/vlEG83PCp7r1Yqw5RDMf8kiRlEoN5fdvFJHENDGq9hA+aVaJMxZG6DP
	 J7t5TW58bvvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0582CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973579364.11127.18174125052789486331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274483fe256881c067d9a0364ed92c576caeed0fbe9e0b1377a22f8e137ad7fc
Date: Mon, 06 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759735793

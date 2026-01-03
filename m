Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B65224244
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767411234; cv=none; b=XWmxyfDKwQlGOjGCjFHbYpEOIdbOExz/oMRwNfXobLAx/y6An5QFHEI0x+hWOGRjUGh7uSqpraA2iRW3etMUSEtVDRBHBWrttEtRFK93a0TXmeGJpA6BAnsKSVUmVxNfWbAPaf3SgOaWh2KRNu6Cz2p/bY3DPrLg9YMKBpKCJkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767411234; c=relaxed/simple;
	bh=K0rFthnrnIvtO20nSwz/JyW+6I3SzLNqdWzMkpMI2/o=;
	h=To:Subject:From:Message-Id:Date; b=ai6FYu+6F02ayYTXIdrSoS+yznt24XXSzkyOpHra3TQ1Oh67DdwLk76vk5in3hKkh70u4VJgoqaAnDHxr1qtj15ld2N9lTWQp2tW3Ik7pxpIBjGHYvJ0nHxS7omKezjEPNYdFOXGZrsb2FrxYRVVCMtvcIuHgAef7W9/5ysTZgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgaXApxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgaXApxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0301C19421
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767411233;
	bh=K0rFthnrnIvtO20nSwz/JyW+6I3SzLNqdWzMkpMI2/o=;
	h=To:Subject:From:Date:From;
	b=KgaXApxXdDFxMrJjEd2jdYeuz2eX096lQtXoHQ4EKLG3J04yCLlPytK1j2Dvtj336
	 XjqMvYAtIyFJshvuqVM0mLRXJ10vwo0NM5KiRi6JJ8WxcAC90FzzwzuiQ9PtbOE4cl
	 e5VvrMhhKfcLARrt1QbjH1zkdSYYPr4eZmgHtTtVaNsRpE9EVwQSBvxBNDLnDBXRGJ
	 IymwUFjsp+dsLdgyLRMHZM3qdCzymmo8BIzPeFUB4J4pjZL/q5u/nKdMlQzVMo5FOP
	 LnAob2dgNoTdnCmadfZ4y5A6D3HqDHDaiN4aMWjxLEDN2I2qvjoc3VhqGpoluoRabl
	 0TcDHfc62sKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11ABFC6162
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741123362.21593.10455198786293374656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dc720d0a60df4849ea8d25b5d53ca50d282522c7dffa81dbc947d39e4bd02c
Date: Sat, 03 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767411233

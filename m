Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583416B3B8
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722926154; cv=none; b=Vgp8oGIFegd9jDFc9HP1TyMmKTWXOaxjbj4BIfpl5wew1sSi9Uxz3xppDOEEE8tjdsfiNBVy5ou2SjW6NhjYDD5UK3sXpgHaaYt0igR4Fuvgrj1tEyv6cJqrlfCi+AP7A/I4Cz7syGKw1Phu8LKh6EbiJiDCYjuXpYjgwDiImVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722926154; c=relaxed/simple;
	bh=qtQgt57AFEYV9A4sggEZQmf3huyPoOYCriFNsmCA8Jw=;
	h=To:Subject:From:Message-Id:Date; b=OLDZ4PFDTt98S9om2QWpz2HJ6DY4P2+JZUsO7eH0TJ6GWJH3Zw+AJdXCwdrM89cqNMNefpEtR72aWg49udSldvWgHpK7RXpxyPM6gbD38wHgjMvO7r/gioJ7wbPQBc5se/TT9Eb+BxoC3e0pvaQNfdjjrQPKV3N8T91zixdjtuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpB3OORy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpB3OORy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD84BC4AF10
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722926153;
	bh=qtQgt57AFEYV9A4sggEZQmf3huyPoOYCriFNsmCA8Jw=;
	h=To:Subject:From:Date:From;
	b=HpB3OORyAzp9uF6Z9gsUdLQ/GrsAtLMOiJj8ttSjxK6hkp0CZJ5RHOdRxrJmsAv/K
	 NZ/oO2NM0Pk3HoPQxVWbABTmnpuvK+z/uCbfPGF73hTgit+UVYcRcL40hgvfqTQHJF
	 qq1ZJ6TngM5riStXfDHbq7uSNRAIwAxomJn3gXLEZQAQnLNf7ngqZ2iA2ccf9DNzw7
	 1bBfF+10xpn9ObdDMKmhbxFncjdY52dNMCnEy6c4xizu2s+szQMogmGgEKy8vObIN6
	 5yVj3q1+0DcpFm4gCxATQgO1btyxcqhpgo5a++31YkqzvdrrlcbMTbCBQiUF1Bi1NM
	 v7kx7D8h679ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9519AC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292615359.21299.14590923026900503085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3b8e97fff2e449fc4913cf86475485ae940b93a1f1c02f51c94fb0547839f3
Date: Tue, 06 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722926153

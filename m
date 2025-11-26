Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7A7305E2F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764125574; cv=none; b=dkvBGjAErgCspI1nDNASgAbil+Cw3dFTEinJlIl6t9c86oOjsOwBme24dH3q3Mf0vyUmegPstMqUCFQFqazd5D5enRqdu4gOHEA9geyjI5Z5p0kwL9uu3u6JxvlwEBXSrmFgIx78nUjTvWAmXoJIqqOiM8FwlkiB2KZkI2soi28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764125574; c=relaxed/simple;
	bh=KwyMhYJ6EqTnZRmlhoiNh2EBAR07y28V9l8Vx9Qox18=;
	h=To:Subject:From:Message-Id:Date; b=Aa9oMKnqcV/VP6oIOU4saWTpVz42fIQAZ6YBhvFE+DF0BJEGCqpNrTLa3vmbcQlpImFtQtxvpZ/4yazBJZZcJTzVzHbzafx2Zfb6ZtPGTIqbE76Jxdoca5uGL+FrRxT4MjRR9+sTIc/+liwikJY61SS703L7N4kMt8/2zV8K0rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JH6GGdDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JH6GGdDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCE1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764125573;
	bh=KwyMhYJ6EqTnZRmlhoiNh2EBAR07y28V9l8Vx9Qox18=;
	h=To:Subject:From:Date:From;
	b=JH6GGdDjPr34i5INvIp8gwIVV6w3NFIE9QcrDOZ8KHTJxrJMZKeQC29ttFPQIHFgk
	 yGm5M64KtuaGFBj9ZaB0BYvxb1kPjvtOF6x6kLig2gYdqxAEwyQn6RI3xM4jZmVwiQ
	 b3+tRstNcGoNrnAIbq7pFz8m2B+vIByMT2MJmkIgFhRFvmq7mzHKp6UgIWUxvWE8sG
	 BZawkop5ucvKKc3Ex8UIxd6qqCEUuPSWPFFjA+hIb2skD6dW8KjI2jZo8czj7JWx4O
	 BDuUVPwarEJm+EzQcFXaNFnvoj/H9koGoGrbLs3glidzmjw1hLkXqGsvelyLcJXJrI
	 2afvrq8YWdq5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987D7D1036F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412557361.30100.7988375929197346526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cd9b5b775ef2bd7ccbea8ccb03c6465be79ca09c1738138e8eb3f20fb58fa6
Date: Wed, 26 Nov 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764125573

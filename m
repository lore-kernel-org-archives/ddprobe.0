Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDCB322B
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744008595; cv=none; b=jT7Fy+3nF6f2l3ciZI+vwM6lcx8ODe2Xja9v7UYKjxs8ZlHg60PM6xl9A7wSyHZOXjEnQU8fISmHZSsD4vbWvGva2s4AAUD8rBYmGcQd5gyPW1RcVKfBbPGj6eKLCX4U4vDBChESJkaG13+wf4c/5gK0uUuP8w4U+W4qRWpTWiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744008595; c=relaxed/simple;
	bh=aqO3euc7CmlUHuDvkhfb9g3WIg3ua7Fdsj20F7BmaBk=;
	h=To:Subject:From:Message-Id:Date; b=RqiCTn2gQBoGv79/rsyFGvxyku0JInh6ZRQUAwCACN816yYNlsRaYgc3ihqhIJUJ3aL+FJPfTXmRN+QTOY9rXUdmYgwD668s0QdgaoN4dAz1gtZskzUZlKrbGubM2QUiDN2dSnLH164aWXE1LjjpxKYVVwwVp2XzKfB+s/QCkD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xvagv6en; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xvagv6en"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C90C4CEE8
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744008593;
	bh=aqO3euc7CmlUHuDvkhfb9g3WIg3ua7Fdsj20F7BmaBk=;
	h=To:Subject:From:Date:From;
	b=Xvagv6enet6by2nr2/Tjjp6BpRGvKsD6ctcx2JNq28P4QSOBo6/ZicqkXATNpGF7r
	 zGEiwyL9RtvuvB12+keGqZ4ONlmjaWo+sIdLW5uR5aHw7+EXjTJ06t62twfNRMZn3e
	 OqmXDZQzJZkWEz4H5Rw9LDITxnx0iGZ8ak4/hKYS33kvfALEUi5yVH4DNkTOD+mBaV
	 oZ7wHcceNcVr7IVVAoJuQTwCGOz8ft6cm4pTYzGW4xVD1DSn00KeBcX+NNCv3LEEMT
	 3qGqShHgs2r7zAI+kvkHB4NxtVgkRoOnfdVBGq3r9ohCK7OQA7hl88g8TwSasWsb5l
	 R8e3oA0kK1WCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A168CC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400859365.21992.13700770520713990200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72cf076e189e92ee39bc6cf6cbb4eae98bd24ebbeafa65d12f92e94652292cf
Date: Mon, 07 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744008593

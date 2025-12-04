Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541D623D7D8
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764822174; cv=none; b=SlEAg1cyVYUeEt704oXmCUDFm47RFaZwPgRD1zBxkRkf/jfOWxwirioHclbn4Ht+k3DmoaCw0kpJ6OD0LYGJB4tw2Z+HjareYL4bXwHD6TR8MbKzSKGra3tfF6e4kv4QdXyMW/tIOx1cJJelntkjNj+fYzF5rh8J9N6gXGVWpJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764822174; c=relaxed/simple;
	bh=6fhGOddDG7Ldo5ijaw26P5tJwl7wsmUen0HyiShfLcA=;
	h=To:Subject:From:Message-Id:Date; b=ZHpAJ8QpR7dfJkClfirw96CzjRyRQMtiqT1kFwoFADQkOlZmfyvd1wnQz4lScG/Rpa33NjvFBLkHbyyc2BxZBYK5EpAFWENzWBVI/YSOPi5GwTWeNorxt4fW+paNbSltIg4niL+FEHH7UKbGUJNigdtFn9TscyUpIOU/a1nwi7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FE9Ke0zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FE9Ke0zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CC6C116D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764822173;
	bh=6fhGOddDG7Ldo5ijaw26P5tJwl7wsmUen0HyiShfLcA=;
	h=To:Subject:From:Date:From;
	b=FE9Ke0zVm/n/fQAHV9RaRmtDBzDYx6KtSSDWBUw0Ek9iJh9B14dMMzfLRtSSBJBmt
	 cFfJ/KH/TqZjqB/1uDbQ3VJneJN2OQqG5+tDughUWAxCH733M74CPL1QjRgXDuZhWp
	 01Z7eKkPliM6jLKquN32ezPtnw93ppGV0Eq+95Kt/n8EXl7QlKJ+Mr3f03t4+uUu/c
	 WUxEgYITh6Vgs05lrIl8GqQep65Q7I8UExrp9/cJ8zrWRp8fXnLLVC6uF+/64Cesh/
	 avqi+3C7rOAaHulJq/LsuUV/mAGgBcCNU7xIdUEkoGhtk05IZ30CO6pjYVFglPJHB8
	 xDjcaaKHChsiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A706ED1CDD0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482217361.15074.16050220496090022261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8c35d2919bf6697d20284029ee2b0ac4bcaa3f35784fac92db531d887a62d7
Date: Thu, 04 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764822173

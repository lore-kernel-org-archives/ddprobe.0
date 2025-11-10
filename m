Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188242BE7B8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762817394; cv=none; b=Ozd64mIX0pcLkglvnkDsw6r0bY8lS8Kv3toOq9yid1AJkt52AMXy6OxRe8jO5nnSGc/lkvKsMo1xsyLL8TyIW1pqMTaObNBHkvVeqCn3Tys7g34SKBuZnxWIG/kCbfEuulcr1Yket9xdIBA6Qlbnq6vWaHqygCEkKuCiempv1ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762817394; c=relaxed/simple;
	bh=V0NEL1LkSVb63dsNDVKTmChEBxl6WasgFkWFqNmLh4U=;
	h=To:Subject:From:Message-Id:Date; b=SGvqNtbk/fCxSPw1iOWU+gaLfRxDclCl/tttOTGzLgxfljGgrHph4FvFjqY4081aQ7J9MMDoAcvCzXdJa70ECMWv50hk8vMja8w4Q9/Rc9uw/8CRvCgwBIdZatQqPw3McI2gE3HpiF/iz4dn0rWyJNIETNwV5M0gp8qK8VL38AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6WhVd9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6WhVd9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65AAC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762817393;
	bh=V0NEL1LkSVb63dsNDVKTmChEBxl6WasgFkWFqNmLh4U=;
	h=To:Subject:From:Date:From;
	b=j6WhVd9wFm67yEPzyiE/BCEAw/9UOTxICQ36xHBzzF2zsVui45DEQDgAvlzPX4G4k
	 A4XuLYMQzpqLq9sDoakSoYga4DbeyOlWYAS5f80I14p+SLybZDoICKK8hZ5jizLzu7
	 pG+m6qIzOd8pq7NhmjAGCcAvuL0ZvHtoyPlZxjq80eYGLm81SaJ3k37r8FAnY0zqYJ
	 LRsgwTeaL6PpV7kvB8YHfnMEbhCrguYjm+/IIwBn3KzFlwwv3pXnv5L+aY8K2cEaeH
	 Xv+LMmcVYiW1u0nOJzYkfddaezvyybVrI/EAbdKr9BfYQ+OoOt4j51EHRkW7yAAUes
	 sbeqqj3Q9mNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F08CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281739361.29592.6484245417640219199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685b71455dd330b23b81232dde708aa390814790e38a13e401f268b1b3329986
Date: Mon, 10 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762817393

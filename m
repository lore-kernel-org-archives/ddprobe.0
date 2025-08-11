Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279AD213248
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754899794; cv=none; b=tlQEZTF310j8xLUvQ9QPXP9K6MR5OL8lyVJfVBI+EgsqFr+JJBcaLbab9kanuvhhX8MFiJcZzSU2eBqOwSAphOdVidbO1Qg466BiV9CMDV5pspg4Z6KVKJoa6jLe/LAzGJuKufXM3Gi9DifOGYwGLPzYSHcXgR6O9FGTX2cn1Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754899794; c=relaxed/simple;
	bh=jiQRia64FFkwCHEkc+8/60ROdF674oUG/bYheEw2Sy4=;
	h=To:Subject:From:Message-Id:Date; b=jfcELrEqaNJ/q2VfkVOCsKbF2lUMg6bNGLF4vrkr9gYsBttJQTb+KOro4c+SR5fjr4TCUF1xfiWh7RDR+Pz74j7qnKi8fD9pk1qxzlM9MDZt8pZU2w12JsrmXG+8ugWBJCAFLjISBo0CZiFUbv15l+2FDAvJh8DkYqXNaFsnna4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnhUZejA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnhUZejA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B1C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754899793;
	bh=jiQRia64FFkwCHEkc+8/60ROdF674oUG/bYheEw2Sy4=;
	h=To:Subject:From:Date:From;
	b=BnhUZejAL7VzQQbzGrGiQHeOSrjJ9aoK8M5UaadA0BgqdJPRJcNaf8/EqoUoqIyhK
	 31kFcUgwjwbOCqpkXfJv3j582hJ7CVCWLl7hgqnJxsuusecSX/qCdNDM08tkObORnt
	 2/aBY9exC4ufxZwjN0/hS8oiKr/kF/PTWiHK8hrwxs+c/ijjUOsAAaxZDgcTuZdXJR
	 SxPQbOJl/nBXKK72kf3jx7YIeOHU7xFH6GD42IlaOlo7Aj4v+OPG66AnWarTNLxSOq
	 47LXqQsIeuuBTVeUuqQBGPRthMOBRrcnaMrzf7iOgv49MXeH/BQq8KkNUCtXGJJFA/
	 62F4VKcITY83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD2C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489979357.16085.3842348430643562314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7628c9a56a176dc727b6d1d2dcab4c0cf788b5a2c9d6cf2eaf00d308da353305
Date: Mon, 11 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754899793

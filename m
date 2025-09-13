Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B7A2DC783
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757768394; cv=none; b=mOq85x4qrK/+1TLPFh+RNa9GM4vZgnf9UqB7BQRETbR8vWTteEeTFB/zRp4AzE5x2rL0AM+SCzaNsWrjcg+WtjIh+KlvPXqDPFkePWgWgRqkUBjnIHN9SrFMnA3avrPJBVDnOLdWufft1tjlLVve6VaIdEf6ZyWUA2CfsFUrqQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757768394; c=relaxed/simple;
	bh=oEABhW2tAmx/gruILermr9RfeW4DRYbLtZGuUqysHUE=;
	h=To:Subject:From:Message-Id:Date; b=XVdB75xh9O2J8Bk62eUwWtwYWKMiImPauIi44DaV8v988U+4yByYUk0aisNdQn2sIQBtjca1z1BecM6ufjqnqtryNZUvNzZvBVhRip72TKrQ0p/8vsWT+rJUUjx51qnYtvlrJu8R/TrZGkeRyqvPSIJoKWJKU84WzzCkXvvC7Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1HIZcWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1HIZcWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C3BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757768393;
	bh=oEABhW2tAmx/gruILermr9RfeW4DRYbLtZGuUqysHUE=;
	h=To:Subject:From:Date:From;
	b=j1HIZcWeAD9JUzskpVUOAHqPC8INSdPd4PoM4+wybRmbmJZBsFRtz2nf9/ZtDJ2jn
	 geFmXxdZHonMpvCPLZJcDyuHOh4vV3sUp5bnblg7LktXh6iZViWkmt1rfA9LpTDfD7
	 xB5O+dm6gQFvrGthnJ+Y1lzagdQd4mkVsB5iNK9Y1AT3CHiBv/LuHpiZ6RJdeWPoD9
	 7KzU3wOLlkXhr4z5drnO6qG8NLmN1WtLmwF1dAQizT5cCoH/4EP6SFlkbeCD2L/Ltj
	 8Sob+I2JA3aeGVKy/7yjOu5zhtEyrNHLcHcGLTTX78aEu5nMFAlzBDFXpefcXU/ZPi
	 K/WVbz6ypzgew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C2CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776839357.24097.6754105602432886819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71351917e0ccb309890f6257242698573d1341a5a653d9baa0216186ecf932e5
Date: Sat, 13 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757768393

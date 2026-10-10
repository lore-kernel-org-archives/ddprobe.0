Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD39204C31
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791613834; cv=none; b=YNYR7xiGmAJbZw4JgJyUWvQD3MoZ4YO7pklnI2QXgJR66WNShsRQxCB+L83sHVFZ7EtQnFyiSoVWZcqedG5DqZz3v9WbT6wmcPlDXcQjL+MaG052KulRzONn/CwV9vAgX7DbkN9v330V9MLNnzD71Mr+/3/l1eD2rWnIZ21lhxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791613834; c=relaxed/simple;
	bh=MF7xODH5AF+8vbSeJG/e4tOkXSiZHjlSeB5fQTU6ZX4=;
	h=To:Subject:From:Message-Id:Date; b=hZ52xO/2DnEZlQH00m2VCAW5lQtBqAFQnUMUB19Abr02nGCBYTeRz6L8Kijyn9507lBMuC4AJ78I5hduzV8LJIHS1wnFHxz68Xq3gbvEedmCitE5VUd5MS1HgF5vuCzXoW8kw2kuSEPPJ8Cxhh4HjHy9qnQFXjTTZfuweA7x1IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCnedfKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCnedfKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0901C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791613833;
	bh=MF7xODH5AF+8vbSeJG/e4tOkXSiZHjlSeB5fQTU6ZX4=;
	h=To:Subject:From:Date:From;
	b=hCnedfKsKX558DNA+toT0cMNwk4ryzOzOtF9MFlTOPMTqrgtcW3jm4Lzz+x24XhM6
	 QO7nGnmHfPOQdv3uZwxj/7LqhSZ0w9gA0FkcGKADwu/m8RyEhx4CkdS7fJdzhbS98z
	 2Eo9SPk423E3E1ZT08d/y1g32TKuIdclJTCvBzC/ehXIrk+jUPB1NoXyFGJXNTTF2/
	 iWNy5K+Kc427yD3PziNGcLR6gXvirHdZIDfKxnMK2UhG3fzZ7KGHmqmn4e/nqsVHKR
	 +Hx8SCZTetJhMDricJpGRq5kUpe/yPwRNQa42IE3gXK8MNRqCuFVRhZgSiCxqPJpLc
	 Omh9Hk/HC1yvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3DDCA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161383368.3812.17343747349747281940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7824c1891957030bc460bfb95990620e5e1f22f8c1791010204ea1d168307e33
Date: Sat, 10 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791613833

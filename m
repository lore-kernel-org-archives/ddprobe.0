Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B449186294
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718628503; cv=none; b=BcxgejCPeHrvbcP5/aBpVzFJO/ZoAHtd3n1oQq/E3Rh23TzL35+/AQO+am/3z5/6x7gkyr0QMvF6Ttn2IOzPPdfKzMI+hdfRyazgJ59hx7giDcB39GcAZEP3Yu9efUW1Ca3Xkj/zgXTRjd8wmF050wO/kIlyKKi1o0ucyBVlP7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718628503; c=relaxed/simple;
	bh=/jLDOJhxDQCEtCUdyhnJ2gTLzFgNqgYRm9+k4a2QmBk=;
	h=To:Subject:From:Message-Id:Date; b=sTWlTtqrQuF23EjVApzEaw1gIv6ZPvLBr1dRdNQSGLT/0fFY0U2Y/sgY4N24L7o93kwuxgPUPCiddUkmVL3O4ILb3t4rR64/VQa0y9/UmRaVTjTRAesMhRX7YIgcRU0IuI5Bx1k9z6+Patyvl3mao2aNjOqNt0cbUz5IFWeWlMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMXLB6mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMXLB6mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDFBCC4AF1D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718628503;
	bh=/jLDOJhxDQCEtCUdyhnJ2gTLzFgNqgYRm9+k4a2QmBk=;
	h=To:Subject:From:Date:From;
	b=ZMXLB6mOdsiCXg5n+9aZTHtnNeBJUMxZ55lhXjzLq3JA7zv1PcZ6SnQfZDMFsKhqW
	 UqD/6dMSPlp+U30zLnVddY5uFL6/0EYDP+R7hgYPU3PnPE6g4N4iU8250TBUfuu8sz
	 c2tNkG9ORDbyK9o4DBApxuXVdw1+yGiYwv50LoNAywokYtm/yKQxgitA4qf3PqvAae
	 9o0iJiQU5MUlOaWvWajdMBi3jZr3SXVjUxoFoYHELfGAsQTjFZJ+wTNYsKKl6w8DHV
	 TwANgQ3YxFLRzg9gAA3Tvd5XRXcNOBoDMTHU9xbQVCWLfNPQR8K5hjk9zKUsiKE8qp
	 +JL374EjtwTQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2878C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862850285.3724.2494693617596200279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f6e651e031f4443e537c0ee31445d8ba8995d37b1dda84bd16c408163ed1a8
Date: Mon, 17 Jun 2024 12:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718628502

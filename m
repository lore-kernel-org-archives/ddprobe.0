Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204F71D0F64
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727901954; cv=none; b=D5K8/kVO+b9XNLPzuZ1HN82rL2Il7/wyXKUax9b4fpuHeJXTy9K/INYh7MBzExfYo/leWLj0OwYsb7Z/9MJNSTX1KPAfRvkOTy/6eZoJMmS0eIhrrf8AxMGvwFqVPqeSAxS+GUVpphg4dFCATtVV0LePsZGv7tdifeQOOuqH1wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727901954; c=relaxed/simple;
	bh=3hgXm4GQP6APiNlHr3TNr+id4BL+YWQdTaLy1aMOalc=;
	h=To:Subject:From:Message-Id:Date; b=eZmAo/muVce1sq7gSqqNyKJ54HsNR61MiHZNIm5jVLdBBRjLDtzlRJqvJueozY1g6ytkEIZgNXsfDSd6spUJUbekq8KOcuHFehdWZe+UucRZS4BR0gXa5x3ZoSLHzROsg5XsLFbPPh4NS2/sx1sVa9Z743W1Boz9Oj0kzmzTzEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skMb+l34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skMb+l34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A20C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727901953;
	bh=3hgXm4GQP6APiNlHr3TNr+id4BL+YWQdTaLy1aMOalc=;
	h=To:Subject:From:Date:From;
	b=skMb+l34iOlhbddcU9GRZhujAVZKv7qgfF8/fVfl8nBrhLPwER0L1pzT1Md/buYbA
	 RJysBrsuIDeMVoeZF4rOCb+qh76veUxvf2yuvLtX5y59QqlOM4hpPCKZI1QPmusJoS
	 LLtVlEb7XYuJBmJavk+Oph0P1JcWy0sZAAvuPo8Lifbv1WnzqlizuLoDSOuImknn8l
	 MQHO8euoKXcjS+OH54RJLMrVQfCpR/NOjHlZmAEPGKr5nTsj4ffxy3Z7NM2fSQG7yp
	 FrZqB29O9lWNSJ4MquWLiuZHIOvO6qIiOERJDXQaG07YjcPLYxJtDzLV7KJwENHTvW
	 nTDHUKoqVeovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE54CF31B9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790195362.29057.9297396212223558997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa14ef3ec6c2598ac443ddeda19a10a4a0b750749b4cb61597e8c4a7eb79c4e5
Date: Wed, 02 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727901953

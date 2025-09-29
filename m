Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3355A2BE7DD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759128594; cv=none; b=UtFbHTe4D/7GIBgPlToSW8KDORJ4mjx22/OvVqxQyIZRu7XviUSziQX7HyzRw6rOgJfBcPf3MGbDhwJvHyu/W8mibUnmRi/SJlIzkDN14N/pjfqMup4IPAZnLTz8Sb0wLs8HYK7ZzkxY/1bbuTDVLhaGWpPl2xSn+tZFqIFLwTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759128594; c=relaxed/simple;
	bh=sJWArXAyJ32gjY97wcKqdithqknKFAkLX2SdeiYBbdI=;
	h=To:Subject:From:Message-Id:Date; b=EpeGs94+c5MQrFfI57Y7tB9+KmV5C8vOlVWS7TXbGgCTXSsT5GM3SosNzLWqov3jfJHGblBHLjxRiVpu/sq0zxMkKd3GEzSyoeAlgiNigwXoOP7jVyOT5DD+PLmjjCUfrlYOTBPod3IT7uA8NSGfv9Am/qyZ2W8lrP8BLSnxor0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUU7Q4Kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUU7Q4Kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D6C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759128593;
	bh=sJWArXAyJ32gjY97wcKqdithqknKFAkLX2SdeiYBbdI=;
	h=To:Subject:From:Date:From;
	b=MUU7Q4Kv2rGa6WsW4SlJDenGriSzsJA0uibk4Q/jTR3JgJ+8XTnPUc0ARunpXtS+r
	 fs7TEsd/K0pPuJ2nhJqoY4nRii3bjohd2Rfro3hyAvMpXL3JzUMnyp5ToOuPebvcsS
	 yvR5BHbav549//9I2+Y1baO/4TBFiufs5Z8cugajaWM0GyS5iJmVjP7IHxF6mMG7ht
	 xl1XP2OYCfANtPIBe+ap30i731ROLDTChOo4YsQyJ+ql4v/fJqB4Sf6qk5bD9BYFdo
	 tkl7Trg76mgAEF+937glnxIFnmyPdLubTR9noFjTl1NQ9yBL0coe/SjhQOxia18aBJ
	 cr7VEHjsC2D7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91550CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912859358.1081.9422418445037858571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131c20ac0f1987629d982f32a250ecca16c2bc7ed045c1619d3370c5b3264b06
Date: Mon, 29 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759128593

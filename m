Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58E512CDBE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782685114; cv=none; b=gQHa9j6XMKeHa8jKL6IjfVS5wZO+11N7i4ZqY03i3IIHu6XaGfHC7arycf0ZXV4DuMKHIYynojmimwv6w89GwuhY+jemgOK/BkRhKizsm1tLKlzXoidb+cTQsMxMQsXxd8pVUbtU2HeGH39c9pzEHo2C+2TlAXwLYSgIhmzWsRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782685114; c=relaxed/simple;
	bh=CjTmYuDuoLOac4HBsKs0CqpaBEubVerNrcBP7/8s2zY=;
	h=To:Subject:From:Message-Id:Date; b=AwFBHSMgwFlWzydZIUFkS+lHLxDbcT0/roJJljRer8pmjZM2wotrgCZVnn07dcAU2WUkg28o/O+BElw2cWvzbN7EGRuhfFvScJAhqbQgqLffJlQJ7Q4TdiHStopWN0Z5594HV4jusSK3PPp9h+7rdo15EnVjnUYdpxmVs7dsqgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf8NVOQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf8NVOQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA430C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782685113;
	bh=CjTmYuDuoLOac4HBsKs0CqpaBEubVerNrcBP7/8s2zY=;
	h=To:Subject:From:Date:From;
	b=Hf8NVOQ0ArkJ8cc+3LT+5IQOSX7cHneqGbE40x6pjsQ55aeE4Fe+cCx/ZQnJURHDg
	 udNIVsTseHFWBOP1xGyJ1gK4IVAsNmdYGqEP8LH9Pvrcel1fBvTsGE8AlnZl7uxSOt
	 RWbnoL+2DlAHZx86EPZucMynZnm6giWvz8dNaeO1DgaWyjqdCrFDBI1TXh7IowUYs9
	 O2bvAbJx5v+IEaXg8YPjKhXKzy+xAyWKJpDsZl894CioJaDNoEN3pwxdC+bKZdx589
	 PGP+pPRqbKJBXF08QuUREOlDcD1/hdQo9nR61DoRXtD780ngbECT5wdWHJp4oWZir5
	 nItTHyKAWTgmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57FAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268511371.14878.276194604662455222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2544aa43bf173685f5e094c32c2e8ba79ff977bbad026397b3cc142b75a9b5c9
Date: Sun, 28 Jun 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782685113

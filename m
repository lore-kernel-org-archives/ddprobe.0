Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484D137473A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789321234; cv=none; b=jBdhbsN5eooAoBRI7SE7YyVvTfFn3gkNSJPp1oAkOUswCq1jL3onjLNJNe+K2j6JyFizDe/s4m8mukUpJM2l4uA09wkxB6khfParBoYPZ96jssUgvrpy67eyWvTSc6a6yianq84QTKbcu1Jh1AV6rxRsCY+2R7L5dYP+7aYMr90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789321234; c=relaxed/simple;
	bh=J9vPjwnHLFk4f8OTKuiONeQQy2YnKtiSer747+RanOY=;
	h=To:Subject:From:Message-Id:Date; b=it7gor3UKdi5NCHElrdN4YKFIvSJR4hdVjYWXyEu+FfiTBKa37Kr7fFeqWR8uP5A4h/cfATZndUwKoXGhR8S9Xl5lsEUPZy94OeEAXGmYwH8PcSJvueTgJWDSScX05L3+nYeYTxMv23srkW0fLdCqT0fAgfy9BqCKQmBCqPWKZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am2d50hP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am2d50hP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD083C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789321233;
	bh=J9vPjwnHLFk4f8OTKuiONeQQy2YnKtiSer747+RanOY=;
	h=To:Subject:From:Date:From;
	b=am2d50hPfDk3PI300lLh14jaDy/E5KImiZbC9Os/waOv2L78FnPQSf1pP2HpvhCIi
	 p7VRilJCpvdJ9f2AElrRpdAQP8N0Gz+VLf7o2W+X+EyYwf2qXqqI4fUw/FHYFMfNBz
	 Z6mtq/TlF0der1XzFk2vnAgCZnG3pWSnv1Dkjp5diemGwiyj4uQIIwbWMD1bNNNDem
	 2m4TIXT+a8G24FQ4/60dIcV7X6KyO/J0uJYPfbjZQcp9dOeFkUvoAtMweC6PdvpNqy
	 d2MTprv/lkc4PIZFO8FFHeLh2WtWOBRRzAavJfQvoAVnDyxZqWH0WhG8KEl4WwMS3Z
	 vc8q9FjArKbMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C4C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932123368.27767.14063440314092625850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3887eaab969825d42ab290a7b21eab689509c482e6571399cf34070c91ebaf1
Date: Sun, 13 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789321233

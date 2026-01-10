Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD5A500940
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768050234; cv=none; b=ACvyYiiLTyTf3Xw/8WNK08BSxfioaXSwECc2MrYs04eR8W27UYGxRme+Au4NN0nYL5c00OoL4Lh94o6U3TJidz4v8VYFliAqDnW1zL29XKScUbk5KvzTyuH1vE4s4tUA9HgwXLKaOuChi8ymvu5I2blAVOz8Tb/YoG6IPaD01rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768050234; c=relaxed/simple;
	bh=kjKM9sbox2E/IqDeGZLmWSMoM4SvEK95GwKErfnZWt4=;
	h=To:Subject:From:Message-Id:Date; b=W+Nnc8V40Alc+q2i6RKxBcR9MXiRYb+5ER1mnOswBayXp4PFzRIzUcyH/t8doP0wdQ9isWI3mtSQcTTepO8GC4Uwm9xPAy7pqPVRQs4NOAv+meodfabL5UTF/xQb3ycqSpXEY3U2QGV3wTMfHTJxW/4h/6VH1dlfT74Wqnq5Dyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgDUeKse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgDUeKse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01CBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768050233;
	bh=kjKM9sbox2E/IqDeGZLmWSMoM4SvEK95GwKErfnZWt4=;
	h=To:Subject:From:Date:From;
	b=rgDUeKse5xrsCj3SruLVoGGS4HyQTT+5I7LUS3boxPdzV4Jw+y9q0jP9UN4sz3Jm7
	 N+eV8RdKBK2VPUTIexu3iwRZMrHuoFQ3ONpcM1Oi3F4lKZqoBCqsUukERF2V/Kl0gF
	 eg0iNxJEJaRACZ9/W5qGO9p5s/vJ1VemjkcRCfKUTgs89/sH5mclkvftcNq8f/tXNK
	 vlLig2zPDrI2Ybey4+a9LK84HNMQ1JdSi4/0sS9hptwjYXVdgHGflNU/zDvunJiD/0
	 Ur+Mv09Ck8ZIjyUEJR6GXKBySvTH5RSupv/tfOBaGX0s3xFzNw8+8QvtvjnMUrvSQo
	 1i5o2T7q+8uGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F076D277D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805023357.31294.11102830857013828861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79e2c655018ceb7e25ca56e4ef27b4ac9276fd152b141687dd86247cdf63e05
Date: Sat, 10 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768050233

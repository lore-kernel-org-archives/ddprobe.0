Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DAA5452BA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788880834; cv=none; b=nrmXN8MhxtuVeedNwN2PpJn2OA0Tj51U9YfXpB5dOVjIbO3rYa3lO4INlcyJwnaObwdZICYEmSvSgaDz/ul85Ba2Pe7tSVfBRhxw/6Q3o6lAFQMLaXr7vT1/DH71Y5/4EG2aKziWx8SoMqLt0DUUHb4Si1bHn8g/0KvG4QOMYlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788880834; c=relaxed/simple;
	bh=ioWVMB9eRjKhzznJey35j1/CloPjRTWcwTnluT6XtUM=;
	h=To:Subject:From:Message-Id:Date; b=JoU+ohDSSQbgH+KNzirKTZ5Pozu++BKaK7Gwcd81VfF1JI8k4nZhhJhKOKux/kBTeKlO43oLUSYVWyjBlncqPc5XEPWh4MweYMBEfGRTPZjU392/IzWZ/juE4SJgYB2bdnZl27Kj/o3oYm1OJhiNRfNXiB30RLozJYVBWXLtGzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROvgx7c+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROvgx7c+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA648C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788880833;
	bh=ioWVMB9eRjKhzznJey35j1/CloPjRTWcwTnluT6XtUM=;
	h=To:Subject:From:Date:From;
	b=ROvgx7c+3N4bwcaOVaUqMsPiDYempsUiY4RiYBhvPUHIXkpQFLtIY7MAkhRebU6ME
	 AFis2R1pGg/qaO90jKFzZp31NEwqJbxlqnute9kJ2jRSnyFl05Zvd1rKq5ExxgRsLk
	 wiOlBet2ATUigymDRBAw/goIQ9eibPhqndewBX56t7OKTtKy1H9EY0M2uOpRNglJxq
	 65meql+sHVkhyLLPV21XxuPcPI62f2oAxpMIwbl8amD2wglOJJTLM4hfL+zD+S3vA1
	 N0bD3x5KLURZNYpISh/HLdXO5ECS+0/9KeAdLOw/GDOI4GZ0Z4hwhlAeaZrK+YhHi7
	 5UkyHG6+I6NmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B531AC79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888083372.5372.7823727905123550810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8c728764d1e730b5dd787626fae557aecf624ba373cdd45f23de7d27f4830a
Date: Tue, 08 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788880833

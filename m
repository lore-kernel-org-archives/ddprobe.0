Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBB2199E94
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740533934; cv=none; b=US+wbtp/X39PSiMvt8rJoPr1lp9X060lL/SXyLbUXFs397kQ7Kw03FBeaSro1C16m4qIR6b0Bh8lUBp1P5G1vFAEOCiBckyjtkCrTg+n1GY6jS3OpUVWW7nl5mdf11Ue81d/dduxiq+Lpkpzfph2rCjKJsW2LZvFowilr+5wENA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740533934; c=relaxed/simple;
	bh=r3e5hUpeVLuFJztL9aXg/bG7NeyflFLt8ectnO9mdZU=;
	h=To:Subject:From:Message-Id:Date; b=lSmMoT8/6YUyneATBF4/kcqRgfVGqC24VJE3DrAZOjSUBMol53vbamHZIlq++sbz7MKwQ/ncfb0gGHPKeySWjNFunPggGWGVr6YpBW538TaLQnZ4EtkkZbYal+Kv3W5oq/54eBOwUPuW57g9nXSwfq+v8Seq1mR382jT+E7fCnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbAQTxgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbAQTxgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9222C4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740533933;
	bh=r3e5hUpeVLuFJztL9aXg/bG7NeyflFLt8ectnO9mdZU=;
	h=To:Subject:From:Date:From;
	b=DbAQTxgdckrEQQgc2fkBIjYEBW6+RwrxFTIkZdaDOskdoTLGPzQg4d0BOfvcZYqwR
	 IEUMEZC5EjjBQdHxkIpi68/WF4ta3BR4OLI8NbgJ6EWlRTMKv14bWCjTuW4Is3XmXe
	 PGSHRND/TBD26tcfIBfcWKC18LLw34Ke6+gfm6dG0FTIdp//QgrBh1W4vxN8yT/nn+
	 JD9X+H0PosXe4whp+IlIiUHmuhjbXMkv/aX6LmFgRDjTHYH05G+a+gYn/jKJE8snPt
	 sVgZ3TgedpjC9tWoKNR0XgYm8nIbUxlBZDxTUspXEkj+lqntvRLl3Vq1E1uQEXh33L
	 4ULz5p76K5UCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980C7C021B2
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174053393361.28018.2423357699570306362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23b58508e2a671ba46dff941733d353d81d6094c120d33be2050306d3776810
Date: Wed, 26 Feb 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740533933

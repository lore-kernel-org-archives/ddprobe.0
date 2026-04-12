Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216D328CF5F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775980654; cv=none; b=MIBR0QV5uS4yt2zWnXBFLXJ1yj6VMm3U39iqanOSzs/KjFBioMBRPUmrVptKa4EZfpWfjxWuVYA8t0qE5db9NsNRThsE1grDxNyaBqrJYtpOn25FPtQyAr0nP9RrAttAzqMvztevPWuzm96cGdgUz4l3G6U+vAYFjKSRwedbYWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775980654; c=relaxed/simple;
	bh=BRjBWLLjskQ/821UVS3QhjXoTjIey9kzT2htaFS54V8=;
	h=To:Subject:From:Message-Id:Date; b=svADtP5hZy9Ilqd9ba+QVqS2MbSdsPN+ryIP1OSfg7vy/Kqpvub02XGNkuPAQdMB6j5ZdDPs1BNubUV4O+/+3Bq725H5+uKqvvBYbSZw06OjW6mp5+zvgWg4MEBo9/aH/PGm7Ov3KRxOx8+hciAD76w+X0zcPQEkhEynfAdSzLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mytvFgdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mytvFgdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF86DC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775980653;
	bh=BRjBWLLjskQ/821UVS3QhjXoTjIey9kzT2htaFS54V8=;
	h=To:Subject:From:Date:From;
	b=mytvFgdM4S7ItZrkDnxUI/zoCmg0YA3N8hWJFGsyZy4+4sZlXgUCGRtSxDWdNHv2z
	 09ZKy0ZuDGU+IpfrBozV08A+GowOhjxW3rotPSVQnyHg+amYJN7DKWSgxfYA6NNvWX
	 tH32HduhxFFnhKtr57WxEtVT4iSg/HDDsmqAF72+6248qmkHkWwrzlT31iNt+mtPmL
	 8ozu+q4IluOdPSS2PQkQpRyEt91K51Cdn7r8tUHF95cLEgTtuDqHqX0xc1wSFl5INa
	 VQfKyyUQFOunt7lrQTJddVJVLA519W1dm7eXeUrVBDoDWN2oWNNQdRnP/QP2ufhDhs
	 1X7UCTMjiMFqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8AAF3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598065369.21984.7327610449745728173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060452e3765e7ab11c7361aec1efbb20e41fa9cfc94e80a000a4d5c1123b72bd
Date: Sun, 12 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775980653

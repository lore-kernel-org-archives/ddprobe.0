Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E732F7EFF
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786759234; cv=none; b=sz86D9opoGNd34JcOmrUfui5lsZffGXnoP+Z9Z8ndXnrnfK1YzDjxyYEJEjPRsSmKibLGiMi6jSTrz2yuxp/fK2hqX93evbvv8l22nh45zrfNDYD+TGui/DkEilyRo/KTbtWGyVGWUg/ztuzy2RjpAbEcbD8i50tDI4sbBUhVyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786759234; c=relaxed/simple;
	bh=+b3fS0xyTHFvpu16aMICo7JPQBjnmAmIJuvGrBks6MI=;
	h=To:Subject:From:Message-Id:Date; b=h5Rwlv6dwpx9bjTR0l4K+/GLhs2S8KfUb04IA78vVTZc1LmXVaLF2wcHlk8RK1bAwbo45IlPQAKTr+Bf+ul2pR+zocBW+NSRI7oexxRveXKwxVSrRR2YaI/T+C3CiLQlJUzVFGvs7Ofhkjc6ZZeug0+gu0QG/QL5JbzzClcCXEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7Kdvgur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7Kdvgur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D313FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786759233;
	bh=+b3fS0xyTHFvpu16aMICo7JPQBjnmAmIJuvGrBks6MI=;
	h=To:Subject:From:Date:From;
	b=P7KdvgursgSSY90fcUJfZY13TwGPqNo/dZcKkwfHUjIekGbAhmSCtUAfStZx7oD5R
	 fSsm9f6lmsCrfxi4UpFpMVxjoOYOMHsAkKcB6yVu/KzSO49AmmwhVA/VkuZ05X2G43
	 RInkk0m4z2VNkHJUilXWUNbekQPme9A47/O78IXyWtmX931EP+Ghi5A1mTHCdQOUtP
	 FfRN/eQkZq0+TIqhwzCAffm0A/QYkQ69ZtJVJlQ+YiE77H8aTPeJIOvNRa8hmWhdW9
	 Vgcy65QIcGZ0v5DQl0BWgbta0TmZN+cuGGNWL1rlL9YrwvrTBBQvGHFCEOOb4Af5gv
	 XbKq1wyGNqRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE000C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675923370.27390.11706218416822438315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616eec0e26b98191eb02cde52cde47eedb071656bdfb85121875bd805e517973
Date: Sat, 15 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786759233

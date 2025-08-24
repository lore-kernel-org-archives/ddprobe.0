Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398531B041A
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756007994; cv=none; b=ta/ZGakNePFaKt57V8DRKjnTbU0kPpCs2TjyElSPUGXqzdXIZAfEUlAnIflLezJ9rh+mweb5F761eaooKIuKs1xEie86jXqgZ+hXzxorCTcKLR8VcZLpXZ9e0K2uaxfsLwg7kv94SMebXLxU4o2tvHnWPlIFbpMLWKF/Sr3yl5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756007994; c=relaxed/simple;
	bh=y9xsl14AaMmu3tLTGT2Hilry/yoDI4R44BWBsszwYpY=;
	h=To:Subject:From:Message-Id:Date; b=omnTspPjEht16W/P457cF7OebFu7Aah+FiD5uAwSRlimMrZ15WqhliYuUb+LhwLn1QVttyIPkVYtsOY65vL+rPGCz2QbSuyK5DcXHx9g068Pzzk6bqLP7dIx5HJ6GXAmY9OL7qwUGOyl6I6diuyq/+NgM+8VO/WQUi3LV9zMaKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxG2I+n0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxG2I+n0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B65C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756007993;
	bh=y9xsl14AaMmu3tLTGT2Hilry/yoDI4R44BWBsszwYpY=;
	h=To:Subject:From:Date:From;
	b=VxG2I+n0oY+GTFryndeBAZS19/Cn8dBKxLM5iOIOOv2twd+dQksXHI3Ee4y/jjeqe
	 PvgkxbqGUk+EBTKwqIz0imE71HEUjMvNQYZPzxJvRhiIjv6h+Cm6bS+ngy/UUToKzv
	 9lpkLwHs9k7hTifv0o6Yr7I09rqt0rIYb7/8Hsafgfb0Blb2wJJWcI06PQ8moSOMV6
	 UgsOQZkeR9W576oG/3EQM4PSdZXYT9iUZtJbIe/+RTCMpCnL1CRM/w/7toQpeUsK+1
	 no7yvjNTGO/Rl6CRjA0SmDMUuCwjMVNgVP0QAGZgKMIn2HFqwm5VYgKGjz4+d7na8h
	 FMeyGdkjjzMRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C9CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600799357.21067.5099345964159049030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12fc2c84f0a6b2badc96762bb485d3d6a32cecd37c80c77b5f3292eb3a74296
Date: Sun, 24 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756007993

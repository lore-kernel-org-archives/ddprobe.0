Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4093033EC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789855234; cv=none; b=bBOXzmkUvD69b9z0o5FUaNdD8vbVN2wz+uWmIRl7ZM3tcewCegTzRuC8UEHgVXyhecrvj773qqJKfIp1ceEIhT6bjfIU9zMPUio1/l36+BJGow/HAOPyilY32kPZkw1yzQrFb5fCI/mFAlm0oCqk410sEu85rF3QdxjaWOh+Wv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789855234; c=relaxed/simple;
	bh=WRbZG9lRNQzYVL5Icc3HkV6nwA6oKnmefmHkawj4cmA=;
	h=To:Subject:From:Message-Id:Date; b=rPFANRz2B9yGN6OPco4VHLwb/cLT9Jfe4MmTc9/mbBMkJiZLxr7cW5lNeKyF4m8n6jALeO/SOY/TEjZBMLpOQSQ919u3AvHsY4Tw/VpnyRRy0otWUBrD3Ue3aBuZ70EQVNpLVFPNvhg/CbY0f3xP9ZJfdP1PM8z2f+5JyVWn7HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyX7wtKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyX7wtKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3DEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789855233;
	bh=WRbZG9lRNQzYVL5Icc3HkV6nwA6oKnmefmHkawj4cmA=;
	h=To:Subject:From:Date:From;
	b=iyX7wtKvkjcUOIjYBJP5QhgpJV0atgMDgXQmHER8aJPZkq3C3g3lKPOHW81eLyZmW
	 UPy/KA6oaPgG64q/scLI/mhZYO78ubUhizN+OI+X/avxjBzXYtY1AdHrR6SAjMRLLJ
	 dGMJp/ycChmz3FwA4OX/VtLHvM7t+przRFPn/RKeonng8b51uHPudmdArJ/EupZqFy
	 qqbTcWESa3iK7CuotUYNR+CGKDWbHVOzoGOBp9ui6Zlg0dhYZqig/5W9VDG8A4AiRg
	 +ejQWUlppwVUJqRBDgo2UNn7b5XxSpbJXEFFQTBQxq03cG/Yv2I+MzfCResOlx3J7Q
	 IgFnWvHDzI0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF99CC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985523368.14216.1979594175820231932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a4859d6cdee6cf7d674e795cb12906e066ec49e553c053f0d2f3d122f36ff4
Date: Sat, 19 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789855233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080BBCA4E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768658034; cv=none; b=rG40QhpdT5fhjEvEM16fZOQ1+rlJgVt6aSJNiEZLTUCOqea9G7tacYEL/4RBU07FAGa38u8NvX6nv61LpaQuCFZzSg6NPog/SNo4QToZz1S6bvWTuvO90iIHY5emzhrWweR6T2iXTgZ8/uQDQOMjomCtSDnwTvbiFuqZ2e3BRhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768658034; c=relaxed/simple;
	bh=t9esnFY/7EU0F17ejrm5vsMHXj7shr5V14zkC/femWI=;
	h=To:Subject:From:Message-Id:Date; b=ZnPKu6gZOZaZ7U+8RgiGiF2co6yoSGZzjTFp19jzCQFHZIvO424Mj0vRg+e0I+sCpAWk6gM+nE5L6JnDPs82FzT7IE7ze3iLaiO714blHU6/4DNQWhqnQZVO2a1ZD1Oxuz/3RbzkUPXWvkDgYOsauqAdiOeAOL+VEuCyqPY5VKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lA48mSLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lA48mSLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D63C19421
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768658033;
	bh=t9esnFY/7EU0F17ejrm5vsMHXj7shr5V14zkC/femWI=;
	h=To:Subject:From:Date:From;
	b=lA48mSLjTZgqYWLxrYXfamgLPlUtHMcGZzO4MHPje9LZT7O1ctXiuowIKLPHEiKel
	 JTdtDdEXRKsWsE1tECumteD+032GOoa9Hb3ZPdvW2EyZ8iihPIXzhIjOzKQ25PW2HG
	 tIfuUBTElkLEYidvxm4ABcalIGQe54zvTGwo7bXyR+D1Wi9xl4LrQEX2nQFypyIYaA
	 Sd+WB3vsx447/CbvjSzz56jBhdRYXgg3FqjEL2QxHKHI/eIMaShoHjrEAzGwQV7p5L
	 unzbE8vgx10AKcOCPI/nNS6qkmrVFdemBMi0zpAz9JplsCJJvl9TtCdRP64VvkTUlP
	 Css0LUyTgkZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB5C98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865803358.32650.362409605973830206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c2f6e48ae04d77f6072ffc8066f61b92f305d4a1327a36b85c170020eee960
Date: Sat, 17 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768658033

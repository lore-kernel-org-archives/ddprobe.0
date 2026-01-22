Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E0C33C182
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769060034; cv=none; b=iLzE1A1TxDspu8aEeMMkvxW7j49TwovZgvxMPJKagt8QTxTSK85SL0KloFiJ7L4E2T9xIsTBsH5ma8vLUI0/KePYPSXbrg1MTQ4W/gmsQ4ij9XwZZuf7uSUSo4wnaSPUWHcTxzKdon9FVs/DHDhXXzkYfC9C93OyT2SUlcVBs+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769060034; c=relaxed/simple;
	bh=QGC6xYEsdNipHRYoTDuMANi6ZKAa0EeHQ0C2ZxUsSrQ=;
	h=To:Subject:From:Message-Id:Date; b=NyelIswChu+GmzOxRjSvJCK9K3uDbdyrhauKnOLQ31W3HkZd5RpuUFT/76tJyYjd/JLjBx16zWK/+0DPkGPur8/DfkFFT8d2J59VrvCFDRaU95A0P1WHWZohY0lwJ7XIKtviqUzT71c+YrKVpx/ATNqFsFZgaCLbITHGq8lAC/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuujekmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuujekmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5055C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769060033;
	bh=QGC6xYEsdNipHRYoTDuMANi6ZKAa0EeHQ0C2ZxUsSrQ=;
	h=To:Subject:From:Date:From;
	b=UuujekmUrRWyjGR8fgQMmAp7l6YO+hdeo6BVOOBk0w6rlyGxi4meFsh9OosZR96bK
	 JDZ8n6VP5CAdWdQdLshnH1GwrF9ILOaLuQqD7QEmcc9cdbxC4Jb8aorXljnYw5jv5W
	 jpffTSy0/d0THWw+4suXVx45Ex/eUZZ8NE/kc7sH/VOc+ipQIIg3rZIfy6yhvXP3jW
	 DetbeGuxwkzD3lPfrs9XbnY4SXfyOSq3tBdETOJDW7tsoT1Oth15fX2MsXfhpB7rDX
	 tjj5LTO3Cs+krLr8sL1YkkDSmUlb2qdyGUeJC5c9gppTG78VLb3NP/tEnYrqnr4HUJ
	 lVCzDKZ3heL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D0C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906003358.14768.15095332409762453774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28364ea7ea5baa85cd99fdd2041b2e0963ef8369ad443c2e45b098989c7d32ea
Date: Thu, 22 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769060033

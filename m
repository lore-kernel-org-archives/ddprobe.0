Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BF72A1CF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742530195; cv=none; b=M3zydLV0NISJfO4mPNq3cxSHoMBUxnOJbXuXG1EbDe6K8KWQLGcHb8X9lZ73vZWiQttrkJTxd/LNgdz6+aqzuUqf8rabKeMIRmr4M9itCe98aRNd/TpYKX/Pn/mGoPH5XZpNn7JgqaO9hS8nv+gc7nGO0D9gY2Cs9CLqEkmtzNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742530195; c=relaxed/simple;
	bh=g0kcMX1tfQJhEdxgf5wp7c1YQJ//2gige1ItOnfHbg8=;
	h=To:Subject:From:Message-Id:Date; b=jYgXUVurZLwZ7DQKOOjaVMux3DDR2r2UAeVD/gUYUuV8ZE3Y++KZz1X+YCAMppm7c1axtm+egGRZDs7vflx6EV0lIw+BBZN4BKZ10TyB6lEXxOe62s0sqP98qg0x/GqUqUNucOhDYhKz3hA/IEKsryE1SpuaMn+rjoMizZC1foc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPRqYpV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPRqYpV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF33C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742530193;
	bh=g0kcMX1tfQJhEdxgf5wp7c1YQJ//2gige1ItOnfHbg8=;
	h=To:Subject:From:Date:From;
	b=NPRqYpV7AGhYZ7N+d16HCDApUmkagKgeygpEdXZjYavn8wThli6Oq7zHR7DtNA5vD
	 uh5Zuwx/DMnu4T5OYcgzb7s5tLpl3weGaJidbdgPyuA/1vJ5Oe3aGYv8FoIxELuPq+
	 FA9/EDThYYwksHYccNMCESKq2tM9owwxouRXdkwemOlKP2G13BZZyqZSrcEUbAFMjD
	 MH/lDQB58KlUriTo8Dz7X0KrInOLU6QWrQMa0q8uw/wfUC4b620QeZDq7TTSk9g6yl
	 zzXbGVFjXOmETctomn1I3Tem2Qk/B6lcf0jLWl9NaKyYMEJfduGc0avoSuJR5bEl0N
	 uQZan6PwEbZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A29EC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253019360.26895.14435868425911623594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685dba8ac922f06b488f5f79b5bed194a2a66a02c1b6df1692580f73be51071e
Date: Fri, 21 Mar 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742530193

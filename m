Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D2B3B9D83
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788516634; cv=none; b=Q9mGXMzv+GYfunX2tcfb8PLSV3Mg1JgLNneYiTRbquLnnBJmDaqp6xOs2LGcNivRju4UvpKtePnJc4GJ0jhbnrizfF0d18qZ8ZcnKVEiJaxBuc770W6pGQIqGxJoihmWWc2NthJJjRAbyKU6ry+QN/kItAplxUOqGrUD4/DH2x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788516634; c=relaxed/simple;
	bh=QarM30B0fNC7z7RlgoCBo4mnCAXL3OLCdnMCq4wyMhA=;
	h=To:Subject:From:Message-Id:Date; b=GT84oITgpxNyi07TgVwKmCeMFBJs+/hvZqJLHpSaPYNn52pxUKifQu0Jy801ry6r0msach6PLokNGnVIKewjGp9KwGt8JR11F5fqXv0cLKdGqQDX3tqCA4zTCELdaDGWDq9/3aQty3PZlWDvO89y3ZuWgcbKG4Nea8EPu80FOqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvD4ERLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvD4ERLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D263AC2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788516633;
	bh=QarM30B0fNC7z7RlgoCBo4mnCAXL3OLCdnMCq4wyMhA=;
	h=To:Subject:From:Date:From;
	b=qvD4ERLDnYdDyVGoQ0zxGd/0PjSjEMXb7n/BSL7CQikFJpHKU8zgepeqg+pi4Ka5M
	 3xvPYDubl3AY7sdJuUaaY2Rn0Mn0TB9wDCrglu5s6Z1H8dHkrZnM3g/v1SeWkGvm89
	 j4D7yOYUxgMfEwp+7nh0eKrLzQ7AQ05+ViSbjyJDCQu6L+f9VRetyBlXFpVhQ/zkfV
	 D/cIEPd7vegAguqDSaN9o681zwWGlDuA9YARPuB4mSDnV1HPy3WFHE9XQZFnJ9TK6g
	 iptiRuTyE3weB0PUwEd9yOtueHpOdGYIty4lMzC8xQkIdeAHWxX7QPu3dNrCApIMwB
	 t5Ku/NGX+IPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFAC79F87
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851663370.15987.8522429811292392322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3118ea4e65e69dccc5e131d8645aa415591e7f8e3bed8b404ae5148b745e259
Date: Fri, 04 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788516633

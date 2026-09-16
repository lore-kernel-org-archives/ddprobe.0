Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9A13A3E95
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789528234; cv=none; b=YWvtO5dryAy7Qd/XldCGVHZ4F0AUEzsEckjcOzcHdQr26lLZoR0hMlMKiJpUNfRSD9T0QjmCRbe0wV1qx2Dmx2XJfMfUy0uOd2xQNlpNPWks19vGueXg2Ed9znDIDhdz/mDoaIn1cnRqnO8xLApBrZhzYSEO4rNvf/QmSy6GJLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789528234; c=relaxed/simple;
	bh=iLlzQ126QzCTeo+20lHF+nc9tN6dX9nf3D7FBuPbsSs=;
	h=To:Subject:From:Message-Id:Date; b=SDO1+16x5LzBORhH1uff/Ibh+VpOCh30UiHshRa+H0oO15yQG3aEKL0GHoWCUJorL8QEkKJOKMq8VbL5GPLhZc0UV0oN5b5xo2l7+lfacDIL5HNviSdfEciLIH/PyGR28xJ4rJ8LZf0NlT5BHwQnXa0GpXTGGsxBnaHQaSuNooI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNq6Ro1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNq6Ro1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A3BC2BCFB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789528233;
	bh=iLlzQ126QzCTeo+20lHF+nc9tN6dX9nf3D7FBuPbsSs=;
	h=To:Subject:From:Date:From;
	b=dNq6Ro1Wb9LciKDxyzD80+OP2pDAGoPVwfp3UUy24NB4MX/vhuanfxYmw5p128SaV
	 FAmJnC091itCjGNn+M7G/RdseRKRgX7jSwRxNqKIGnaaPzr3KLAT/+8VXG/j2g9iW2
	 UBlXbhBPI+o/+MJe7N9/aKqKQfeShlhebLXoN+IhC05GlCCDd5wmx7ZK9AbuV3JdTM
	 0MYau5pf+6vW+DY3zM36/UQKMXbu/dl0y52K8Ki3iYlgHLxdmU3DA6V0zCD6kAeCn1
	 k3FZzBPAb1v/Ti9JK+f8/TK8sSsQcimGSzVlqVBTaWcDYf3z/dUAJggdeg8AVLvHgh
	 2VQ3OjujhD1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE97C88E7F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952823369.24283.8545058079384630200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a530fc88462f49b3d0643a0c540fad776d938a773aaac974f53146f03c1269a
Date: Wed, 16 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789528233

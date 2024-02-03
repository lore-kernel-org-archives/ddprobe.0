Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F94C4EB24
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706946497; cv=none; b=V0oOgzbiOWAB5vc1Iur/rkHYAoDjgE5FvF9XIUwN7RH9LuFJdfBpq3Zlgc8ieWef/bQxU5OL81fSZ4mIm/cWZ4I/gpCR5ZmES8+G/Ei66kXQYvjjO9ZTJa7c5FyIWI3V5f9n1ipV8pRvFGFj9MPxHxBIYBn+IOwLiQ+r0RQm0mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706946497; c=relaxed/simple;
	bh=R4dt/SVRKTBNFjH2/16nM8XNObMXBmlmJA1Ba9Hvqgo=;
	h=To:Subject:From:Message-Id:Date; b=hVBWt9mvS4LEmfDPGalzHhCxotS40cCSjFdxK0s+C6p+VDg9MJ6LJCAkuEup+dWA+UuknNFhB/3irjkO7H1vx7GtVNeq1oP1JGz8iCXfsYSGhg8myzOj3L5wdjJza6b2Qxjh+x8C2Fce+5ZXiSE0KDyaptMbEWjcYPCTj4I2u2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyQgf+9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyQgf+9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9D3C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706946496;
	bh=R4dt/SVRKTBNFjH2/16nM8XNObMXBmlmJA1Ba9Hvqgo=;
	h=To:Subject:From:Date:From;
	b=gyQgf+9pdtuaykJCKt+FSIfklnIMsYvqPiQMb8838X+pmHgp6wcD24p8k4YEuJb2W
	 pQKg5z1qLtcvOi2K3w4Q5VZXie1/WzEXTzy3P95vjgmOCY6NdHWMqp4deWRQtz0z2v
	 8SjwMRRtjxJr7XJFh5l/5Xq9cKGYXfCSxxPWgrMg8/Ezy2IwPWCziZbZNykXTjMatc
	 9Gj3t+PTtX/F4WauuAgMbdcXqsGyZmOr6x52Yj5In1S9gx/9goBIpR/mjRphDM1qpI
	 w+PW5M8m1KLe4swpYjj7YaUwresjs6xnPjv1pi+Yp8Hccnlgz/QQdxfxRBVoh/JUGh
	 Uo4Lo3dmGM8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DDBC4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170694649637.16672.5898468595213887218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2b5a5683a5a7285c6dd8e27276b3c2f917e6a3c2d669a4a28aae8a82f7996f
Date: Sat, 03 Feb 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706946496

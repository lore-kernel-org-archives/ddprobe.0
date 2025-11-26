Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E453148B6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764193373; cv=none; b=GLuqKZUD7xelU6ARziEQmjcnIs0zlRruMup+I7pIcWDeQINTvO5x8UEzJryTBpxeYju+msZRi5v6Zw+PDfY285o8eX3bLhTQ/+IqwBUgOAoi3+OXdHi8AQP+geOtc0IBOt794FHNkLGf4g2s02oO/fSXgOwOyrlNKtxLz9bhv5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764193373; c=relaxed/simple;
	bh=Spsx/+Gu8XKwXSM16wE290iS2O6/WUvGL9StSdbu57s=;
	h=To:Subject:From:Message-Id:Date; b=QsFQBpCGhcIwMtq8EJY1a6JLz23LnmJ3T3Q8R/w4TocVxeEsfBSSdBbqAb3rDAAgDbfRY/URGxmhBuaOtplNKZXTV2ThrspRTtDoO25fMvsQ+ZZFCGx2kW/K/MNS5imEGKBhoIDpzhqCy2Tj8L2eZk9XJb7jNEy1mr8JjMTJ0z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDpXg+r4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDpXg+r4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1738C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764193373;
	bh=Spsx/+Gu8XKwXSM16wE290iS2O6/WUvGL9StSdbu57s=;
	h=To:Subject:From:Date:From;
	b=SDpXg+r49GlhsG+rBA7OtCjKuKGL+19/gFles6FfSBGAzyiSvYuvA2dkn8DxcsDkj
	 onGraMpRSZPfuWmEzvvZW1olqCM84EtwZnZOzzLnyjalZ0sxVB2cKhxxkPXjWmDeTx
	 oe2gJWIon/8S1WhVRQC8X1S49rTmDce6Zs3ad/UqVe5KRgy4bC3IrIIHTX+meIL0XY
	 E68V46a/zNQeKfmMNnVaq94pIOeh8hlwtr6g2BHYJDenuko+pXG6dIgTRq8DjXTlBW
	 L96f1IvbhtC5KVUXyhFXheCgaHE1dJZOv2ad3jdJ2MFHF84wtF7DTnom5h3f3fX0/J
	 1+CVeKsQeC4Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C0DD111A7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419337359.14701.13672184563877833885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e6d649438174ae6919a28a473f5e149ce4e586ef7e0d4d92140c1fd1638a54
Date: Wed, 26 Nov 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764193373

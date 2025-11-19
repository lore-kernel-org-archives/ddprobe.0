Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E14274669
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763545315; cv=none; b=cYiO4By1Se8FrlsYMyeJJWDq3dB1EZThLCJVltyMK2i9Fz2EOj+dWE0MD/CrBziA28kOSLKUghO+yK3AVnB7d46Xx3qSgZDwu26oYfGQi3u0RiwUHKMHGMBLumziXke/2CZHZtlDW7FWiyWaDnW03gP2ZVjyJ65dXiDbhritRpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763545315; c=relaxed/simple;
	bh=aNrSWn4ct0x1edAVzXb34rjEfhG+lTtX/83ghqy/7cw=;
	h=To:Subject:From:Message-Id:Date; b=lQCcgUKX5NwMcW79MKs9CDRuhE0O5++IuMCZoBdtpBash3mkWXMxeZ/g3ZrdQarzM0rEQHfHVNi0okcB7kyD0eXRR9hibOElK3+dsU6/iqT8WXrZeqPGr8o8i7IxSH8X9tGIHX0xkVa1V+UUfamAXXF0r/TmrrkZZO3zREon1Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb4PqOaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb4PqOaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6ADC19422
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763545314;
	bh=aNrSWn4ct0x1edAVzXb34rjEfhG+lTtX/83ghqy/7cw=;
	h=To:Subject:From:Date:From;
	b=tb4PqOaRC6sLcXYGsXBtBnJzhwHVPcHXlIYeKoJzX7un61DzLUUwlqw6Q3f1TNO9t
	 FGE/5h2qLcCdQECdwbJoFz2yt38PVrV5iqf2MOjh+UgNvzFvTIxb12E2iUQ0sunl8g
	 VddXybT62mXfl5AqGTLGLl4Ljvv6HBPfUvoh96cQKmPh8x2HE5nxY+tD3p5z9sLOP6
	 tii2u9/UDzhv61oFDNhF0SubztVG4fuhwD8+tp2aVYObxIL9m5hfz/mE0h9qS8vUv9
	 DrBA906cXejk1DLAoEheK1p/4PSpWNAXXDyglLWS6eM+ex+wC1iJVfg4r+C0qsuUZ8
	 2QT5tNlHcDx+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC0CF258C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354531359.13863.11430871376998420328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5fb415402c5ecf115fccfddba94bc2e5e31d2527f266d61a6b845330ae788ca
Date: Wed, 19 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763545313

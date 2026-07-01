Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643E03C2796
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782896914; cv=none; b=oJ+KBUxBIyTJ79PTRp7ZaG5+ovBzblREBLQ9ZnoOViYZd/T7swud1EKD3nTq2n37oDT9/J93vdXDbjfP19JPjMERcVOvBF/PtBP8doyTMUkagT1gViypzmRBMh9I53xbRrNYvBkgKAZIZnqUU+aReMzqujk5VVsY4Kxv4zjVs4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782896914; c=relaxed/simple;
	bh=qnibTgPnXHmwFnykRkPH8MXcPC0Uug+VA+geGGEv5Mc=;
	h=To:Subject:From:Message-Id:Date; b=ej+XY4FCbl4jux8al5+9iID5r6/KbXbCgJFkfSr2RkEk707DG+mB/Jdu3Bb5bzEnQsxOCyN02PIq620SEHKtmzdu4sORR2tM19o5I1SkWnkBc6kE1N9H6DbxX1q2AihFSzUwV4O7UAvYziBEKTw2cM9hD3U1j4k2ZSZv8846DS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0nUaVWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0nUaVWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B3BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782896913;
	bh=qnibTgPnXHmwFnykRkPH8MXcPC0Uug+VA+geGGEv5Mc=;
	h=To:Subject:From:Date:From;
	b=c0nUaVWmWTFxQ9pS/zKwkhG0QZlgpKZVCiGefIcXLPcRb0gcGqBZmuDfFREsIGCGC
	 uaWpIVWLaCBK82fJc3HOs6C7fxJR+8b6xPXY5FcY4WtyPdb6+lYxcQMaNxUUJqVnvA
	 QU2fw/vMsjWMykYZmOp8aKDcY8Jutc1N0TwVdNFQFbx9jnFegqPXIZfKkjN0lmRwDS
	 hoAWNW1N35Mjtk3ogFFBPWtEOsMZcx082SdzUATzQT/mCEQT1yCSPK/Sc+bJNv+YKz
	 SlkA6j8qi7wlWLPRzDTRxPUWw9gHAsfz0iyqUgnzQ0Wt2WzmFqgOc/5CMikmd1kBa6
	 qmgYHCMtw704Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6FC43602
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289691369.28726.5404801658679539158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d5e9f65b489f0c2ffb576ab50b96fd2aadf3c6b96b5204fbe8a5715265221c
Date: Wed, 01 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782896913

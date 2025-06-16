Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0C0288C81
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750102194; cv=none; b=GB+/1TdVnVGdomAJyF0667XdPLeNqROKAZTE6BTUl1STZoD31GCDMcnnG76R8ym3ZseGJ5nRIWwrS8yyttNJfZ51p2ZZG9vDr0G3LFLFzCwMEb0OfJmdCv0qTnjpv2VPxKJB/Irqu/IJ1T6D/mczR8Gz5KQqIIuqrtwjt+7+FEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750102194; c=relaxed/simple;
	bh=qU/1DuQg/wBnqNaUF2JVRdmym8w0erKF9cm2FOl6aek=;
	h=To:Subject:From:Message-Id:Date; b=LL/v4gSklrnxQwsNwLQrZjlii8MCAY8Nwg1/gZ11x7J2MKM7I7K4OlrZZJlb7VsIGha2z75mtqQYjKn0W7sX4o2AtNtbmT1Z2/K6mweTV1V1t8oMhb15hhFUTmmW0esGuG8fcxmV4TkbZMxYfwQU4fTcAy6tjikpbvDamC0hUrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7rl2acj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7rl2acj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01DCC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750102193;
	bh=qU/1DuQg/wBnqNaUF2JVRdmym8w0erKF9cm2FOl6aek=;
	h=To:Subject:From:Date:From;
	b=l7rl2acjFg2NYZBD6YTwqM6PAAivfeQMj8+mscY3xkr36QyECEJWqOniGbxNEqz0i
	 tyr9xU8cXmENxjFjvkdQdBKTZ2zHKbafhDa/pZ0UDxlLRv+CHO7/crbBJkAq5KB38l
	 bkH060VJBVxEbw7wDcxaAXhKEM2A+V6U6ian3VwleL45uD8hgwMFcmNcGNtq49AQRl
	 t29iCUnYVC6Slg3ZIRWEDm6XiluMzXD4RVXDRIUACw/TYrFgQZNriyCZgbLjCZqXWm
	 L4adk4+sjcDAuLlCRPW/kbQx744T1aZ+ZfirBvaRWbwdN0Y7+MYOtWuoaR+Q1ogrY3
	 dXSM8fjP4PkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEDC7115B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010219358.24643.15337074469180873294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661b420db94c692610dd6929f757b7a3609457deab5ffe3f5048706a50d21c8b
Date: Mon, 16 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750102193

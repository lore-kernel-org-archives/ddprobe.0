Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F69197A7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768694034; cv=none; b=ov11t0D+9LLE6MNX15fC0r1LnsdEPEOvll06tevgjg+xo8WsY3S3H3YQC79xDNGX7nNgAvBqTbGul/Bq5ldp/FQHxj5oANYUQRZW886XMboUbBeBNM+C14sAcJ01CV9kw+I234f+9GNngUzvDblN/ROKAHSHz+XoEUiaPlURNZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768694034; c=relaxed/simple;
	bh=21DckiPt6LkvCrAMcWVhfuEvHzn4ymy0iwojSAL9ZJo=;
	h=To:Subject:From:Message-Id:Date; b=nlebFt63Gpjqwrsaj/gl+vnIDW1ZFJyI8gRNiIp4jVL92I+BV7xo+cUAJCPF2ByGwAj+KzS9AM8V7DjxyJkD1BBNcTVo73f4VG+Lym6xvhAD3w7PkDAHvJK5QqLHoyCg827MSZuemdfEqUJDLgBvvaxs5tq85WBxunyV9wpl5+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYa7sPUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYa7sPUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ACDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768694033;
	bh=21DckiPt6LkvCrAMcWVhfuEvHzn4ymy0iwojSAL9ZJo=;
	h=To:Subject:From:Date:From;
	b=HYa7sPUXX/Gt/CueBZH0g7DKkhFcGXs4SMnAwP+rPFdpi0DovYqDwSGnNk3GidnLF
	 JTVjnGwHyjzjwGY8TTyGVMMTy58momqE65uSgm16v9haAr9b6BsURMyIbdWv5OkRA7
	 8pZdF5KgM5TA/oyW3VKNk0RjMijyQnD1xKqBICM5HMVhU8vNWT7cxLFT/k06o4ifRM
	 9y6QScw25jGnpKEtVa+tGf2iOhFi72NWy3bzMdLjlIKWv+buN3CM60Us23JL4vqcV0
	 NE8pIxJxQ1p7Mej6gknKUaaopIn2wGhBipZWfxQ3RLj27vNfnAB14bkazwzM+9z5Gp
	 6RuOp51X+nWDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8FCA5FE1
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869403357.26777.11342490256130802807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a64510b9db6706966526ceaa0141ceac496bdce96c59c65802a2f127237b68
Date: Sat, 17 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768694033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39C52E974D
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753187993; cv=none; b=gQJX6wZ3EijpyRQNam5BcUe6dHdEWyRX7L/fzqhuTnAP/RSd1dCnWGHEVx4c9Rd9wW4KvS5+p5Wf9/KTg39ZVr31ApMbFsivopoD/EHUAhkyTZRnFrYDMPOp/7mME+Js6p9JGZh1RRC0hOC5bsvrtDxwHZp6b8KXalT9biFc+9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753187993; c=relaxed/simple;
	bh=nztwJumP9UCrb1nU4t1c34Ka5f7it0IK5AzX4X2GsEM=;
	h=To:Subject:From:Message-Id:Date; b=I9UkuWJbf9Wxo7DO3gebKvXLGWEgMC85ZGf89E3pUa9PO93DooSPX16l54QdiLa9yuSBoVjLsG3DcMgo8Xhg1MDxYWu3tLaQhTR6g7vSoectN4A7WsGGOX+dZsVsNhrbagY/byNQjF8u24wrlwGAUL9DreERDWZuSgBngvMV8CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A21qA9AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A21qA9AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753187993;
	bh=nztwJumP9UCrb1nU4t1c34Ka5f7it0IK5AzX4X2GsEM=;
	h=To:Subject:From:Date:From;
	b=A21qA9AL3pTZfsQPXD25lP/OQiXeXxoayMVy9SZQjizv8Ajy+etgWPqlQAXn79OVz
	 OpGnrWXagxq5pHVzDfMMvvpIf8dBNp+EjrPko78OGpa6U1lCtP5wOVt3/2vX/0k0q4
	 Yf97Cfrn5w4GGYE8CWzhNyDxNgSYsqMbnEYGq6Rcx/9nj3gS83O5KKfrBnS0tuvrJZ
	 +Ttt3wJ0D1F613EFInOHMNsu7RIHdBATyLtnMoUshPTluXUTtWBwocymw37VyQjJ2R
	 0nx+PcNFtitw1iFebkELcj/V8KL4Ex7SHt9BwkHuR1AXIwwH0UsKWHWt87VfvIHBqM
	 /JYnWmuqPjy5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9CC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318799357.14702.2059426903907821466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabd0d4a23fa3c2e8e47e988f4bfad25a33e409361271675cdfa8c5990899a54
Date: Tue, 22 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753187993

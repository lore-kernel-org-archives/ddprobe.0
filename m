Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A02E2A1B2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736684154; cv=none; b=qQofLEt/s66aO64Tz9x/ncVi1zrUNb1+19LrfwGaUah5qDyr77ZvWtJzxvNVODrULQkvjp4ZRIQozaJ7M9WbeSV5Ys6FZ6w/KSmBs0HTeULqrREri3jMJo5U75p7A1lcz670Z3yK9rVhpxuSS4rSPbS5JkNEl7Q/0W1kUkXX3DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736684154; c=relaxed/simple;
	bh=o9Nk0t6kALHd63agWX2UcfMhRufjvUQqKhqOKI/BU8g=;
	h=To:Subject:From:Message-Id:Date; b=TlOXBM7oDaAr39KORH5XY9g2ppyQDvIgkyqMH8zzh4FrAQNHIm4Gi/SxLV6n+OlSWFwkyclWPFOGw71Hy1TX0teV9R6fMaOY9H31jkDEX1lwph6Q6T8C/PR4fCzYXoCihfZ1mtf5rZaMiBOJ2IxRiOGgXQaxmWAi1ySpW0ACsxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ol8F3VrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ol8F3VrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A0BC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736684153;
	bh=o9Nk0t6kALHd63agWX2UcfMhRufjvUQqKhqOKI/BU8g=;
	h=To:Subject:From:Date:From;
	b=ol8F3VrXVgu/1ma8yMM1M9ONEUEdlW603wIEEugvxx5hivRhYorQvx4CcrWLz639T
	 Y4FWwzV5xtpxKTEzTASB55xhpK1/X9d5ZjnXXvFMNUSNRFFyx+9ZKASUbRLR82RU+U
	 kiiRHyHxJ50kDs+4H178RUfdIL4K6CirxjRebiDZ5AP45j6bgF266XoYlpCpkGptZ8
	 d7LRcsJ40VwINsNStDsfRaaR4j0BNBeh1y/LwH3ebrT61ImFllWANhCPo1waxazmWW
	 gXY+GP0CtuhV24iR9EfnGYuCdxByiWVnsqRbHxA/bv88KSNb9Ku1YbXXFpJxtGnuU0
	 z/ry+xGuvV0mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A10E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668415358.25682.9866230432894966819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7536426067b47356affd6f74f344bbd54b7c54896e0f2445e65508bdcc30646a
Date: Sun, 12 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736684153

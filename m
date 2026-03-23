Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFEC12B143
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774225493; cv=none; b=Jbm+1tiUh/4GStYoFHh76mV5MfJjtoHoqLZvX4g0rxSS/zh82wJEI6+rZd4xQ87meQnSPLkdlovSHjaN88cWrufPXVAx5PSsLRHzaJf0fuvCOg5EuCUBdrZ+hi7UtMUA5AykOVre1ZqqMyX+xn3yjOqSATIqP79deCaTmKBnI6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774225493; c=relaxed/simple;
	bh=FCY3mCGotnAF+/YAi05jxTeLQEKhv+0v2dLRu+qHIg0=;
	h=To:Subject:From:Message-Id:Date; b=RcWdASnylJG/qs4KvpdfwRNZHNfeUtnkFahTZM0wak1l/YXqBJVTo2Y8B9JKrXhJNFW0u+ZbJgfUZP4s2Axfx283rDjlVXwoSOXlDyI5SnbRa3wNjGAWK89dUyOoen+pCqf6sof8Nwlle0ZvtEV5rElOxJyUcdLTr1j+8/zqA8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQl+/LYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQl+/LYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A24C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774225493;
	bh=FCY3mCGotnAF+/YAi05jxTeLQEKhv+0v2dLRu+qHIg0=;
	h=To:Subject:From:Date:From;
	b=rQl+/LYvHHXokx0oLj8jlVCfpPoVkuX4G536zKul62Vk4XAXhek6FsSKmsjw1egFb
	 gpKaQR/zakxNeBbyinfrRrfbr9rEpvNfzRwh/NQGrX0ho81rCncFxNEXBP+QHEcLQP
	 2pGnctzmtaoRhcwFW4hYjPuzQ1SCivg8WA3znxVrsl60ad9k5quOixLuMcLfd4dknl
	 m8jC2MAmlH3+xGf8l1Xw/++LzHfSNj7CYbltUKF+L9ADjl8Gr/ZNRKrlji4H+D7/R7
	 xVy8r+30PkEX8xIKj+6vgCAGR3wdWjPLE6l8bfl8j+KavtY/X/jUMHjS5PqWdb+fNg
	 P49PzhidvEgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A16D58CA3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422549358.9405.1418445306666699311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e020b390fb13d71a1087ca2a59fb75da43baf1b9f3d12ac66c0a9cd602bf41fc
Date: Mon, 23 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774225493

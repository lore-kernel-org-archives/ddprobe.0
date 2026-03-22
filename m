Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273763009F6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774140894; cv=none; b=gScqp3ULXNEBcfgnvvYj8lkJN8KEQvFxcLyN1UxgFI/vGzquPz7wnkN5C39k6x/lPNfZOZdBAEOGs0czg1ZbKqSvFMpt8mvZIY1WrMFAciAvFm2HnE7nzFXYNSfzqlvhyAhcLKVrgn028beTWvqFwApteASzHiIG9sJnJTPU/Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774140894; c=relaxed/simple;
	bh=tqxCDIniKNC08y83yHh0VkEWuX8/yo43gZV5HOck0S4=;
	h=To:Subject:From:Message-Id:Date; b=qumRX/K5lilsFUbh02tXeoIW2a88Ti/uuIAv2wVVbvugxkOev6s1qaPBvVwLohFWSVSJcv+0yS7sai/tHj9kyw/s7wMrr5R6ODZc44UjYYucyG03gY6FM9itwhntQGPyI99+09Ke9yaRgXawX6VY6DnGFKmjqNCDa31C5MRmwTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2unm7Cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2unm7Cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7F8C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774140893;
	bh=tqxCDIniKNC08y83yHh0VkEWuX8/yo43gZV5HOck0S4=;
	h=To:Subject:From:Date:From;
	b=K2unm7Cb7U3TaCrLj8BM5EGKEE4cj5mSPKBPv8xVfYfi+DGekuaU62OJ7w1nd5QO/
	 N4ight9w+lWB2+PQXelK433dsTOywe6do0dg+Newq9myvgzrvhSm6xr33z3V8ZBHQP
	 sDvNLJ0aA/47pbBIrTa7MNInkp3BZSTezR6G8OaofRiHzM7VGdYmdxUBYP5qAATVOb
	 vny+5+QYj7lQJNlFb1Q4P9YxeGUHeYKRBJpasPVFxHiqTGQu03nkSPw1SabCkQriWU
	 cr+PkQQwa2yGoNtBOymVPhM7g5Gz0rdP5KAklSc3o3ZUU0ZyIMyeIVkUcriXAG4Wmt
	 ijF2XC5JcEusg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F3D109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414089358.20305.10098162617544828378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8157ad18111ce9571c21ac3bbbf54fde2cab64415573b0cd2fb140962a5f0b00
Date: Sun, 22 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774140893

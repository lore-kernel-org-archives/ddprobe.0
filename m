Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3088F156F5D
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741354734; cv=none; b=ejOG7EDjOITywoxzja91ipiuYxHHUqzaHJVvAp0GMqYqKOObgRkdE3bH4ooXW5LvdsvN1yPpLqtc5FTjAdvW7/NWHB+jbLQPs6LdCPi6y2Uft/H4AmGAEvV8JqtX3jyOpKYnXwwNT41QFyJyNMTQFBTgXXNLvQsL35Kayepkc/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741354734; c=relaxed/simple;
	bh=dwLPcxQN0Mw/s7ZCVqgNHQ4RaUzEvsED1jlF7tH1OfI=;
	h=To:Subject:From:Message-Id:Date; b=uSp0HoYUHQKESYX+hPRxGYBMfgL+N605b9kdAaqBvZUMgiTiiof7WA5fdVUhavNw8WN59AY4pfF4MuaOTUPRKVGXTgZQSaCfoDlSeFnezzlCL4m70fzq986HTwU6hRCEk3/V8RmbrZBF9Sc4NOGL6vVYQOy/WtPV2BVLVXpC7PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot1spm4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot1spm4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2FFC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741354733;
	bh=dwLPcxQN0Mw/s7ZCVqgNHQ4RaUzEvsED1jlF7tH1OfI=;
	h=To:Subject:From:Date:From;
	b=ot1spm4H7vcJ5/XrbdrS+UV58zQITHaopq+RToLsi3w8/oe2qN0ssfqUaq+zF6XAh
	 D1iiqQjSc9ejcS+xwwXlhci2CXvr4cBnY2KB04JOdGKRhG2OeWfOvsgpddsipuQWsZ
	 XHD8Tja3H90YEXTkc25DFYfT0iWRxjwcM/8zHaRviDNF2wrtrzRN2vhUdGoE5SVj/p
	 VfaJMIKlpnS66EWCWdDMVgj7iX5IDco3mqgS0PmhQ/HWBV7lX8qp2y7J1lVF2LKxSj
	 e44K1Pcnzx59QrVpasp220tQ3sGl5/7pVjAuZtT3GI9Bev2j6jRG2mjrJPMfXnYzTx
	 dSIsppzr5AY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989C2C282DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135473361.26377.14682004609164495434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ca7272d77721ea9e70f403fbc96086cd7f3fdc49732f62f906f2c7b7bc7855
Date: Fri, 07 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741354733

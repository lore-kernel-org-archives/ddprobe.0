Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBB5284684
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773000894; cv=none; b=bq/TrKKMvYxQ3IGe5fG0qLjpLsifopQeU0PfPASmtpWUjZ+rb9NmB1Kgq+hYGQHyM/3mOz3tdi69YmHJE2voKsHvg0f8UsO6wFIgu8rFu7LXFhWszkrbfB3f0rANIs1ZXynW03ZGxQ2pIxEF6MoyU5LSU25cPTuSelnMsZ3gYWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773000894; c=relaxed/simple;
	bh=vMDH9sLde7Vo3k0TX/3iSl0an8M2gRtZLtm426p+rqI=;
	h=To:Subject:From:Message-Id:Date; b=fsKnOfzM16X19KN4sAz7pJd2OpgdlPUah+V7tEmUcWn8/04tdSy588Ae2W5ZQ5yVy5ZR2B7xdt51i0Nwg1+5vWgE/l7U1+wIQjhOsh2RzKIpit1wgvdLVxkavMMZxOYeimhqntmbhOuWG8jmPA4rnfadau+oKKKJkjaCmuLF9cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBG4WsEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBG4WsEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B722FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773000893;
	bh=vMDH9sLde7Vo3k0TX/3iSl0an8M2gRtZLtm426p+rqI=;
	h=To:Subject:From:Date:From;
	b=rBG4WsEIK3yl2VHYeEx8my9F0ev7DXW0VGusahNgXFxNcoMxoMjNYDC0ASpdQu7Ru
	 QFHBBiqvMwTzrcuNh2rC8wnkLiehgZQRNicQ+ADT7LCVCkLVtsEsY0kmjFKQnu477p
	 z+144Zaz8zP2JClUBemD4SPoj7lbhEeXLlRyvXauCgF2owHiVcbmPT4dvoxUyPH+xI
	 LEPYh4gsa8LXdECuuqgI5bP4wVg26I/Jua4P2SOSekkJ6McejLRzDamFJ50AHSAZgS
	 UokFint00RpGEFb6DmOFEz1q6Npgfo1VfJA0ccNTgseCZIj9HLhX9MF7Hidgv4MXnO
	 YuX9UoxZgwCrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F637EA8543
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300089363.29732.6843026489079331698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8078184cb8b9887b43027edcaf1e7895bfbd94118fe209eba37865c1990bcaa
Date: Sun, 08 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773000893

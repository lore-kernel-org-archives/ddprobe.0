Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCFC285CA7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763604714; cv=none; b=ZrbGyj+oKR9+22cHtAkP4qzZLstYrazXw7mPVFI/d9BARe7PEaJTyeFeQTaGGHZpzA6hzpbfDnHV/lxTA6nufouafpxonw0bLaeA4TjH4oOlH0piWzHMOl0jJFzQe8GLbWYIX+4gqqd/BvKFvf54IttKwanHxCXoaYJSxdre5Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763604714; c=relaxed/simple;
	bh=A7dJ0EfGfnkHy0P5sxAX2WdUEJkdd0+KNOZAGQcoulU=;
	h=To:Subject:From:Message-Id:Date; b=FH6jATsEZ1uRXO0unAj96gjNfG49HYXJw+tbK6wJfK0GE7Rsg/MgkBdZsnxgUBCTOJ5+XjpzlPRxAiyAoUKfGhxF+s5xtocLb2R0VTs+OnQNLUlgBjsd3njEpday4Ren5XXWN4d5tFTCHkBDm5KyooNWhyh84Ga+oOKG6QC7ho8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmoFOlMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmoFOlMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2816C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763604713;
	bh=A7dJ0EfGfnkHy0P5sxAX2WdUEJkdd0+KNOZAGQcoulU=;
	h=To:Subject:From:Date:From;
	b=VmoFOlMd42/OFd7OQ0tuWTtic9SRnlrovuFAQMMtsoWFd9GJPt+P1jsXdazgKFB+j
	 z1Q6P+OhB0E6HTkQ9d4hKuX683DWBTcQT/U+6scofxEMUlhhG4yW3OUckijvObI2yX
	 3XtTBm+flGd4Lvv6nmknGwL2ElvS9HhIaSr8UBsSeiOuQfS5VNRUvIECocUh8QmK+5
	 tU/9MfvKRfkJ01woEePe0Ek9MwZuQHWDGs5Wb4MDsxNfV+QD1j3m6KrbyvPiyp1lUm
	 OlEqha0w5/wEhtiKCCG3FNSCFqxXGJYaVtDU6WYo9pL9bvYirlrXWiMTBWPsF4vV55
	 6sA2Jx2pZ2Lhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93967CF58D1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360471359.22148.9915551440834223231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396c116487f4c13e24b4f25853b8dbc18ea624bb3fe88396bb97fedb086627b8
Date: Thu, 20 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763604713

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C94301471
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783592914; cv=none; b=fLKrLfbqtMsn5CQRFKPwQ2EVjCboSXf5+xTMcf4/Nj9anNnDS9YRDwEDifAtffG/qOm7IF5RsJwHNmTX65lV4qJ/u+XK4Zh/nYwyXWaLTpy2XetURhQ+8VASpb8Qecxn4543e8cBwuLmEQYwmd07qa3pmep/m2KVvdfKL9sV55g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783592914; c=relaxed/simple;
	bh=Gcw+xqxFf0EPiL8hn8ZOsEIJCEog1ww0mxpuWzh6z3c=;
	h=To:Subject:From:Message-Id:Date; b=PtOESevgDfc5rQEMBAZl0hU72aQEDm2QSSJfVmy6XAD23dEwBDgRj9uFEv7UtTvzFgMtyXyoXpZPhPbhA+T4Xx/yk2475Cc4Qrrdf/jBnoPiaKDvXXH64SUV0LlXh+rgk8vOdTCgCC6CZiz6/ieEI+3aBGxuMIkvoBgwYcdsdlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAllVDYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAllVDYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABB7C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783592913;
	bh=Gcw+xqxFf0EPiL8hn8ZOsEIJCEog1ww0mxpuWzh6z3c=;
	h=To:Subject:From:Date:From;
	b=TAllVDYNa7BPmE3CumqCYc1hO0+U5AfVmRMqQ4qYf4GMY3smoASWqUaqZs4TXX6rw
	 EUw6+1TzDrjfgHGLjOa0Wggx01l7POr6aUfN8Xt40ElC1IsAd3THTXBKwkt0fTieWM
	 vvFbIV2ln4XHPvSry7Z4inEJOFUlwu7QkHbMBWWxuiO8z18eJJyGGrQyKL9EJgArgE
	 TUcmOLnZE4twNZKL6ZL9AhpBsBzx+5tJtteJ6ZX6B7DNH2fACHMiFV7sLvhb3J2Sy1
	 a9Y/ixU7HxBVZV3HCrRUtgcREybiifiu96icBikfQ1MRGTBWGq96o0vi0smMleRnJq
	 oUqIYQQYqmkcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ACCC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359291368.19214.18219931938887602912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617c9cae9a4c467867d9bcc8c0fba379a051196b2b06be09bc39e62bc99bdc40
Date: Thu, 09 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783592913

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CB628371
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771181694; cv=none; b=khNJwzrq1eD4bo3CkxBUjwynOiOx1fcMx+3QuSsEZRCKFGCOKFJ7yAmc4L8ULelltArzS3FuAZYj9sVeuvrjREgYyR02Mna65fMb1z+3Liz43mfbUDAZvLrV/m4G0lPrAUJwIH9jXf2+1p4fpri6FzgnLlczBKhu4Rh8bqJY47s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771181694; c=relaxed/simple;
	bh=45hD6pjikMJRaZ7v967bjCxUL66n4z4VCY2ETQLIum0=;
	h=To:Subject:From:Message-Id:Date; b=J1ad9AXFxwVueZR/NmrUcc66i1Rn1ltn5m8shf3cumQE6t92OGuXbvg0KhLiQza6lQgYUSehxcNjGLta1AW8tXKFAEK+INEDD6EXplBPWVqPGBYdKE0Wpr3Mt6N40OWZ/sfw6tyfxfceUmBTuuUrKKVnfnawUMn+SFypbymbr0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSm10ron; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSm10ron"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3076C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771181693;
	bh=45hD6pjikMJRaZ7v967bjCxUL66n4z4VCY2ETQLIum0=;
	h=To:Subject:From:Date:From;
	b=oSm10ronK/qxVTPHlSLBJuO/0+0VhEF12GridWC3/G+1PtnPiLuoAKBG5/AKtFIfB
	 fmzkxTT7qhQTrJWKKymjpdjdHMXIs7di/2DU1/fMJJudQpc8l4G3cLVq+kRvJbRQhR
	 ntNn+JVqxocmZ9d7mydh7JnmjinUjOjQcZMsbQWMLcXSd/PfWq9arq1bFoCvfFvmbc
	 xTnNKfvCtW2f6Hd5+hxomEvong1aPMWQY2l3rmM3e2yiX5SifmJzAX5voQ4Ghra7yw
	 3iYdWEOtHdZyL96dgzOurGkGjoz97o7xdj0xFgBFXgElZ5VN1VmG0GVfVl4jlFqDxc
	 3EfKD7l+hqRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7EAE63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118169360.2532.13045741873554810801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c49ea695093b789aa45edadf3c2e1260f0916306c7e9e6cdd094e5b06a9a8ef
Date: Sun, 15 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771181693

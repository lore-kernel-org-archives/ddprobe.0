Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0789EEEAB
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770892494; cv=none; b=Or7k2HgjisHr2TusnCXzabPrax7tNZTfjUIsKt6t+Y2Oq9goin3LQHlqypJz7VwVoMzqKx3LVITHqoWLYvIwJXHbxa6GPFsmWzyI4+IHiOVkkaTUgA1cFeiLVV+QBO74DkU+3vQ6MpbVwvX4ZWPKzUM7NLzw45JiipjnyylKCw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770892494; c=relaxed/simple;
	bh=aFNJusSBTl4shs2qA2CqKzcPeuSeTnQIVfs2FqWNwDw=;
	h=To:Subject:From:Message-Id:Date; b=Rl0rfXGLzlZtOyqZxks4XouBO6Wtp0DBTNWPKag4Q+IhaUK4EbvvX3cNDtRs+FfdzfK28tyceuYCYyML2XPJTf3pjWQJBcsFWzF1kgzwpzg8KCFe7zyQ3O2u/zLrWS09l4uNGKjEUAEVYPjhsiJ7QuFAwxYbJL8HXsTEBCGlS7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9tEJaX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9tEJaX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29E0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770892493;
	bh=aFNJusSBTl4shs2qA2CqKzcPeuSeTnQIVfs2FqWNwDw=;
	h=To:Subject:From:Date:From;
	b=e9tEJaX3Z4ul2Phj5nA50KgCuczhjMXb1ZqsaZW8KqXzf4rBfFs+yx/6J+GHdgUBt
	 2wLmvPUAQCfLOxHhpl8lCzghQQBQ2TRUaTqYmVCiUpkRTF1KD4ysk5hr8R6t5fm8fF
	 onA0pEECJZekenXtuC71/DI0y5MVih7KzgoE4ykFW49C9/GKdN+Qfsubv3A1y2TXUb
	 XMQ8VsrJWWVrvRBVe6IPtyzpwCtS64tLXp83W/wdjf1/BOhQPpH8NIfPMvhS978jiL
	 3TusvvmJGfxCfeTuye8um2dlhkm/ivi7uBljVRc+nm3Ym3scZUpDEbC8b5y8LMqUvc
	 yKqb4pxnb5RvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE7AEB48F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089249364.28526.17889851725721137801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329a67645734dd6a8b054223b4608e660e16a9dfbad531a21a338d9baf0430c7
Date: Thu, 12 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770892493

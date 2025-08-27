Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D17328488E
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756309794; cv=none; b=eYRtc6t/8otSD/yKl01QrJB26StMepVeZbKdPba3SG0LuRhZFbe+8X3ttjk5s3mNRsMvv8bY2I6JfrLiryp7iA4I0LtQ5gM/w1/yChL22MVAG//+bvImzH9SYAegMbwyjVw3BoGrL1T1B0KHjjsjdVKnjlpkhN/dOVgavvoOyAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756309794; c=relaxed/simple;
	bh=cNntWeO6pkejBetX0YSiyRlHOSjOFEwR5xNIwwitPpk=;
	h=To:Subject:From:Message-Id:Date; b=X0raRLTTg7i7BSPPusrkPKbvxWF9r82vkuKnWz5PnBtN3PULMGHnsG5XQ52PjuuFkX7WWPt3EiWEUlGMpEjZjRB7aBeTKT0LT/2odR6FpieHCPSmFNWJV3w+Tg3w3HYEtK/oDxk1YBjxu5EMAaiDZ6zxFkRbU6RSYZh4aTlJry0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj/JqS+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj/JqS+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756309793;
	bh=cNntWeO6pkejBetX0YSiyRlHOSjOFEwR5xNIwwitPpk=;
	h=To:Subject:From:Date:From;
	b=jj/JqS+8f/W7UZxs9cdUyuDx1h9URNc4MFlcuQ6XgHngmX218cwm8GfhIFfOEPnLT
	 CI+5OccKV/CPm9Oerk6yMczLtwH6oBQCo8aCfPir6bPuSoVvk5MkZxg5ywqKzbDNVs
	 sRWCjH7vfLm2si/ASYHjydKJ/uKddz/q1VaEOpP4Li98f1Aop22olZKctJKOPUD8Ab
	 kGce0vkcMBKh3BYbGVPpFJvojRbXpympm+hY8QljCgAjE4glWxFD8QvkLEeHTYOZiG
	 lco4ybagpvtAmML4RiFol0sAZKHnZvmquOZhx40d29t9eBfEwNRhezAx18N/LP+31f
	 186/4fxyuLg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C5CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630979358.29110.18244815704283031620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb62570af1555036d740b0d5cc0d7a4e5db39b7e98bf6abc9da2e9322f2e21b
Date: Wed, 27 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756309793

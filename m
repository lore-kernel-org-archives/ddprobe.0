Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C810F2DBF7B
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750160393; cv=none; b=Ttt4nYEht+s8EOdpd3C2HJXTe7eY50jLvWfEoLy1JVSVT7bRtnMVBCKA2w65dZnfJ95OvHFm60WSJnmtUilMW6a8vfYazURiG1p62aO9k4Vo+hpO+AzaRXMy8FzEbju73tEkkGS6tXgkwaSMLxrsfKQVxWBTInS2b//g1ltc/p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750160393; c=relaxed/simple;
	bh=zq88S0vCwRHl6w0jX9xbJC2PfcFWmD6tKl8Jp3l0vS0=;
	h=To:Subject:From:Message-Id:Date; b=bwEZzCIRoEIEKrVKGe8rwszVq+gGoOUvvyFDafmUPGuiRqzAb+GC/zRPQGlpTGFZt+WasoCuNbKsOkIoyA/P1/DAqw9h8Umka194BM66S+lY8AY05nBtH4gq1Ye3J+U49aHsUR8nFvAtfA6hC8RQyPLNtySinIXMN0QOLb5G+E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtD+WP5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtD+WP5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750160393;
	bh=zq88S0vCwRHl6w0jX9xbJC2PfcFWmD6tKl8Jp3l0vS0=;
	h=To:Subject:From:Date:From;
	b=MtD+WP5f/3MKy9+el3DNBTx1pkAWy2fEHDvSODJvVG+fa7OzgtJv+A2RtWqDFfxYG
	 rPZ3cz8JP1+w+R55djiWONU+k6owgkB8J6cdiLamO7d9zxBefwxnMO9Jq5LaY4uSVk
	 8Lr2d754q0ZSi522TivdWocaSi44uNL6EQ8+16ZIWbxBXxiBfAdv8JJR//jwRPHnWc
	 yLju08/jcZOYKVCuuPvhgNYUQYXXiXS5kAoPFoS+cCVhnX8LuDPjQCyEkqalNOkHpU
	 qqOQbvGhU5rsYI232k1ylBLVEvXhv1jRUCEpQwfxo7123v6t7KIGCDUQotsUoG9sal
	 zBSBiVXYdTH4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006EC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016039358.32012.15046324459794453058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be5879fe2d2651fa6fad18879464a7030c50064b16721b56ace5ae27f5f177f
Date: Tue, 17 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750160393

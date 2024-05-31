Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C2B4C6D
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717116863; cv=none; b=GFGeDogzz/9tr2scrBNcAjkEuDLScQsw12P8J0UAiqw0Eq0t3rNfwj2Wl1bRhzilcmSq6Ac17OZxychkYtIo3yq0rWNtcpNMCV9OVYDjqQRJPzyLTidJ9jQQCcpSTvumeaTignlSZFsXpwvf4QHD24TJMTLB/nk2GCFfTCvzxQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717116863; c=relaxed/simple;
	bh=U8ODXApN4aCrrK8DhLsqBQb+XPOqd0/V7n2z7LGvoy0=;
	h=To:Subject:From:Message-Id:Date; b=SBe9HLSWJCOU56y0Vdj/y6KRE+IEWIChmnLLUUHEVi5Q4OqkN9/0pGKtkiMvaXtBtCh5WIvQZGjxSkCDGTM/4t8W/2xXPI8p7rA2GAKt3urnreWnM4t4oejjquWKHHECmehX9fpu/aj7TqXQ6AsbSmYbnl4JitCKJOqpS2e7QUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBONspYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBONspYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAADC32786
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717116863;
	bh=U8ODXApN4aCrrK8DhLsqBQb+XPOqd0/V7n2z7LGvoy0=;
	h=To:Subject:From:Date:From;
	b=IBONspYsBkGemdLczcrzMwgzyL2HxjLL/SLPaRA3MeU1390EGuvQdTQOuUBcVqvR5
	 zTAJIeyNc2NrJ1WIRiTW1GKoBM+jULcolXym+CAn4BK5qUa3BvQhvFJ3ZZeHeMayzb
	 TGfR6bnCb78C96xoz8D4B2F7KKTowpawM9nMIgrMVcYeqT+UD6FpakQhiBxYs003LA
	 vrHJuhvi/l9ZLkmSqXXt7s8wPHaQzA3bopqauwqRqvVuUOcFFe3JQcouQ5eWDofHk3
	 76mBbzg9g6M2mUXAdXGw3rqijdpaw3U9n2qmE5VJw0QH7IeQfaBnX7g9k5j0jNlOXO
	 ANP5onRw55TTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE40BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711686281.7499.5237853248003638922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd4c55351f7e66334c3c0e45b27318787625af3eb514a54a34918973b197931
Date: Fri, 31 May 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717116862

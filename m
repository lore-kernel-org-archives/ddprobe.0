Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264C036996C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773911094; cv=none; b=MndvtGS9dSuWrY5HW1TXR9yodobZErauMVioP2ks7zPkxhMzQCfIo5epJ536C480R3zlCMziZLte5l9e1L8lScIrcFHohOSshkhwNc2grV/sVsJ/0WKB1p/idk5qMiGFCIuYrdbF77HiGTrttvwOjqV5h5JplpN/vnUMtwDzaOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773911094; c=relaxed/simple;
	bh=s+HvqOKREQGYy0bpvTqiaw9etNElRpUgvzXJKCk+iAA=;
	h=To:Subject:From:Message-Id:Date; b=cop/TXajG0/BqRkbiyRgDi0fEXoYT+x0+yJ1D2TyayFLLfrgqQphjH/PRfEOtrE3xCzvq8LjKI+0kCSJbRE/MAyeIZ1wwMl2Z0TxwkL5aM59kSKwJU86zlyeLpFSIUHDB69DR3vk5L8dOg26L565s46MVcP+zw1OLUwZSU8Ql08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI38pHd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI38pHd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CCFC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773911093;
	bh=s+HvqOKREQGYy0bpvTqiaw9etNElRpUgvzXJKCk+iAA=;
	h=To:Subject:From:Date:From;
	b=BI38pHd1SXMshoA5+Ucm1gTPLRGogIkA5pvEYqXerCgkmNebKFWDbx4Y3UnJuaJpX
	 k4mrbMNn11lYVA98qDpHpW8CKyy8lnn8gbSawVUwb64F9OLeSfAaPW7PKAy6QtbwBi
	 8xhS9uB7tqVxZ1X7L1bYW/UjYB8Tw7jnqVZ2R05FSjxwTvfP4eWyz7JVl5Tn/KjSwk
	 3fCltmp3tqLI+CHYUJ8tDxraxfs+gOV5bS6aWxnYSb1ZVpjNKnK6xruYlbwkkpkn6n
	 ARXr96VYVb2+92nT4B/NY5/YlimIvAwGC9pH3edZkhLgw7ybYtc1xZX46oMkLl0dUh
	 7lnNp4Y5GebaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C2107527E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391109360.28316.294401526187278553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ff512fdec99637b681005673296887cac801de8ee68cb71dd72100f6c5c2df
Date: Thu, 19 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773911093

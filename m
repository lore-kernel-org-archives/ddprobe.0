Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1127025484D
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754643594; cv=none; b=ifgCwaGUdYYxShXnN6FBovBtsgTtQcKrMzRsbHMwQF/boBOOtM/8WEMfuZVrK8jBf+bSTh2fAQJ4/RKu6H7QnLyjfkmMLTk2ffJmPL9zgQH3hVhy3RZzmlEueiVqikXvYhX7fTT0aRLVfpMRMTPYSZpxBVUbhHinYwT/IQOui5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754643594; c=relaxed/simple;
	bh=MREkBT+1Nc9w1VDkdC3uXAlGo3RoGTpLXt7gWkyU/ms=;
	h=To:Subject:From:Message-Id:Date; b=tKkUjodPjYq7pgnX0mENM+PoPr5N3EIEMOD5XRV2JJghYLBaNeQDBtu/Mch0VIxenIXNa8qo4T3zcu0kfKCgwS2FuHb0QYwxLKyWPyUKeNkKD/yDkJsY2Ca2OegBVYHn48dhOoHN7TvBfyWCW1wtNgxoiirA8FlzVz3sMVf1wp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+YPLI10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+YPLI10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D949C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754643593;
	bh=MREkBT+1Nc9w1VDkdC3uXAlGo3RoGTpLXt7gWkyU/ms=;
	h=To:Subject:From:Date:From;
	b=T+YPLI10C0FOvTshwfkw3SXe41k+zWrR/HjNUT1ghrR2KgzqekpRoqL6lNKcgIpPy
	 3aT+kiKHtJB7DZo5z90Xr8/7Mn/t1tJXpFUCuIMu4tPmM1REYXFkjZa/kEDhmX9gHP
	 NjcnKP62u8UfIsO7C2Tg1mLHGOUQyvoqiMiDrVXt32ItQHK0XXBvouV5Ae+7Tzue6/
	 Es1j3sKQFulX0UFSSZticR2rO1NAFk5Jje9Tv5TVYlfu/khNLUQUeBjnJaaoaOiYhB
	 cOaaDpTeQ+zQF8E1EsAxeWxaC+TZH/oSPIyIdsvAsHtqJqlJY0AZZWajCtGghuN65H
	 dBKM/HtLVlFww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E985C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464359357.12018.806792703912032868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4c7aad6e3dd23df447aa4f27c1411a6b22b79b0f6d0dc836d17f4bc0239e91
Date: Fri, 08 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754643593

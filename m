Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F293016E0
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772992494; cv=none; b=lt97tJvpOFhDF3kGYwBs4xHOrfn3kKBjfU8MfKOITvwmPGuD4BGBuZGn+wOj2m5n59cfOozSPJyGtYEIfpgSEkHJ9uhZf7qjIVMoSSKovCp71zomE0mRD4kVnJfpPCnIWL0gkWUBWCAe/5y9OvSlw4UABK3eUgfxNOMnxBuy0eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772992494; c=relaxed/simple;
	bh=laFSl/JwqiYjsYuuAZ5AzQNqKimVCxYkS854dErA7NU=;
	h=To:Subject:From:Message-Id:Date; b=S/oWN2SXPOyXY2pWGa2+ROTDxPuyE3JOy5Ax5fyKSZfpUWZbTxyWjxmzVWUgCh5GY25e+Or6VU1yG5VWjkLjzGfag+9gTZmwWvuUiBpwaAV9VDUrcoc6Jf1Ib7yRSEZLYOdsH4g72jQvT/9vBFpK0MSpv9qIgu3UMIoH1awxYFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDBpT3Pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDBpT3Pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C28C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772992493;
	bh=laFSl/JwqiYjsYuuAZ5AzQNqKimVCxYkS854dErA7NU=;
	h=To:Subject:From:Date:From;
	b=XDBpT3Pnu8LSmrIptT5bSnUK4X14/WkpcCCrMQ1OOjYYeEfj2oWTktyXMBQFtA7jN
	 t3vr1ALNiBUyV/WBVpKCc2OB69JwGtd5DRnVAiYA7b9sxfVOpa4TXregZoPPCkhFtZ
	 xLCjBDLKibzdtttPQjzupTgS5wpesXGJRWzBZGFhP+agJ7wGR+sEITr7lsxK3l6UfB
	 ghCkYPx2yKMT3uQ1dOpiVp8bYb3TgUXroBz6z2SxPyf/h2B1ZABFi/tIyYBptFdO52
	 X5P2XeK+Toa/M1mhuES6sf6TUBOgEtCyk54UiS+G5Q4oypN2aYGgdKBv8iANSlc8qZ
	 d2Xf/OaMHspGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA6EA853B
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299249359.29243.13485686054336947476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f9a7884a4c16a8f3d991fa193c72daae6cb98f748005ea092f042d0b216f4f
Date: Sun, 08 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772992493

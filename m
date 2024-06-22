Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644EB16EC10
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719065543; cv=none; b=C++qgPK3TZuSuDGC7yQPmChh90XWgPHUonpvajLxVU5VuoWQQy8zXAvkQPhdBSKqEGU90KbJMlIqZItD8gKH6V96GhDmxM85DJEipA6fBp7XWIQdUjlUfWoaiLE2ZBqsOYrBb9Ie3t9+pBuUeA9vuOuImsgpFDQn9/TUc8SEtV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719065543; c=relaxed/simple;
	bh=Wksb2tl8k5MFB1UIu+q07KD093ddUCme4MrXRTyqxs0=;
	h=To:Subject:From:Message-Id:Date; b=dfuYdqhIbnKiDngKmPl3+sAR0XSZZiIeMPkSaU9P0B1K2YZHktDoe6FE3iRyNTJaKsFSiG1dIW2m49FmTRqGHKuwCuoLbHQ3NtWcy6oaGMOWc4snBLTuTnCfBc1Q5xzc3kmg5KtHCgcFjRJZcp0nfUXbyqWc51B3v2cCLp0pSig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=la4pgizw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="la4pgizw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2806C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719065542;
	bh=Wksb2tl8k5MFB1UIu+q07KD093ddUCme4MrXRTyqxs0=;
	h=To:Subject:From:Date:From;
	b=la4pgizwMoCTUn74azPf+Uj4hXGsqEeRHcAWkKWtIjx1EyfEZBC1gCBjL8PimVWMo
	 G1lxiXSnxGSMM7c6b7YwdkGCd9Opiv81GGDa3yFlTArGd47hi0KMl0D/91yifry/K2
	 XvvUda7cwS17Q6SJ8tbPygoSdZF2pdjkz9bKc2IMN2pZQ3XdomsJHyTf8zg/XjAdBA
	 7seICdDo/XSJ9r9OyDdFSvveELoCUN/9GWzrKeiSYdBE8V5YWzPHJ5Itk9XK7g/FrX
	 mGuhcUJVmhPjW+tQyJxYHHGXb3bWZ7th4p82FZZ3AgXS1Q6zCfjiWs8Cf2mbMXzWUO
	 Zl5nWxfLYI+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA88C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906554276.29622.14955609543692133962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe92b1644e4e12591092fb44cc129a681a348fa58ca256cc2507853f18e6c973
Date: Sat, 22 Jun 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719065542

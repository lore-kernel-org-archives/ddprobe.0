Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9F430AAB3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771586694; cv=none; b=MRChHAgX4mLME0aHhDLbnzmEWMeAgaq1p/qs7LtQ3ZSjz3qJbWAZlYQKqY4NwHbG8ae7NgNJnu4WHhrQpeQEZN5lLzSBTsQkT8jWKJ/7akvoobdgAyWvic1cvzjAJEoMSj/1h5B5VTtG1A7Hdoi+y53DZmi/nuRu+LJyoHtHflA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771586694; c=relaxed/simple;
	bh=WxHoOMsFwJmPbppUgvrFYLNIwplxkFeM/xgc3nhYzEw=;
	h=To:Subject:From:Message-Id:Date; b=A7xp/zHQD7A1475FLVPiOI9Sd5FmuVQBmjWFWcyAVbdF4ym/2u25HFjoEh9KCnyiPGcn7wlBAJi+U07EQg5JtA7A9JsvIDqnlXP7EA5OPlb4rjws8c6WsWMehjcrs//heYX5ODVwn/5bxon7DeT044cNUfk3KTCbmADoXg0xB7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwwp9vlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwwp9vlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A344EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771586693;
	bh=WxHoOMsFwJmPbppUgvrFYLNIwplxkFeM/xgc3nhYzEw=;
	h=To:Subject:From:Date:From;
	b=uwwp9vlDiGBrX63o0LsKUK3T/gFUS19118GD0lfoRVZTp6PLVafe5/njAbUbFXzbp
	 lZ3pJY7rAxuAGVNTtPp00cMEtj1UY49/KJ0EfxKBHjIOPQjG6tHqR73zE+vUPCgjpJ
	 4Nabe6kOpEoCtLz2WJx/H5Pb7akUXU35bmReDtZxx4BGWG+0L9sfdOB3B5Y+bFn8ZR
	 /253ZOWhkeU6mDazf0KDYS2JwvPCyXRtjJlN9CA5Zmng35armHsmTcZX20qnfmRawo
	 MOUfFt9wKRYd9Kr7rMiG/VSyFwbraDBi+TC0qowozG0JD2ziVc0qFF5P2pQtGikWug
	 3spxGYFntWaCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB4C55190
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158669359.29576.7125444890484149008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252860ec68f9c459d644a397ddd92df78dbedfed15501119115b89842506664d
Date: Fri, 20 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771586693

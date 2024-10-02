Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17594567D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727856954; cv=none; b=P0mpQ49agiZ9WoliTkat1DFnRlQXVyXo78QEzHbdFWEua6oW3kOlyKizKb4zWaLxCpFFtZlqK0djGuQeTQ3GPHzebtaeFX6oiue2xS3dvF+D8nF6zjRHCXrGu17fV+W4eHCmAHtUjyQW/GpN6MnKXvcPujyP/hkD+9Jh2DC0ZDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727856954; c=relaxed/simple;
	bh=KjdwKx8Kf7pDki+CfD+s5ngrIt8pta3FI1/Q2uyamjU=;
	h=To:Subject:From:Message-Id:Date; b=c3Ee37S+fkCbM1AXBX/+AtG92TCQARkuUoHe80+RUhhAa2SUv7klsCsW3vHQjOfXzJ8L7ZZOJw15zbmNKJZ06Dt1I3q53e/uS1WHuezwENezHYrA3WAe3ubsap6zjpgP1vmR37IiX6LSBODFZ0+1jZ48FOO+gFybs8iTDLViwA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le07+HUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le07+HUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF81FC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727856953;
	bh=KjdwKx8Kf7pDki+CfD+s5ngrIt8pta3FI1/Q2uyamjU=;
	h=To:Subject:From:Date:From;
	b=le07+HUE1n9wYtjwq+qt9s89V7FmxLT3X3jk/hMIvUHPZy4VkvqBIueSrj6dj4j62
	 KEQRLR7Avpf5TLc7tLXLiYsl5x7MCIvBHg9Hx9aa3xo/0hUcHErOX6ycQySJzTbgto
	 b0UjCXnalnCNA2j3jJ+FTVVRXOtZBztiKY54l8+ysyaYwx/0hdJ21j8884MWQ5+mvy
	 +GQnST7rG49uS73PEsJwKx5QGDIQ5EHy6c7kOa1v14LTgfpR5KlNETXsMct+ZuEXM6
	 geQDe6wAg/Qifwkb6fBWRV+J2pskhwRXg9ruFngnO1k0VqWYJTc89xVTIT7uQBOM4q
	 8CIezOUJ+dmVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A538CF319D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785695362.18360.5140480346723840498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90037b84491fe80ac113c2ed315dfef0ccd8c1270e55beee933d73211d29ae43
Date: Wed, 02 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727856953

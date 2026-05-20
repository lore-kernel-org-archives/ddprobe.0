Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6EE375ABD
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779260434; cv=none; b=DUrweAX/OmBNgxiDTacreAV9VXtG9Pho8EIVrZ8WX5F/3dQggTNNvhNuA7xnqRrEH0kzrOHERodZ1CYEKhjwh6UupyPNQq73XAXD+rwdIj3zCNFDSBC7jDsBlnjX5qT5mbzht5heNFwOGnPq5eHkoxUBBLWLQV0DpETdTeUUFcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779260434; c=relaxed/simple;
	bh=M5hEr8bHKcdKMVhdab39ve70dn4Hap0E9pvRiiJXLO4=;
	h=To:Subject:From:Message-Id:Date; b=jpK18BjTYbUcB2ZU9Dr3sSUlmFGiXa0Cwp1mLbgCz7JRaS7z/Hr23w8yFMl30F4LGIEfufMOh64AlGqstBujYDC79OlfvMYbh0VpezVujS4hZIAv1385eHiw0m2k0zV/IokI4Jbu9fM2hzE0SYtB1STZ8ejHCOKi7wkm1SFG/rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRFzFTYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRFzFTYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C792BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779260433;
	bh=M5hEr8bHKcdKMVhdab39ve70dn4Hap0E9pvRiiJXLO4=;
	h=To:Subject:From:Date:From;
	b=CRFzFTYnXdk8rYIRMMlBpWi6t65+mQkZgasTw5WXsPtNzGhWI6/O919XXK71sK+WX
	 5zbXYvP+a5Sn4yaBBqFZn12LEwHeZLDA52dvfSEnyQ+lyl3LFcyMLg8yrs34oZmqTk
	 /JpyA5wg7qCxNfzs08aDXmO9t9BZjeMT9bE50U+ByooHnJCj/is+SoIVUJYS7xrVH1
	 swiwUs9QPaqzUV4JIsZiUaiMz6xV6LTcalkMsFXiA2o6c1A70p99GPJ+a5xFKs2xJR
	 fDruAe+7N6wo2JbffrVlynO2C0OAWYqyY1d+xlErP26F/cJEaZTKM5uK7bDVeT8x9+
	 ccUsHCciZcYtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD783CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926043368.16089.16120003776115499183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7bccbbdead30dba15eaed14c36b3764fc219db046858dbb431e79673570a50
Date: Wed, 20 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779260433

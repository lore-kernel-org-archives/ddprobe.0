Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668F91843
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718497703; cv=none; b=e+etu/YfBSNrQABN4IwIoQKs0t18VylkpfRj3v9QDg9+ikzGhUa1sChLnZP+cBbpNS1Ug1LH6OgEOGDN3QXpvJpI4bLQhU+eRF3GsQYbFQjk4GarQQZJkousKcLq2uykltaYFBmCIS2f5Nm4r+0/vAP7T7TBmFjpUem49e2Nlio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718497703; c=relaxed/simple;
	bh=3uH9Awc637OhyGlmITFThQ0d0MbxSyPeSIjK7c74rSE=;
	h=To:Subject:From:Message-Id:Date; b=FKdAD2tJgwIx0COgEq1b7ubZUteo+fGP65Uyh3U6zN0J/f4t+E4kac2Jw7nPU+7nBoo3s55E5WFo44oj9y6q4X6NgZn6j7isyXCiN91NEAcTe0Akk42PSUqtD+CYwX5la+rF3ytlOECmg5qU0oRR4gzaqlVtQLCw8xswCEWeXls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ai8S2lVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ai8S2lVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6449C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718497702;
	bh=3uH9Awc637OhyGlmITFThQ0d0MbxSyPeSIjK7c74rSE=;
	h=To:Subject:From:Date:From;
	b=ai8S2lVYiqto9Yt1x11KoCDDO5yO3wpA9kxhbuVCcDgL6S/yfJfwHiNo8b80WS2ws
	 G8ABZZXBXBQ0IM8ii49nQovQNLl8KzMQXuFTu3hBaykXBwEJktVwlwclVFHi2VbIP3
	 avxyCJC+4f+L4/kvRkVov6wXbckE9ll4qJ3iji9su3BunbSBhqFHy0PhJcgPrANVYA
	 hTNjK3y9sD7wtBGP69q822zYk6PyKgeMe126A38DcdWyARR+gmSjmacTfF9+h8lqTb
	 i57SFy8WaVwvXymcY/vqvoV8bMDhEkTTZMUpj4WWNva9G9HQiJx9fv4kmgA7Ptvtcs
	 w5PQ2IK4vzQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE63C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849770281.1422.3842359025457057250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6dece17ecc5bae4fa71ef1b8afc0f02deb71d2347e328b3943be3d481138f2
Date: Sun, 16 Jun 2024 00:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718497702

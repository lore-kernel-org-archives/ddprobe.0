Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4680B13D8A3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732951554; cv=none; b=eJDtF/S1qOXSpdeGb0WEfV+zGJ/Qga98OLDrwz4C1uYOqURz+BJYukEBokgBrJHRMEu6YgMFOYrZvLdCJdVHb6wC37Tir5qXD8Z6la+uWaUAO9kxB10BhbVp710xagxPFZKq2uPajfTMnBFVVqzDJQ2Y9Of5FTvzi5vZFTmS1Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732951554; c=relaxed/simple;
	bh=MBCJ+vARa64TSClgJ8CDz+CiomOBb8VL/o7gjv4xp4g=;
	h=To:Subject:From:Message-Id:Date; b=bIphAbQJOjjunWXQaVCrkOkQjYqemxCyOCotVxBghGhn8zD42W8dmET09OXksN1Osthmp6Gmoh3NobWWO2p12kDHi//85ikFXEkDIPOw5+9XM/zi/u0zOvV5ODTfI26+KjqtWbdgEcU5v4ja8bCmb8vk0pXvueYNUJYo3Acwltk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI6bp/0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI6bp/0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE34C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732951553;
	bh=MBCJ+vARa64TSClgJ8CDz+CiomOBb8VL/o7gjv4xp4g=;
	h=To:Subject:From:Date:From;
	b=OI6bp/0znUSQ1sXmnW/dlb39HRoFTDyWAp57p2WYYYJgwYQS48EysHV4VedeaEDnG
	 tXawhaACuI9w69RRWfG+aMjIg4gGKTQf1tXfQeqIIbgL/7e9A6IMnT1/O6sEKuK1UW
	 qMaP/CPysy+fBPt+RJkF+PoKZkjxZ0WSV12vPTqpVZQadXpnNb0cQ7AXhRWS+5CaKB
	 a5He0LX8UyScaxMKbaOe3WVDvpKgnVpPB6HbxH9LKf+l5Q0gZZfdiwUShwMLxv/RYf
	 q1Zk/XQ79Mm4D8Wc+3DjkgA8BFA40wzNpQBPe2MmYzy4ksg+maCdjEltsr0i7XhP0p
	 y2gg+40rSAmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9817FD735F3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295155360.7158.1949982694432549375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff00ba1bb05568af2894dc1116021a25aed39f215ab185d1954a8b1f10c274e
Date: Sat, 30 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732951553

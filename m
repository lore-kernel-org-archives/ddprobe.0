Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6701214B950
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788720034; cv=none; b=iysagRw8Dis0qvMWG5eEdE9dT9rWEJ71LYLuXwwgv80UH0CQbefSM0zem2r1Ok9jrpmwTM3QmWJowZ3ngzSkj+Wqy0GC0a1Ji3Ogi//3gJ1KKCk9EvhjmaKSiqhENoQHGG7ZnrB8Gf+ZIr2Gd1uOQ3oD41UEaxlWw34b/qPG4+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788720034; c=relaxed/simple;
	bh=sa/gaLVMpMb8+qjvHI75sBgCg+0ide5vRpTkUbvUab8=;
	h=To:Subject:From:Message-Id:Date; b=hS0SrnShrfZTGwXvAJ0dLS5U7kRhxUWzHiaqXnom7Am/pL0xSWASh0sjubtNtga5tjUyn8CDpfToi/vyXQ4Exb+YtqkGm8wak6jQv/6gAQD2kto2bhY3yKlBbhaDR8K7mDso4ZA6KlcC6SJjxf6a5/ifG8HukWdRE6S03T5osu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8nFB0zF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8nFB0zF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE18C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788720033;
	bh=sa/gaLVMpMb8+qjvHI75sBgCg+0ide5vRpTkUbvUab8=;
	h=To:Subject:From:Date:From;
	b=k8nFB0zFhMC+o0A0zhBLKN26y4CvphzgkLMN0fXqw+jTKmLaNYkufmtsNgNIOa/2X
	 JJkHDimo0xaWV86u00sEhK4XVpO+yFj+jorDwKK2cnvBR1JU8DaC+sB+VnuXUU4XpB
	 MJTCfhQuP0pFwOyz2WlqAy97/cadbm2keSlTr8ECbcjmivuetXSoZDa7M7WYYmFPlD
	 9+YgnV6eRmFMaP7Lg2HEesuj39LGmdyAYFmNrg5Fw7ed1V97HdcOmmEZot/d3d+f3f
	 8WqI1PSGg/yWARLC3WiqwkH7HR9eu6mMgDDKpFu6pX/aOJHgG7hbP5Ck8IzsgYc/uV
	 WW1o85S6JgkyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E30C79FA0
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872003372.21505.11066409445712076757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab920841d5cc3daca701af11b1e5af99b477c9ff793ee892b1847c35081c92a
Date: Sun, 06 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788720033

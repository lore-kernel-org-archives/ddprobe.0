Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E09FF9E8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776178054; cv=none; b=YETq8B9WzWt4qWHz6RvGOdHMaOxE1skXYxjASfrPZ7+YXZsrnF6G0cannhmhbYWpMMonKpZk9f77J76hsiAF8Sfo3/NoWy+dzHfm28vM0vfCY5updj31gDMpiqi1GtAl04UYII+gFU5FFV5GTHO9YXXMHOT4cDAAfyhy7Vomk7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776178054; c=relaxed/simple;
	bh=BojCE4yv5df28b8NxidHbhUtrQ+j34xhZGxWKmZaKSI=;
	h=To:Subject:From:Message-Id:Date; b=JPGeCwH5EZO6LJROZNVOiXKRxvqglaCGPeaHI8WMmYx2WgKgGI7upjXyocYhlozJJh2wTPa9nwOjoSQmeuCTHyUtz4/0sdfb1Qx4ZMszcklT6XaY/sCJ6lFNbrE3y6sPOx70B/6Nb64zVKFysWLAhJUC+qoBMTcMgZetvxVC6GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNZBQgYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNZBQgYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE04C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776178053;
	bh=BojCE4yv5df28b8NxidHbhUtrQ+j34xhZGxWKmZaKSI=;
	h=To:Subject:From:Date:From;
	b=UNZBQgYbTT90aBcXihQOPEpcsPzjQYIFNocP8qI4HTrFmxgvWl7r/WtBuuSZXG3fs
	 kEuJtHF/lsh/6ey3AeEPH+UkkDDeDOCnXxSJ0jbpjjdvaHN3/bmWqh9MuAVxyZSpb3
	 sKC/8MmB1gU8QJghHZxOGhVWfCc+1hdFxTVju7kE975TqCgQyyE1SLPVmI03ok1Fq3
	 1sIJU35M9gXpk4jsVkDT0y5OQZlKF5HyoEkT0aQWqui09dcDC/Suh6k9UyRiTSvjLU
	 ZBOOwYQzYYKMhNPSwfu83KOgUFE8dDjVrUjalHDyLfdLQAZ23Juc/wi7Cqi/WUthaA
	 O7XqT/rzv1n3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7715F9D0D6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617805373.14870.17090468211524967442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1832ead59ef7cba1c06bdf42b3d8dd38bef7f4e51afdab84823b54d7e6d3b368
Date: Tue, 14 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776178053

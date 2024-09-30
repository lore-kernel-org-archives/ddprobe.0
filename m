Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28212145A0B
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727675754; cv=none; b=hu8CIZ3VcP04DvJiWbHxnARDu/ZkXrS4VnSFD1J+lHjWTqR4c4gBoGK5iiHttwTaepxR9dvtzWYyhcjYb2ouItVjqgAj3/T3id+3M4GDP98wWBKRgYMvwT0TnJQUG/01Vq0qA8frsBSaR5Yl82DSMmvYqmrOzbQG1Ea3repU0lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727675754; c=relaxed/simple;
	bh=IKwRzF+6oqz+5TzfjABbtaIcOLZZA6Ed5RcfFwGymGs=;
	h=To:Subject:From:Message-Id:Date; b=s8JQ8+THq2mKLwQcX25szh6JamcAo+bWTe/hFC4GaUtzhGCQkbDlkURErRbW68+kDD7cpU+yieyO9HL2nNJEAJdYIienwjH2rgeQf+XdbmYQKdJnzTZ9yibxsOFIzvMudpAqzlzBYperhlHUd+A3zxmGSSGfCO2/modt8KUqnuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9phf0nI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9phf0nI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6357C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727675753;
	bh=IKwRzF+6oqz+5TzfjABbtaIcOLZZA6Ed5RcfFwGymGs=;
	h=To:Subject:From:Date:From;
	b=o9phf0nI4yJodQJErZXNoqHaUaRvTdZlA8EZb1X34JmNhnkilg/E1uItHCdQgrPIT
	 V02j1fY/5v/GHSIGr4aQ2qZtw23RHs+m53MS2+mb2wD5ptuJ4YnRFc0iyeDfWy4Fe9
	 ZDHwJFDpbugQNfYXi5QTy5aKJ3HIUmyg6gU0q15lAG8Q9zWnwN6djNsyPdYVEdqW8/
	 3EdrFVByDsZoC/6YsNdAJkqHQkx5xsjvpCw5xKuIU7hHHZwG806uXI1NUlEdJkgcpC
	 hrwnUfhPuAaqAbiQ4RRn7g8q1MLk4x7QuZyNMH7sdd3ONT2d33VLvuMPUHTyKb/37m
	 Migx2gjGqOGQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9929BCF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767575359.6695.11492605234167920441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5140dd82d4a15413c30a9256739d2f5c06905d1a6bc9327f33d06ad513fcc24b
Date: Mon, 30 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727675753

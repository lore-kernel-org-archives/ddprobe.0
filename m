Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42261E5B80
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743191394; cv=none; b=k/KKx4TMi6HrrlPDmti5Zb1sJwm89UqXsfVmU3OBUbq4odNNxy3BW8V7hclAs8pj1ZRNd8zEIaCqdgNpwJK3KGyEXJ7kei0kmlzdndkGGUYSmJPeVqxL0Mg2v0mqloRnkxs+d2reO1Pq3RkdS77BPkdCRSkscbhSf6AMt1LLOYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743191394; c=relaxed/simple;
	bh=gPODnHlBqPdSwhIwSnfpVuqiB5xue5s8mcyT3NZsm7s=;
	h=To:Subject:From:Message-Id:Date; b=Lrni8bh4E+3Ugy7a6Nt2dR3REnp4K5BMGToEKOXAoVBIcIJnMTQ1SLv0jF6eRE5oAmTSI3eb8UflLFVVNYA+9KGJEFZMzXfRzxnwicR4tX56Q/ggZs4iIoxjAiL+QvqEsBwgqvEw5Jsb9Ai5LO8S2dDP5UIxXo8oBkQOSqb0jU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qu41THK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu41THK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA742C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743191393;
	bh=gPODnHlBqPdSwhIwSnfpVuqiB5xue5s8mcyT3NZsm7s=;
	h=To:Subject:From:Date:From;
	b=qu41THK71x6buB1GZbsgkm6u7I+ZlAkBOuYvqw/J+nf6rhaIuZyugiMYuAgo8Hgwo
	 zPf7Ln7mvVV+80fvHPae0S6Nd0PwXCOP/gco+PQcrJD/J3oyCl+MWluwoRg2dBru2t
	 lVPaWun6sE23CHajl2ot0w/PiS+ampxVhrppplsqmi6mSy703UQ8OYKA+qDBLPlZ53
	 v8grs0f8tycXfTr7eGxB21fZ/y8/IV6HBsvxVW4zUg83+dJwQfUlPvYgFTdWGNrcW/
	 +7hD6gdYWi3YlmZpgnjBuVgEX/jUX989UKyVqU4l/hOSF6DU3eWjTKCb0zloePDTNz
	 2YIqzJLia/u/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A444EC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319139360.20499.7037283477673548115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86282ba426b559d32ff879858aaf22f151ee64f15bb7302d042e9fdb6c675b6b
Date: Fri, 28 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743191393

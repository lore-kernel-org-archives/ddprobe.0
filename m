Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A18619342B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735917954; cv=none; b=Ln48Ur6E11ySZnk4Jygu+mWp1ivFKThAemr9CyKw7N29+J/ACYKTT7XTkek8we77b5nrsaW0DNyk1UvAVBpALZi8j5+nHhP9f3Seo+sAZj6/e/5lHTWzFmzmtblIVWk7Ae9HKRQy+1BILct/qRx2br1++c1DLjbVFlK4E8lzAAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735917954; c=relaxed/simple;
	bh=38D07PFyUMxWUjm7W8UknEXG38g+lPeW/Z7N1BVFW/4=;
	h=To:Subject:From:Message-Id:Date; b=h2l2YGIVSqs9X1/icMFsRSCxkPKuMeMQvc/SXn7h5oWOYlXETMrUkIJRZvqjOAQyHD0EXVrdndKQfEUUMyblM/7wLZsCHKr511CpRa/NzCc9tTmM7B7pgWpMOwICpHj7kfslqxOWbSoUngFosZ/wz9MMHVstkRhKtumJuUBMk+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoGx8A62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoGx8A62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46A0C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735917953;
	bh=38D07PFyUMxWUjm7W8UknEXG38g+lPeW/Z7N1BVFW/4=;
	h=To:Subject:From:Date:From;
	b=AoGx8A62hoQoZPb9aZG7d2x0m5N98CiEWcQAgodzCcoLRmuUzie+2/xUYZOBstKy7
	 5WhHgb63zPm/aZQa0JB6qMJeY0haLiP0l7/0VlRh0FyC0Zi95UQPevYTfCR/DGYlX1
	 wRejzzS3lCk5mRRGQ2nKqkA28slMYNEC2EOlUPl4MMAm618xWqPWcLb+3nq85QxzkO
	 4l0+/IHnv+1QY85yClyJkCpcmSSgRkgLlvftbAQJJSk5pQqrOHtITZ5AAGixkSU3Mr
	 obVutdgSxrFnRPRnwYTpP/mJ/mClymehIpKPRGqHvsLVuN3oG1pyUJ9wIWrzOaaN4d
	 1+PQ50+uryMlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8A9E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591795364.30427.3069051457023099712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a815711836edda3a2a695d2c034c1dcd3f7232fa4f20a40447e916cb9ccac07
Date: Fri, 03 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735917953

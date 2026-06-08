Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397F234041F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780962274; cv=none; b=ATQ5Q72rakaQmJ3/7IOZ3erqaNa8zPoYsKIDGVZRUhmnfYaOi6nWtAo6ONPjeFrmL3fBGcW5i/Tug6ALdBFRBSGMcu9SB3QtFST9I5CbCQI/GbXD+lruAjPRGI8jWji7wI1sQ5d2Aa6Zd7tBA18Sx+6Ltrriaw1lHmTz2WRkm0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780962274; c=relaxed/simple;
	bh=ZedxMM+laFdDWdEC49loWE9+qWnlxK1+BNxjMjebYdc=;
	h=To:Subject:From:Message-Id:Date; b=ry4+lihx3Q+Dy2dZU+r62zmuLNzaHlOTt9hRb31TtmDJLi+xWSGygooQCPoY+fJ152gLpY1ucU99bJr0zQTglhuWh78Xfu9mhj5DRdHeM07/zDhXCYDRXalmfoPq55vV2brQLATztQtwsSSDoXEQKSkPBRNp9sTR9tPWfZ6Fxm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpZoI+pt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpZoI+pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5901C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780962273;
	bh=ZedxMM+laFdDWdEC49loWE9+qWnlxK1+BNxjMjebYdc=;
	h=To:Subject:From:Date:From;
	b=HpZoI+ptr6BMgicXhKO9IQQ+yQGaGORkJn2LzaCdNJZW4v9w+eR+DpW0lUTvXlGiO
	 ekgdlM3nxJVIc5CQEaxpA9F9TUI/r2txhFK/zeuoQ/iQ0LmwTS/d3OmThgVHS4CRBe
	 HmnkL0LRCybmQ5caUoJU5r0HK9wTcT23IpBkGh4V+ba9eccV4mrxEs4GfwQAyVycHc
	 o0vJ7RF7DJrz64yz/6yvK3XgsLQzbwLO5xJJFDg2QJTgBHUnShElSw7HWD+cqZDINY
	 ir/0i/u/nVTwGU98H+QlymCvqffesXPV2J75el+/5+8JfsaGq1oLZYdHxnf79TJmy9
	 JpSJQ/hvPfR4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA4CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096227369.2357.11042623141774632410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f96e684e3bfd3800e7d386d37f4b8b598dd7dadd58939114bd09dad6a63e921
Date: Mon, 08 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780962273

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CAD39BFF4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778365714; cv=none; b=WE4zsFcjk9m3FG7869XKkTQSjevPl6Yu5d/2d5AkYeDtalACinTHi49zqCRAf9rCvBtS5iDX7b+5WXykzp9d/GR1MR6BUcjGr6ZQkLTtGc+gfr2vIhZnSSs4JWcHiJeiOrRRQpF86d4Ke/2+u34KWeYp0oqxJ3kwhBw/Ja27vVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778365714; c=relaxed/simple;
	bh=BV1tg8kEKQVV3O7kiXbqms1H8U8PevQsi6rmvqYRgEQ=;
	h=To:Subject:From:Message-Id:Date; b=gUrSrEdYUk86aeedsnoH+LZCxlTp2u9EGal5xnlDFSFs6nnR5FNb/R5AzSdpABEDAvFW6Q3tUT3qzAh6iANkvl0DgDY77aLy350tiuJub1N3XR8vjjq8pBAo48FWLwkOpWc133owTgkHwexg2fNIDSj640b+zIUjSrvT1XUyAls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm9xZOrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm9xZOrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36BFC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778365713;
	bh=BV1tg8kEKQVV3O7kiXbqms1H8U8PevQsi6rmvqYRgEQ=;
	h=To:Subject:From:Date:From;
	b=Pm9xZOrS9Y+ATEuGCgOTewl9qBa2xtx47RvvPhNv//CRrzdzow7a7+GzQJGztEZkf
	 FwTpk3hXDaBMN1s7e3kaPO0bpZLblV7lfAWUUxxhY0fmbU0wZNVU56N2zFrZ233VTM
	 dq+Agw2/oQi/Do5PFoaEIQN0HqNLgd88xGnNPiY4Fbot08weyh3tf3gySspdDDFKRU
	 VVRLetOBXEgYyooLRDYxMHrjz56CShUHOq4R1pt6p0eoIAIbY8hQVKMfpprAmeM00v
	 QpVxMbmnJAn7+cGZp1UvfCNZCRYF+gWXsJ4zLUtqrebnVjbWf6ILrIbVLvVDJP1RWL
	 0R9MuRUg45Wgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC368CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836571374.31937.7451258371610877884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a019d94b307e035d949c39ae79ca7b29e8e3d7b3d0625c541880547f39a12e35
Date: Sat, 09 May 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778365713

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A5F3D6CCF
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789303234; cv=none; b=h93SlvZ5mKuYrENvmfQHaP1oP5Tgt5fj9+cZmFwPpFR5dIZEXXNYdX2H644b/2Pd/khq/bBImp+8SxMc5sYDrps4WmRKHg7R+0kleffYOo6ubRYqH1FZt4I539JzJUbpPiiUKWHqi7dvpEgNPmXWGb0jWUlo3NyuRTGqlfCV4CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789303234; c=relaxed/simple;
	bh=AZ3PGdtf/cdIeOF9u3Rq8o1zHjeW8EkHXtFDUkB0qm8=;
	h=To:Subject:From:Message-Id:Date; b=kaOHgrFcsEytVyEQNtyPJiy+9Gp7tVDXywPvKIuSyS+izp5zT69yuqAYMaLmh8ka3B/2sPqjPEuRe+/FJvko9UrxGtJtk7sdUtF2z/WF+3wTxEkJ/1UeLH9b/TfJhKWoHL6VJ8ArJcHxQfkwq03ttWEMGrEtqc0+MQ9w3afQOUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYKepO6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYKepO6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DF6C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789303233;
	bh=AZ3PGdtf/cdIeOF9u3Rq8o1zHjeW8EkHXtFDUkB0qm8=;
	h=To:Subject:From:Date:From;
	b=qYKepO6/THH9HIlisF1OI7KpHmMScWB9JE+AM5sKuBFbHJVZpumuqdDC0wuTHgTRC
	 ZTotkTW5s8A8ft05L84t28ATFNFMgnL71wMQ3Qb3ReBYzSj52WS7M3DGK9JhUsUXg+
	 ljddNtbv7Xp9o6p1nMK6eubAMIDNd0FiTXi/eVktS2o7SHnyqf94RHre3RbjOxu3Lv
	 tRVHntKeCfeSPJow8lIapbNJqCDrbJZ3DNDV7Gjw9ct/ryaZqyZw3wudM2QUyvydZh
	 N8cdlqjQvgrI+4xSGB1wDpNlUG4t0Ymy5w36iYZWQ6E/MyVfF79HTyMVEUHi2Yqm8M
	 MSfMcd6PKbjsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC87EC88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930323368.3131.16846998800217556119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89e56eb50646ae0cc2f18b0d0b9491b35ce443294f51bf5720e3af08c7cb274
Date: Sun, 13 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789303233

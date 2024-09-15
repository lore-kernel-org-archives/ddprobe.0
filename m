Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D58B125DB
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726406154; cv=none; b=U7yprYB2GOqKYTvfsZ9m6so08VPoJ8o7C7WKg7KF8Zy47SdWVPiY3VuDfe10CmeGBJ+ybugSO/uE0F5WYR6BhDDZuywHbNfPFzK2uAtlVd/q4JcgIsGG+WKseZueEIxxtSIz3N6wI7GIlHL2hSasU3YNlv5RVdfQAo4Jr6MbPCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726406154; c=relaxed/simple;
	bh=Xxsq/Ky9zi4Am+yo224On2/hASfOVP61UGNHxWuiYtI=;
	h=To:Subject:From:Message-Id:Date; b=SuhdhX9pUXPkF7xPvOrRkLyCXZlb9oJffvAihA1xqxUKFEfTr2aNM9IJoRC3M3RRnww/bYu9ZRyOJxgDRSctWvoykzT7Em1Kh44sTb+wHHWohtWwP/j/6EWupz00OnE3YHfN2TQTHwA+n8NAg19zbRipeAS7zVwTUQvWWdHEdv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMSDjhLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMSDjhLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90E9C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726406153;
	bh=Xxsq/Ky9zi4Am+yo224On2/hASfOVP61UGNHxWuiYtI=;
	h=To:Subject:From:Date:From;
	b=tMSDjhLMgXeSkg/yQOseQ9sRrMj6/ZwOhq+h37S5h8A71QG7ujQzG+4NlRQHDKRvj
	 MIQ5yYnSLFOB7BqzEkA2HDUJF0JhU2yjaTWnB3/1OA97lfs5/ef0ouilQ+h/aezMC8
	 xxirp5NAf3/Urjop7WMEi8hWXV11+zIO6z3uITc/C2ebB4erk7XpAMwH5UtHSFb2e9
	 6jWtzLZY02BcAaluL05rW8f/GolZrAq6NzjSCi9IxrE7NoiCSM2LD8julFDo2bzIYe
	 u90vF/QmWRR2UqglR3w66Q1dTjjmWhArc7Oc8NllAUMzuxHwoePlVUkYVG4uSl0+dK
	 7tRwMvz8L515Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94461C35FE4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172640615359.26067.12929377587260346999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6574363009f584a58e563878478a2ec26e37289f2ee7534800b9ff3e06cceb
Date: Sun, 15 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726406153

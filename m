Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD783803D6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776657454; cv=none; b=D1Xc6K56sGbM3W/bbdfN4yRGtG1elpecoxihdGqQiscKvrBCN6LUfHe1cfA9s3IoQaCov6xUKifSmUu3JJ4sXbavXkuV6wABZJ7ByLvB27o+cZP0hMI3bjh186o2z5Q3pDmSTM3JuNyDRqNi2T1/lCHoey0T+He8GIsgDnuZiZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776657454; c=relaxed/simple;
	bh=kT6HgAy8Wai+LYZQGIfJ5b+BXjrgS59h5NoAwRu5x1c=;
	h=To:Subject:From:Message-Id:Date; b=AwVZvpdIQZ5Dr7g30ZmfrB/pBaZVNL1v+TmBv31ktzDNA6X3yYx3xlRc4Z2BoFJBOWRyR+czw5OIi8ID18pikqY1W+dw9LugDid9GGFQ8PMYE1vjHLw4feEL0MvboGVKZphqaH7aLGlPsmzK+M+gvYa+VwFKPaoYqXO1/30qk6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFMFKgyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFMFKgyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9CCC2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776657453;
	bh=kT6HgAy8Wai+LYZQGIfJ5b+BXjrgS59h5NoAwRu5x1c=;
	h=To:Subject:From:Date:From;
	b=fFMFKgyiDlL4B9vn0NILHob8QarJKzri2tYtL0hPlh3I1YuJygCqZscvUEV0hDsbO
	 J2j8uLQJY4ulxnnQEN9mDxNFt1hH0+ei7C+tMiF97dauNsc3K0WV4LwFL+X95dwoK8
	 ZQqojxGyDgaBO0M8aotkoKs/4md4rjFAs+UnhO9RJFOJkFs/lwBmrX5HRrAqXBMc10
	 mSeSZpc7ppirwYccRsXt93zMSimKeeXR+BttrjFT7+xfx+yGTeeQleu+EMV6C7Jnk0
	 Ugt87L+4XK2Uwmbjqw1V6cODVBKJe1RI1wzmo4MXMwYn5Z0EZoM0rU3QVoyG6WjmLk
	 SuUBuEjssDZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF73DEA719F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665745368.3641.12452908982992107229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ead3c772136acea3ff7403871c286dd6699bb768101f52e2f5e8dac04d41cf1
Date: Mon, 20 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776657453

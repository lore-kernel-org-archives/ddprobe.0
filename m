Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD112745E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776232054; cv=none; b=F6jqbgiX2s3vnbWwh+vMmmmdT4LiamEikbys4l1pbAf6fF5clekR/tTpADmEE7eIURHZ6hDlV3RPRjBTJDJKq14e16ikOcHax5vKBodNU0Zql+YF1b5q0wlHFAsBLLiDCvkmsO9ESz3F/oTQ4JJ4+ooMmFxh987cX/av9NLyysA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776232054; c=relaxed/simple;
	bh=3ZArwtNh/yAGArRoWbFwrQ+ijKfT8lD/K94/dWKJIzs=;
	h=To:Subject:From:Message-Id:Date; b=mtVnyyUZW99Lvv7/M8hMMf+IU80zordpTxQNLrRdTWBmRec5niYasdK+hElbIl6nVrRe+zqd1MyfwEm5uwpkwCN55YNxOQ8IzDVorWIle/jK5KPT8LASW+rPNk0+yBZ3eRvzWX4xs0xUaXVvsoPTxsr62HXifuDTDDC35cI1mk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffRPy2Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffRPy2Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7964C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776232053;
	bh=3ZArwtNh/yAGArRoWbFwrQ+ijKfT8lD/K94/dWKJIzs=;
	h=To:Subject:From:Date:From;
	b=ffRPy2EjxP/oBqplcIa59Pw43IOKcUIyUJUKId7oFndKNSrzIVURZHMDn+FHgI7I+
	 fceTWZc9YKgohNDpwdRyZtu16kvv6zTf7Yrat8NPiJa6+pxF06nDzBMOKvbzwK5nv1
	 PKFy39L4ykx+WA0fQIkzGZ2j3hczFI1mPV0Dpji7xPg8L+9UNav7OauRObkAc7Uaxj
	 IAotj6MU0GKmQXzA7s9sPCTDALa+vujNRUYTrdhynkxbyMf0RpJQd6gAFyMXyELXbe
	 li1Usfth15XD8myFl1BHg5t4Z9YZzsjydt281MBXKqimCX3/SyYrK0qWAQtWsbp9dF
	 elH2PQa1jrs4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF4FA0C30
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623205368.13506.10477501080227625831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563844cc985b87b714b70f8cd833c0c9137fef992e6ad1452bde17e96428d617
Date: Wed, 15 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776232053

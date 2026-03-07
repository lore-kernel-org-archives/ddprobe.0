Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489D7366801
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772860494; cv=none; b=F1/6Vm8AQ8rQePIalAvEhsVw0DZ5Xi5haZ3oHBaQDoJUsGiAVGA4AyWvPAG9hvJmj0uFf2PAgA41vy7GwzgrSWIBLbPmWR2Ymw4WXmUvtXYQQSgzva7NYVkSpHJhnjRhAJOzSDyArWfOU5W5+qeDOyvatAoJj+4rsxm+7Tl+KMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772860494; c=relaxed/simple;
	bh=nhd+uvxRLmE0W/YpUxg1up0hN24UR0PWzR2w1zlyKek=;
	h=To:Subject:From:Message-Id:Date; b=flWpgbkB88J15nVfoNmKgYAY43WXCnRnvNBFLKmRQGEX+QbkCSVKWsMhEQBJRehoBLXMZj/rBb4WUOE4kgtuOfOkEve+Co+j6Cjo0Fzsaq8/pEnjxRH3DgROblJ0chZYXFI1lITtYpQwRnDsBQWOboTs5yiJwt8fglcKGtHoXJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFcEnoRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFcEnoRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA2C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772860493;
	bh=nhd+uvxRLmE0W/YpUxg1up0hN24UR0PWzR2w1zlyKek=;
	h=To:Subject:From:Date:From;
	b=mFcEnoRTeza8xBmdRRpB1han4mXfNtrkB4HpSG4aHgA+YYayQTltQl2UMho1d5qVm
	 kc9Y11Kk+CHUFOrIz4ThDKpu9Ggzy4OfTDhqccvPUfkuVJVd4Lz07psDIhAMkBzUE/
	 8iYaX8R2NsmMVbBsTnelBqp6SRwkmmw5Xy6GJRhQpqWutw1aBUHVUzecBsClQIbM81
	 HglAbn4RoM3Tgl17xEZ4lY8PiQev7530A+ySDK4nsp63t4yc4LZ7m6BSj8lBRRmt3R
	 nByg1A7KJRAHlFE/0an57u/0HQn0qMtW+XMFQqVb4/kMlai5n00Ht14cvXq6wEuX7d
	 orYaOw+GIZPDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C3FC9ECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286049359.30120.14558553343227045113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ea68cc0b6e278af31be17c29d4abab6076e7afb7258a4c5a0b73c98bb143f5
Date: Sat, 07 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772860493

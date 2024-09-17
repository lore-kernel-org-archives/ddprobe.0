Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2707B15AF6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726542354; cv=none; b=YSfa1Z+b6VbBF1PAYIxWhkfGp5O7ybKc7KC2lBZZmAoF00FYl0/WM/7H6CZpPFyB2o0TjEvBDwSgx9cZ1b6Y2nSw/3oVH2z+X+A7Xh/QDg5DM3+md0PSICw2HT9pRSF7pFmahQhXxDMQRP6JjHqjD2IbhTEm6gVF6MUwaMXB0Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726542354; c=relaxed/simple;
	bh=G5Dr2KsrJQn7UT7ir0zVwtYW5VjTzgfh+pn8kHSFJf4=;
	h=To:Subject:From:Message-Id:Date; b=ja7YG6JJTrpGLht4NW0Sg7Q5GYPEgen3sd5sxz5Wkz7FInKRp2RY9q8ualFlg8b4OAT+LNp4t+BZyEcans3gnzDxxhkhebRB78ZWd1QmUJ5Qr2lTUd9dC58+q1ybxojnkDnH6/Fk5zSnWTCAd81PUZ43IdZBqJPloJc1MQKF8hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcWSq3LD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcWSq3LD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF5EC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726542353;
	bh=G5Dr2KsrJQn7UT7ir0zVwtYW5VjTzgfh+pn8kHSFJf4=;
	h=To:Subject:From:Date:From;
	b=pcWSq3LDmgOLosCMOtomLIyF0/uPreFBDUZT7KOtns5Mj7OkKNYr9APfe+7OG17iB
	 ni1w7Q1eiHEAKadj8k7WjpqzsHqZfPRlkhtjQ+z5ftK4Z0HnssUtClzX5gC32X1mtc
	 QHwcvJ8iK9L04UCx4YraPwK/mTx3Tuck6NlrC4OsYROdgVC6/oO/362CeVNZ/Beo8z
	 9mO1+Dzquyu46POaNL+jP3zwag+kezUtB/5IrRDtu+Vhbgy5JCrHOxpFCttO91pigt
	 zR0Jm+ehb8DOxrFkntPiHnS1iAOSCakk6eoG6onQbD77aPCLzlWUb2GPLqCo7s6bn7
	 elDCyTASGWFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91693C3ABB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654235358.9811.15103598421833537552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f671fc3466b2da8a2b74042b88db3b6f688f177f9087c50990483597555e384
Date: Tue, 17 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726542353

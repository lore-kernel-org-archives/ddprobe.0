Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC449475
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767765834; cv=none; b=X1yi+MZxDdl2ZsU/BSaultVd3fAQHxES8d8d6oQYxDWr015fkhXiHouV5DB8XlqlOXEKdYd3cjcWv+eRXsBoweeHG3n7ULbAVM0FcW9+imBTC9Yhosr1Zs/mCDkPnIgyDsA9Vgv4YZ3IaBWjH0Lp41bALg7loQ+w0k0iC2nK0SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767765834; c=relaxed/simple;
	bh=Nt3g4FwSv6G2VjH5f60wY6Bzm41ZnXEAVaHCcadOE9Y=;
	h=To:Subject:From:Message-Id:Date; b=iYPJC57t5e3b9MAfnRW3GIq+t/a759VTets0RtPqqe+u2Vkomv0Dd55sezrTondqssMq18+2DqFMGxUs+5mMhma9UJ39h0lda6QMmY0hb/tXXbYkQZrbZj9cogiGSERAKy6W/I+JTLvujfBj7mfyl4IRzgRqA62anGbpPELTqms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfPiyqY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfPiyqY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65DFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767765833;
	bh=Nt3g4FwSv6G2VjH5f60wY6Bzm41ZnXEAVaHCcadOE9Y=;
	h=To:Subject:From:Date:From;
	b=GfPiyqY2cMg7lza/oXqHi0S9b8aCIybBK9Hi52Kg8iuUVS/gzsFMR+UYDgG9H76j8
	 Ydw0X7z1w9A6IuWTB/zmDdt8v9zh8UymvNQV3GJEbrBzFK+j4SWcGYXnxjRTmPJOqH
	 WbDTf0Q7UN6SSmUrl0xQ7ukfsNA9gMxB8+KPxJEKwa5Q2OX/oB5W+4cAG/36tgcI3T
	 BcRvjkL8HtGEamRoeY3t9ukP4bOo7lOXZnqaEpCHkbxICRzMdq0VMHcOf4w0kEseti
	 BwbOugFCN50vDlAEjDUKj2vzeQKOr85Sv8IUIHRSJUY/Ppk2TUhD0+ijgT6UN/6V0j
	 QYylJM7BVOTJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D1CF6BF0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776583360.26156.240301864898619269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d48826404e3e8f68ba20ebcb3772d150daf8f8addb7b620a84153536f6704bd
Date: Wed, 07 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767765833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2A11F92E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763253054; cv=none; b=JXbNXmVO+l7ZEgC7XsDgpIbE96adF3Y/f6T1cYTZV6LYBK9ZswdMOrKnX2Bnu4GRAc/Eu0wjHAKy+tWi/57pHijh3XNJLn/Uwsll8go/hvBy7t9JhrYFFk5v3MD4X2tHRCde9aZfjYZ7Wdz+MnlJBRS/w8OdBnNClkM85VUZayU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763253054; c=relaxed/simple;
	bh=Fuwn0y8XGkY9veV5sEDN4g10Q1XBLak3fDI/ZKq14lg=;
	h=To:Subject:From:Message-Id:Date; b=nvc80qfOb1FeTHuWbjENAnYAH5MRwpWqUWfXqSfBTNHPG4YABCBocMVM8wZNVq+zhGxajXCQ9yPLGTapE9gVyUAPbJ9cSfo6D99cUSH8M9wULFQ3RQXafOYumkkx3Garj/ydNn/TnJ38j7P9eIjN5gxt4AXjXhqM3ESeGawYwhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bv4135xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bv4135xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E99C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763253053;
	bh=Fuwn0y8XGkY9veV5sEDN4g10Q1XBLak3fDI/ZKq14lg=;
	h=To:Subject:From:Date:From;
	b=Bv4135xoVLzVhvcFkFBFRxHUkCdaivADv9CjOWjClL4JKoDphyNlk+WJjl7AmwlLB
	 v708DQEyyGsJom4ECtgNhQ16tZDLjtRH0Q12dLNoZd5X5PHEPVAyFaBQUW0MTitHI/
	 DGcNHikNI1fRp3/BbBhNSSvS2u4IJCgvzcP8AHZtSAn2H2EEnAWle4lhz2SZpgA1vS
	 vuZ8G0TBCtOhEcRpyDf5fSc2o1HjEVHBycvcDUUugyL24onVGgfLv3fjFNqIVL3oGI
	 BR7k6SMbwJeEiq6/vOJmiQEcgkXWIiYMwAvTc/LZ0+T5EKmJNod1iXcjsitafvZ2JJ
	 iDHynWOg3VZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533BCEBF86
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325305357.21228.3326360391130885655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388df9b15ff4647fcce28c25fa5602f7e5715f238bba12d72cd76c0dd297dbd4
Date: Sun, 16 Nov 2025 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763253053

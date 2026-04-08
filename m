Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BF12737F8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775659534; cv=none; b=XPQu1bsx2J3G1NDJN3/6zyad6LnN9A5xWl9j+8Q73e/aWM3ugSvVqKEAAvlI/dVv31i4gZbnIiqYMLDywGhIQp2Apa8bIa3/cgzgNMiLmRenH3Cl15FsVvmeVPWthIV/31maBmzZl6QQYIvDP+SIOHvBjYYiuMi5EEaHNjtdvhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775659534; c=relaxed/simple;
	bh=fkZJywOiNeL38eVAik3WnRO6GWzILmRM+RV0eIMzet0=;
	h=To:Subject:From:Message-Id:Date; b=YNcxbqskkv/z48WsoYvKksnfOUv39TDtSIegLwGph+AdwR3voIxLwAMGgUlMFbpikRDn3Z8Ndao2GraFNH5g+sYJTjrO3U6Pc1rzdqd6HLkR0yXKR748aqhRVFpAkNHMUGGKaYTv4QS3mMymOQyYOzWLHDShpZwCU2c6z8JQs5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKQL0M4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKQL0M4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE827C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775659533;
	bh=fkZJywOiNeL38eVAik3WnRO6GWzILmRM+RV0eIMzet0=;
	h=To:Subject:From:Date:From;
	b=PKQL0M4zKi8Hn9rHPRZcu77+A+aHbpM2OsXgIAdJ724Ydcx99NHTu2cu34XZIE3Ev
	 vrMwJ6WJs5pPW7GAPzkY8ot2KMVzdZSNr3ss6X9XEJ58c6EICE/KCJ3ZDV5CF7ZwC4
	 m9i5X0wflWkdmMurN7MD5FR07UFB9y1rhpE4J6vBxwlGTNoPb6j7OfulrkOo5xTD90
	 PzS/tOLVjCIuUVd0egMKkXeAo24KD53ylXy1ulfXqk5HuTa4f1dhH+9aL9UP23JXvw
	 GJ7C0gpfwv02JoR5mTx0SM61Nv9bM9G4Y9S8RhSa1zU5PbuYKSWNSzutPNSoxF4ff0
	 oLQQe0CQETJWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0E10F9945
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565953369.1608.6401253505872946235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6691b31ded8b46804bdc8c3342cc6bbeeb4c8b75f9a48c98bdb3b0b887f508d
Date: Wed, 08 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775659533

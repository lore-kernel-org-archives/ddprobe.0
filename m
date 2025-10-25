Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2541E1C22
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761415794; cv=none; b=qnjYRTwaXTn9HPRlmviFe6HzbuLTpUbu1g8zDeD/1Cq7LVHd86aCyp6xJ9AWqBzP8ENTW1l2TGbf0eBpxjtgMdOeK5OyYZy3M5e15dI3ilkPlHepCErRViGYC2NCwXr/RiumgCw3s616X/8tsHW5dRmLWQp5/WL970ZaGo6NFoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761415794; c=relaxed/simple;
	bh=UK4mjHcFJzU4rmsmhD91FSELuVpX4G7vQUNPG+3ErAI=;
	h=To:Subject:From:Message-Id:Date; b=b3AhykXsJHr4Xgf5DwVLhPwGOhnBrLqib22q5o1Mq14+Y2MdIKYsaMOKDxFSLjeF0elrkCqEDAqLdBd0sRijXt/eH7pI9DBOTZ20I8BbnXeWt4txn+dBeOTbhEDEE7H5RqaZWDrEx6HxAk+YOBI3x/DMU6x8DdcuoQBzfM33MgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBsFMdpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBsFMdpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A432CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761415793;
	bh=UK4mjHcFJzU4rmsmhD91FSELuVpX4G7vQUNPG+3ErAI=;
	h=To:Subject:From:Date:From;
	b=nBsFMdpQRKUuxzwcqZqZVKUw4ODBRuy3c6MGZWXJiv56Cw/8AZVh7ZsRvFo7m0WkE
	 wOWRXOVD/i0NoMHEr9/P9K+w8JB2flqwgkdCp3dVhudHBsymYIwNDIDSF/MKIZd4/d
	 5luo13z5NEAPCWSyDossjvXhvwu/O/AudPq7sWhCFJDwOgApZ1JEn162CRrsV0B3II
	 6gu7Cm8kPtkFLJCoY//pYgwxa+qocItxtddo2TO3QHF5fOKsplgwGp1PcZxazIP9Pc
	 ugv8qTt+/iIYPTldY3RUwh1/MO57X9ee6sAKO4efIuBVchuSIeDn83S3BIlsCLX38F
	 bocxe1ygxHmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F8CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141579357.28556.6792662676763204728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45183881f3c7414a329514e22b6f8aa9735b7de81af62bf18d36cb2bb172f628
Date: Sat, 25 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761415793

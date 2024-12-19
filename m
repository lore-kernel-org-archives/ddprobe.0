Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346271EE7CF
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734652554; cv=none; b=gaNTjQgcQIEeETIYSS+DxJxADyaZgTuAmt8ZgK+m7a2+Vb7LQpBoPGU2LoD/yQFQelWCwUzlFghCdWk4Mzs3Da7vVH6yTXaJlvc2Wv96PD4E2/ZZ/9ndMWUFmlRDOqivIPvLASCclEcAtR/wG8A9Yk3ZFYwGIB/IKTfbvHcj71g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734652554; c=relaxed/simple;
	bh=I7W6DTKL6nCWH32HEIX4iPXmPHnrpbgsFfjg2mHyrwo=;
	h=To:Subject:From:Message-Id:Date; b=qHJgxk9lM11xub4fNul3KpXX/iPQK66gBYc1cMopst6DT+5axV/jLeQ9COOGoru0OpDsB4cZQYJye14z5drfh/zrAcadQnLJ/UIIPADEOOX1rDO8By4f/EaGjF2yUrQYpEugpjW5kr/Ut3dl6VnkBwtXoeFhHDQ7WDdHp5T+WGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj7ZyR+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj7ZyR+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D9FC4CED0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734652553;
	bh=I7W6DTKL6nCWH32HEIX4iPXmPHnrpbgsFfjg2mHyrwo=;
	h=To:Subject:From:Date:From;
	b=Zj7ZyR+wGj7xkHtpShU3yNrhb8ozBpO5KasZy32p4CC6ar83oyLjNZT9/RIIuct/l
	 JtTrI19jm+0feHUdufgcN3giW6PDdJGTYhBlcLcqmc6OoNbgNta+siH5PmAbmgJd/S
	 jZNcJFt+mvjcy4WJgqF5ViS3WJ6HN5ucPElqwakAwiTupPd/k2Box+F9ArD8tgxSoa
	 spMGx6xI0/Mt+MsFGy/yJtbO9AwVOyaYZIqld6hjl3t6VrTh5fNdne9tj+hdpntZDX
	 8l2v7ybY5IPRZ2Ym3RI8QP8MvesZgwtjcFoo+MjBGjAOOqb7WmpJMOyWv4eHBHkhfb
	 JnUUCmbozBaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6466E7718A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465255367.13293.1108403683103018651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b56b9c4f128f5089b50943f483df26ba8126a23bbe3380ebaa2bcf6cde4f4a
Date: Thu, 19 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734652553

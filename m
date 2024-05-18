Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609F4624
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715994743; cv=none; b=OKO3vZq9lg2MclPjx909lms3OuqdqH14PJF7tEXptdptR88HQ7ocaGQ9A7utN0cDVNa0TsqVDzcRrl/bpm5UCcJ5dgLSpGxE6f3sO0C71OA8y/SKplwbh0xwntHrbj9UWIfZjbcl/LDOJT75iY77g/bO65yQWoBpsyhc9k9EVlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715994743; c=relaxed/simple;
	bh=/XZOo2JjntqV1fwtlj/5AaWgHzmSOIdHKJwtU5mDnBg=;
	h=To:Subject:From:Message-Id:Date; b=EPqdPmgIK2QRsZHfl8tYSkSz6g1wNX4Ldqgkzy0MfSgPh7zGB/r6EX0IABA7bjZsSNSH+PEDH0F1q925AQwewH35G4OSt4nmQn5tXw+Y8cNKls60rd57C1/jR5UzTKSb1FtoiqGuoBQ1fXA5nZH1NGhpz9jGCHCCmWnfZI1kckw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPBGfsJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPBGfsJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C01C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715994743;
	bh=/XZOo2JjntqV1fwtlj/5AaWgHzmSOIdHKJwtU5mDnBg=;
	h=To:Subject:From:Date:From;
	b=IPBGfsJBUWYsYitdDWw8uSvpYtC5THTHEfaikfWsQSPtK5YLZpwkbQkwUuWJZIOhL
	 ZB/p+lNEGiBxGfUc2CvqnOAVe8nywy439/lUSpierBSbjvzPTQEEnwZkPjaafNefkS
	 28ZRCEYsOXbRrD3AJ7qikrEQR6sIMO65RdwBUGFlu6jOn7paMlc3Um31U45O4ySXWs
	 kU0VBmHoDv7nefQHz1/aKY+BVS020hPY4r0p18BIz3j19Fd1BEZbm9tNUPhafZ14iW
	 p0Hl4B+5+OdTQm3OSGdX8Hc1z8Fa4Z6iW7KZLOcPRRfP+cbuQWB9xGyuMDe0FoOoBH
	 2UkHBq4um7frg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03F5C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171599474282.5728.10354011321991823676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f1a0eb5857db82871ce75a905f8fa205d91f8b0c10dc2c8b487059eb59a0f3
Date: Sat, 18 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715994742

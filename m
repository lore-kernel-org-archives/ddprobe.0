Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6076341D120
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790533234; cv=none; b=bIZxKhFTa5i6kkn8bnqjdOlCDbfjKF+kNiBLNQBSlc3Y+o7Ji4DDa2nzPmCPKZvZGd+lu0x+6n8w179xYB0ltdsHWQn6WHf7LIj9K+QugvbWXmSWRML+frkd/WCcEDtU2o0Q8L29OOWOvi66hqc6b5r+f2m8VJbXBb9nvFfOnoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790533234; c=relaxed/simple;
	bh=oGy9eijN4vWj/m2FKYuv3Z7CGptiEikcswIDFawXI2s=;
	h=To:Subject:From:Message-Id:Date; b=eeL1oPOYQ4wSfvVvjvMRJw6AVGytS/2+hHYcKx6MLrID1W/Obfn1oceZzPVoDMP+NrpbqQfQ4RHmdSjC6J2CnYUw1Xi8vCI7KBL0U1aduLa8+lW2AlSnm1RDPqjDjNLCvGYMxeaoaS48MplcjetFnkO2bF71L2He9Fu59P0qluQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsdtJ4uH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsdtJ4uH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C24C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790533233;
	bh=oGy9eijN4vWj/m2FKYuv3Z7CGptiEikcswIDFawXI2s=;
	h=To:Subject:From:Date:From;
	b=NsdtJ4uH/jIGCFbgig9zscGUiU5vp9BsJC8GyBCsXLmRyhvr3hI+Tk8ftdnlFmrF3
	 9MeEFD8LwJu4G77UBspC78pAuHfFtwH7TRiap7/Gwq1J30/cMmzSNr7Qu+Id3U6yFL
	 +qK8WJ8HhAUov9B1au9aar4zBFQE7YuzayTKHUYexu8q9g5H7+y4/dprnYqw0V7UWm
	 wVZSzmCrJSu48yX1Kd0q2flsWjLT76YfXn9xIu1suAsjU2yVA92L7X89tzL0iIPV05
	 T6q6rhErBqAdP3/g8eOA6gokkrsdg9yENIfK0NPh9A2CyQek6XXnIaEDRlODvLoM3u
	 6cVcDTJHtorrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF09C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053323368.3028.15780048959857221133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3803bd1d16ca3f62c1d2b8102a0ada41632d5710835e45e7bcc51448057dfda
Date: Sun, 27 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790533233

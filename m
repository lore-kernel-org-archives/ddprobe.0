Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7E33A7580
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779690754; cv=none; b=feBAgAXq/bdFBvVCRgc8OZ5lXJITfQ56q/3ldsPJIZxUW4BUSFKugMBtK08f2urA1I5zALLUDO33Ys197NtinPs+NaRvCVLqVggBeBGBiWkQLOoX4vNVU3lrI2G+Qnm4RXBd+SdtBbBxqw8ErM1CItpbFSHMMRz8DwqQ2u5DtXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779690754; c=relaxed/simple;
	bh=9ya+pfBalGNZ2E+9XamJuhgEHR6gXXiw8tCp2B9e1YE=;
	h=To:Subject:From:Message-Id:Date; b=p7xTdvrMwxd2IzqZ+4GORtjVb4sw90BYdFyFTzIxiYZmQkjMj/di4/UBMsmyBjVgDbQ5lMP1Afl1fYy2tQlWRVsltPmWNXpYA3st9GGToy3M8sn2grEISal1WcutpLisAxx5NcfYHjJ254HZE5ytnA2mk9i2a1XY8HkrpVN+5Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRvtiCMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRvtiCMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE9EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779690753;
	bh=9ya+pfBalGNZ2E+9XamJuhgEHR6gXXiw8tCp2B9e1YE=;
	h=To:Subject:From:Date:From;
	b=VRvtiCMvikyLdSYidhBcPX2ZEvpIvjdiStOJh5xZ5w10b45OI0KKZir/DjyKW7+jJ
	 ccj1SeQwVPTGyToyipnG6JNjlvhrmr+vlnQl/YpvLGQFGo5urHpAx7jZzyELoZMIUt
	 AdMGQydBqw++WYe0t35Q5//k0pBlqrFbPRq9te8KdTd5AWR/5fAd1lluCy0rVk0uI7
	 5e+DIsxfNaqbiv5nJBOguDcatIsBj8i6VBxP4RFFcA+yZozGsbF5srRXuPcENbZ6e/
	 CvRtRSz+FucZSXUiIbjXpou78O38oUMkrg7WEoAAEueuuCDdDOpEHj+wDb+c/12Qji
	 9Z9NsnG2EGPvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82BCCD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969075368.13585.17792343303589832336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42753c2d27a9bfd7678fb0bc037bdc8119908d7a4fa3a86fa6fadc60355311d6
Date: Mon, 25 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779690753

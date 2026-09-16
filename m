Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7B63D523F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789579834; cv=none; b=XUMbGDHOoCBrYYht1/WF0QCzWrEMgiprUQAmee9HJoHqk7dKaGvFIVJooK4uMREZISKIHJekUzmytTuasmd6wlUJQWMvVpu+OIdwPJL0+E/LUt/9fZ6KY5AZQt4bOSvycscuWAT2N4qrtTk602Gkg3WvvRdHdr7AUCsY+6RvxlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789579834; c=relaxed/simple;
	bh=M7d6ATZQbUpb49CgN2Az6ItK8ZmWbV7YPX9oUdoY3EA=;
	h=To:Subject:From:Message-Id:Date; b=rSz1xjnxXpqWoe1W4syYGSbuVL8zKokJTTi+gv0csCN1hkl72sKDQ/r+ZzAPFoWhNW8kmMJ1NLHRrBLs3Kazn4d7alkJwC2zie6jUZa8wq+dbpvBkrDsgcQtdnzsHdYuVBKkqZlZS3FsIbe/QaJ3m/uQ5PBzSKKjGNB6j1vbC+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2qisJpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2qisJpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE08FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789579833;
	bh=M7d6ATZQbUpb49CgN2Az6ItK8ZmWbV7YPX9oUdoY3EA=;
	h=To:Subject:From:Date:From;
	b=J2qisJplGYvxIWNbtbSkSEbVHEKmLGsWTdK0DUtNwmRHkJXicUaDS7KGqOsmaxq/A
	 XD1+yq72E8hcZlRiqYlNJvaATXaU5CUKA59NsNM6xOGNS9smRkF4EBYL8cdbbegANe
	 BV6aqgyxObk75WQos0SpFBtpYg1zQNOWMddlp48R/YkEpQJsnxkHZ1RAj4cS6eUxG1
	 AxSnD7GCXmoNtqTcF4KsUg2UGURITs7o/BcChBuahDxFeP4R8FDlKLqx863Q4zIFDm
	 vxp+Ve5RtTiYOTVOJ7oGXCALhko32BF7gySV+e/dAuNkEwS7IUdh25guYwLFlCRUTK
	 EIQbEu6eGYBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA008C982D0
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957983374.32246.10111169764512858457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4378f3c41875e285a9a5109c63a6c699a98e88d5095f957671927947e502c3
Date: Wed, 16 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789579833

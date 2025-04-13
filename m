Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E68B13B5AE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744549194; cv=none; b=h66til4RTAlea1uiESoTuKI/uWSx6caDG+9L2WxQWNy7a99jOSupejHaP0hi0zqiQrKd74sYxcJC3IZFtZyCQL+yG4fE9zHqGJ5LqiJX3UI5PTynMP5U9m879bHKCCM2OoOItIC7Rs1GJOqPqRsJru+icjGbM3/kPcIZhpNvtDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744549194; c=relaxed/simple;
	bh=OlyKhnmnva8rcW8cTd1gj7q2WWrLoWtn/cJ4Wo5E7EI=;
	h=To:Subject:From:Message-Id:Date; b=dvMKCqeUg1qZixSCYKlqGlUektcm76x722NG7TagvZtd93+Ggi4VUTC/SKbGv0AGh952sstk4onyi8oZ2BqU1kAUESXbJs0IrilICKf/Xdu4pd07Dtc4BC2BoogHO54MNz19vRPXnRSMTx1GBDVZ8YdQB1R59uXrD7ibljHC13E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcsWhTcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcsWhTcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8730C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744549193;
	bh=OlyKhnmnva8rcW8cTd1gj7q2WWrLoWtn/cJ4Wo5E7EI=;
	h=To:Subject:From:Date:From;
	b=VcsWhTcfkKYVUMc3yv8XjP92SAR+fhW1GVvVY0Zt2ozt0+cKfR8fm9zYCTK95WcJd
	 xO5VMTG/BzhspUfM3C0C7lmL6zXkFHyqVGpAVFeXes/g1jMXSJbX7/qXklSDFNxaLh
	 /UHCXkTW/jdkNSGLdaAg7PLJrnCoDwFu+3qIQ0MLwUjqe/AkRLuuqMT+bk2IUuO19I
	 pVZaBnYLRxqytdyphM90uGmYj34oRQzcrW0ogwqTbWqKqAvzzLvmdoA97VXkuWsw6Q
	 oq4lrjKk9urindktaDEMrREZwC3534eSUT7jZkW+5L/WF2bcg+9AqAgwD7//hpyW5v
	 E0iU/1p2B6Hhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3359C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454919360.13571.13546606447317623598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664b6ae67614abe4bd6477127eafb4676db7d5c2648f1c1e57dd9e73498fd339
Date: Sun, 13 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744549193

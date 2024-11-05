Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6C3376E0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730780754; cv=none; b=XrmCTdwtVNIxI8t6ydZjeDXZCVi7TZOlgookt4Rn85JW0AzOcj8fnO9dDhgl+qT6Rmwl4KldDV4xyIjcFrpOy/FFjwBMMW+0JSpH+N/MGWpXpiGAC67Ybl/gehj056+x7mPH2t4Su7Cz3I/Qcov4HsG1N4UknHvFirrSB1k4Jow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730780754; c=relaxed/simple;
	bh=PlSxRyfoaAamxc+ZuwlFgpw2EvvsgvDjkaJJfc8Rblw=;
	h=To:Subject:From:Message-Id:Date; b=N9yLT5EJAfDnK+I8Tt7vHupmdyjrVL94i5GWJNsRJJjndtAiaa2ZOHdO9QTzw5K0OIaBpWx3X6VMs7dKcElR0m3u1YQegKcDLoCJ/5PsbXNJdJxAeLgKf07SmkkBq2yxgwoaLPBU5CLRjGFR0CSRSS2svDtBS4/bS6AVoXoNDcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6Awq4uN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6Awq4uN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8895C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730780753;
	bh=PlSxRyfoaAamxc+ZuwlFgpw2EvvsgvDjkaJJfc8Rblw=;
	h=To:Subject:From:Date:From;
	b=F6Awq4uNAq1cXisT45UGfVQeR8Nvr9gFmt7uG0Rfz8ThtDHdnOXoDeiqYFYcrfRFn
	 /un3JzpAJL6kyce7QzsG50E24nqIYL2gOXjQ/vBpbWriTrU/z6ortvT/l4CERlVyNP
	 btFeV+7vCnKQEPiy9E3r9Wb0iWIT6H81yUr4DIcxcQ6oAnv+aEycp4t9rCmnOpXfhX
	 QUnIScMStDVealjk2prIam2BvVyq9ONc43z0pWAE9jN0mOZymP6MEEKtO2qqpvYpar
	 tYRG/ktdcrEDAeMFO5UMhtyDoU86eDAQ31WpmH0rKMXBO49uxh0g6a35/KmpirUjX4
	 R4mr6/kiItl0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EB7D1CA21
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173078075362.4360.2475589655492352360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fe8823afcd51fb0fc56c8ef836e1005b31f06a2b6412b2ff1083dc900bd7b5
Date: Tue, 05 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730780753

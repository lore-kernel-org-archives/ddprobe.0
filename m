Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE4610E3
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713490163; cv=none; b=CShf9WJg9jTOeBs1iVxLboy6oDDn4RUixmEdqJzWq2t7Iov+E67nwziRrubKc/IL1TDoyK23H621tboSKy4is4ef52YkPma0NkhDyksWvASDCE5Geof9n+fEaHN1Y2XRsOXDaYMWrxLZImHXpAXeaBUziGnDciJoKeoLs/Gg1c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713490163; c=relaxed/simple;
	bh=kdLIUAfHO/9QlrNXrDYuYN9ey9wTcs9OBwTOpLfGUko=;
	h=To:Subject:From:Message-Id:Date; b=Odvjc1Bi+nvdrmX/oHPW9jlU1W8Z2p4/ui++iXihEHR+NXSjOspoXXIvYZrAm4IswmsdISoOZPe/jIZVRU4XEZPLfmYsG4O1enSrrFxlupzP04nC7k3USQDIiYiR1Icz70nxD+aWPnoodwQlCXhvQ1cvFDp2GL0wAkddHElufXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBpEL2Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBpEL2Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8862C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713490162;
	bh=kdLIUAfHO/9QlrNXrDYuYN9ey9wTcs9OBwTOpLfGUko=;
	h=To:Subject:From:Date:From;
	b=vBpEL2FbJxNwOE771eZ8hu1d/bBi+Vs7i+zA/I1ZSdNdwoqZAKxWJZ8CeDumFglEO
	 DFN/u/0eOuMAHDejESsg2toABp4bdh0ZJMacPs1sGxtvIqAnz3FrWISzpIFXAst64R
	 Sp2r+CqLOk2Rl9neWaiq3+NRPO2tj1y1QiL30gjBR0PaasebaBr1fU0QZvFxW+FqiA
	 YecEObMz//OmQll3tSguxf9Yjb9i5b50m/rzxk+186I9Mq4JbPWyX0+0+zZN0j+uDW
	 fEVdvcQQu6cLcJhrIhRg7FuiMcqxylvALVrw9FMTSHR26M6KerT+FWFNoSvHmp1pNO
	 gnuM5c3y/3MDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7889C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349016279.3785.18414576085027909451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1739bfbae94c6fdc0265794ea86242b354aea8f08c479fc758027ba7df2d72
Date: Fri, 19 Apr 2024 01:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713490162

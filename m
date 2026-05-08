Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4322C256C6C
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778214454; cv=none; b=koT3fJtsXEJw/tDui7kGzUsMMTqSKVMZyNnY0/rdhybg7IL4zUTRmdUrnZO3UL9LdJ76ITMnM3R3+X5aa13hNNuTahBNtNQx198SUVbECIl1PMiM8r4+8SPY7juA3zFofdjwBIsaUIltHxzQfQXZmNkv9NIXHdElTkz7pj66axA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778214454; c=relaxed/simple;
	bh=xg4LojI4JuZuV0tnNPT8D2xEcufALE4ptKAAowzZQq0=;
	h=To:Subject:From:Message-Id:Date; b=S+OikdBrvrPK+gTrqDR7xsNL1OFN3dQDcbHY3z54mogXQfK/I+INecoyPBrpzGM+75fXcGFw17DQiKCZPT5oJYlCy6z0uviw5VwZSOsPY+MNHJuVb8V4nz2BeDCV41OPTs8ky4uTYsPXgFxPvqvtJAYFYXfA9UJzOVmLTHOYVCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVvWL0mr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVvWL0mr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80A6C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778214453;
	bh=xg4LojI4JuZuV0tnNPT8D2xEcufALE4ptKAAowzZQq0=;
	h=To:Subject:From:Date:From;
	b=SVvWL0mrWJqwU4wes2CbPdISgBV9BQlgsenuvl6kbzGEM5moflbL/oa4Pinf/W3+W
	 qXn3m4On20IkDfEx6zgdHUR4M8bPaq2KE/qUKdruwKdqhAM9kHi/z2hsFQyfp93CWF
	 q49PYM1+HTf1mWErI2Ap7qM/dfXEzeGjWC76gju8LtuGjogs5RFVjtp5sndkgSaIo/
	 i+bT+P/4C36oYrSU44fQeOUs8/PPvy1JEcmyZH/AvMepp6o7oLkrF00EVoGaQ7MGNG
	 WeiqqdywGgHnW1trzRXpTbfv8DP9E61Trkp3ETyE3RCMVSDDBKr2wPc1+i2g7N+wzB
	 CVqekcV/lSrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4998CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821445372.31221.445927841602604346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bb242549c98c264d111a2f6e4df043175c2120be5723b5b65c44daee0ec6d0
Date: Fri, 08 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778214453

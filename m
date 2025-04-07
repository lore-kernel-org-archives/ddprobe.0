Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCDBC2C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743986393; cv=none; b=b9j4JlTBks88q0j+L/AknyMUXJ1Ymn3WsvLsQQPLMvLXnGx9gff9nwCFP97nEFSMWZOIp0ptCMwKmPXWeNT3ENJfXkhB7s/qWQvRR+vNjYtC2q+vDNfgwghkKwafvOTJEcSBxjy5vgLKUmrrl/fmCHY2iqRIBJoqRLW5rIwH8hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743986393; c=relaxed/simple;
	bh=4bbD1W6xSlknsxjOlZH2QLFEWWXTzWqACKC+jpvbcxY=;
	h=To:Subject:From:Message-Id:Date; b=oATAz+S5NRLc5H3+Xh0Gl+feZXNTUY2mjer2X6wlq6Dvr2ZQeo+TsvnuzrZfWz/bYbiYy0MpSN/jIkXTcUnex/zGfP21iJbJBVRz1a3oQzmkMQSsucpcFsIEH+Rzw9wo/rvtE9TZnV5mO1r0WYqbcqlF8N+pdWuzO1NUDf2vzes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSWoVFjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSWoVFjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB421C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743986393;
	bh=4bbD1W6xSlknsxjOlZH2QLFEWWXTzWqACKC+jpvbcxY=;
	h=To:Subject:From:Date:From;
	b=ZSWoVFjtVFC0PqZV85eR9XrwAtgyzk66VHPne7fDyFcRtdjBTvs31o0DnvVOGdeRU
	 Yt3fA21tqjqNT6gUxYnkXqpfZ1lnc23w1AigC/5e96T7QnLE+N90WHiitYZWZJqJOV
	 NTRSJ80mqv/UYz1KHiwsH+Dl9z+G29dX3yjnyErq2fzqVNQyDzZyfAhTVNAV3H3JEN
	 Z2Xtk7pEKIRIi5/BfKEVS7josnKj/talwy2KuDpZPSJMou2TfLfu0smiVxbQE1/F4P
	 qg39335QV29t2wEPs4hTagx4sv+gXgcrnzJWYkfIqDFccP9WI2OgVIuPtNf0j1YZeT
	 7CdrF0MuQV7Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB93C3600C
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398639357.14242.10813302974118642338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a794be8dd45947cee2da9c5d9b206ce34bdf2d2738febd36f88fe8a29b1c40
Date: Mon, 07 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743986393

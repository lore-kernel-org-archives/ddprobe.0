Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25632635
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760080194; cv=none; b=l8rc8MllmoYTL3Nb4EpaV8HWL9z6DuwswhKbwAG1gPj/CV12T71nZPip5BYr/WYXvyczmI1tJNmypT72KKRrmkG9eD6NtSU8MQoFkTYc+/KH0Y6GYPQZ6ZPWz6/tyvfqgwGDLOGNWx3wJqE2op2DVyYdk3Zc09Aa5v/9k1VI15c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760080194; c=relaxed/simple;
	bh=nj+FrKaLv53AnYV+mXfT2EhZ9Tgl2KFtnEkoEtay2aM=;
	h=To:Subject:From:Message-Id:Date; b=Djw3I6HA6a/HgqJg5aB5EgTXWvqlmWpYLRV+0Vf0EnH3eE+/Y+X5Pj2I7k+nqa/60BWDMUUAUX2dUIoBBM+5ftumMJnwofpxwFWrObiQ/n7zUChu5z67xd23SC/TbrjRMJpdDf2nPmWPhSagyHNZCLxGwG86wyY87KAN6y9RfnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/LuWBWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/LuWBWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0494C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760080193;
	bh=nj+FrKaLv53AnYV+mXfT2EhZ9Tgl2KFtnEkoEtay2aM=;
	h=To:Subject:From:Date:From;
	b=k/LuWBWCJMCFxONynDvdn0q7xIYXlNWSVJLDRkswlJ6ukxxDpMWvniG5uNu4lHc3J
	 JppWdEnqXuPVCnZ7vONSbh6iGQu6HrDeYDPw+M8GALguSL7AkdFjZlPLIIsnaPIsOf
	 S3WDJhMm8Z0ZM96m26s1E4DZBgPVkLsXx0bvN2zTY3AGQo5sZdoPk5RaqNWR7lENVo
	 Ox1nKrZB5Hggvi6cKJB+E+wdUV5rmDFYClroRpKhyUWRxV3kMEyRahhqYUU5XnZMMi
	 AbDItd0Y35kdpZePCDeogKtDmGy8+9AWhoGk/ZuEPhUnizeSNwsCF7DFkBsuBzpuGw
	 Ac1gT2ADMf3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB76CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008019357.18376.2843012941553353875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70da0caa431f683fed6855722c1020abef3d4b7f151504180fa012cb54079095
Date: Fri, 10 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760080193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2657D221D89
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782740314; cv=none; b=gqRbGunqL7mFykmQBy/XDS2xIn5j+i3B00B+gHpHWoEQQ0nr8D/isbVzADoulOxcvCKsB926KnY9gkVshBGvEBU7ARTD+/oA8aNNre7554j5BOcP64MeOPPMmID1V1t/n/bPn2fFSY5zOSFjWjFdguVDZxxNymJnSe00I1VqCs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782740314; c=relaxed/simple;
	bh=J5ZaN9wJ1B11gxc9piPbtyRAxQToRNjgfFefzc5Q6LE=;
	h=To:Subject:From:Message-Id:Date; b=YSIoqObGQQ1lF4o2u+RBEc2DzuBt5+kldc0/jl5QbvX4gYMH8Lj5bTwD8EnCUJ+kXwnOjiWYpS3+2QctQ0K775gehWwhoEzxRg9OT9GwnxqXR88t1xUaX6/xtz7oD1rx20MN+uKJKGxVHSqG0pyHzpXcPSX6wWUBD2XmD8Y41uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYWshxXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYWshxXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC21C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782740313;
	bh=J5ZaN9wJ1B11gxc9piPbtyRAxQToRNjgfFefzc5Q6LE=;
	h=To:Subject:From:Date:From;
	b=pYWshxXi+xF3rJ8VNWv0RpZDW3QpGy/MTko/C0jRxzTD2DsEb0QkF9DYD0V9wudMC
	 CVjRf74a2AAsFDf67iDIzuWJo+VuRacevIvEL+O8hzkDCHipLRs+ofItA3l0Y/5WTg
	 oyhftfnex1y/NWsRKDEDYEUIUjIhrsBF2tiGv+KfnMTzDCN7dWB0Fy/cgDWVLLHeor
	 S/CytMH8BKteWH7Ujgc8kdiXdtqiV87jGwNmUJmHz+ZVJR9becnnluaPoMBcPUxg1M
	 5MyOmHpbtpiRAHChy/yqyLLZ6LCa9BNiZynj/AqzQWLutuTO1IbfyHacIP3x/U5GVD
	 o1DSaL4OR1Eyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4D4C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274031370.12851.11945716125762168957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbcbca840ee119bf298eb4a5381b01ecd13ae3065085c6b812f1d259c6788d3
Date: Mon, 29 Jun 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782740313

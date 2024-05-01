Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469DF12F378
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714596143; cv=none; b=dkWWh8/ylXS4DR/CvgWb6/4iDxxSDv7k3hqrjW2HNNPTAg1cXupcbhMkuAY6C8WXCIarVufSU9VdvpHeJBwou+B1Rl7CCpF7bSVLp+KfVX7KzVhSNTCJrr03bIPojjm9X56Ykdlni2juJtxXUGbG1+kKhl2MkuC3TWBbyEv8Lks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714596143; c=relaxed/simple;
	bh=PvA/n7jtkht0A7yN2nP6or334qnG8nCDbYI105qqVHw=;
	h=To:Subject:From:Message-Id:Date; b=mUDfHNCrk5+cF0YBAywKvNpAzVwrMm1/Dyna1VzUuEYgguZsQk6/faEjaEq3ru4Oi6hNM1BIckOMk2vGOPWmtKgtbapIQwM6WhVHXI5DEVpLWAjnb8ZmpFcKiChrXA6dtbAjWxSLZu7JQxwK0+YtzmkaDXOodcHc+HniYHSV07c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRmAIWNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRmAIWNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C12C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714596142;
	bh=PvA/n7jtkht0A7yN2nP6or334qnG8nCDbYI105qqVHw=;
	h=To:Subject:From:Date:From;
	b=mRmAIWNTU0gzuOUBwbvxopp7CFKzU/gH2h87gvlzVYeVV6RW/W5jTmtMwbt7pCA4q
	 RWRTdmUiGAnKLaIA+6kqJwijVq9oN+6vgO7fU2bvs1CHWizzql2flW4TKVU/IpO7dI
	 hZIpnx0mdywRW1WNQRqnSzqb/lYXqN0t5t/jBLY3tE4FdLslNMujRjD7OT3s5I15mr
	 vTWStEshEhrUj6SxuG8vAT19ITybsjoGJjK1OregJa7fFH8dlygQN+MHYYtu19DxFk
	 BhDNiJQ5QnEX3qT+bDrDWVWIhHHfHWaFCI0rvsOGOl//c8t8/mqzETK6zm9dVWeqHV
	 2T6n3t7ru9zGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BB1C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459614278.23001.2469212437448915094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2094d2a41ef7248ef43902dc2d5f13f69cba357a042c61ff0f2fdf4f61a396d
Date: Wed, 01 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714596142

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A3D17C68
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717851443; cv=none; b=k3CGjHY1Lkijja/TsXLjcnLwNYlkmVgNkRLKLT74sqFnds20OAlaCBbJH+bcl0o6SAxrM4w2jAe64YCjFFdMbimJrtLei9bRtQl9/y1rfOpwYJDmITzwHqyhbO7aandMn07ZkXSld8X2sSouamYoJF8qsn0cNIdEMlZyE0qaZQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717851443; c=relaxed/simple;
	bh=AbX20gAtmlkWN2IYWFJll5kXsH9D0/m4ZatHDQOChXM=;
	h=To:Subject:From:Message-Id:Date; b=ADxQ2wUqG6aulixVFAk/15XoTt+zUfU4hJ9nMrg9dzy+8wlkZdi846TjtwmpuaCED23SHQJp0dSDe3rtwf7RlJqTHUDnhpCwVYpFHu5QIfpyi96WPxDQalMVsdfk1aTVp7cLgvP2OQhzHz+3xjhL2taxt83ukZeGWQPdMS3kVc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNfJTPnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNfJTPnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5402C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717851442;
	bh=AbX20gAtmlkWN2IYWFJll5kXsH9D0/m4ZatHDQOChXM=;
	h=To:Subject:From:Date:From;
	b=RNfJTPnuzTmmohdwfLdq0HgMdKahITcQm2jxBm76YGz8xKRP4au43JofFd7GQyzuQ
	 06MjCPJr8K5LYqa7d3R51+sRNVYhQo5hH1IpTMwplpr53qPWvj6Hkf2lTrYxEIiTQN
	 LBWfN+oaQ5Pu0FPOyQdiSnS9h1oZvIli8nrtdjzgOBQ8owrBclSUSKktkJ8nmpQgDR
	 GRr2v8KH3fDc5nAUTkDjGESwZHtJ3iCxhYq+7/vGanBL1BDkrlV3ioRsV1tHs54ivW
	 tV+ovAH9mkOXg91K6XlHTc/sqtIruFZmC5W6R1A/MwI62aEO7YtcGOVUkDWwKhWHY/
	 ZkqKOajNppGAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D054EC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 12:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785144284.14369.11836039682775842620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6928c3c637651891bd747c09829eaad6c06b1b7b6706f246a49d60fc0e878b57
Date: Sat, 08 Jun 2024 12:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717851442

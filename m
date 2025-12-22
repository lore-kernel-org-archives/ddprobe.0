Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBF5482EB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766442234; cv=none; b=Ye4cs0+M/kpRmmxuA8ZLmZfY0ahAySWZouyiTdz1DCUBgM3TA/BJOKfPDSbJ8WlopFpt+g5MlAy5fyJMeI2PoV9WeGRcfmuESjz7KnmefRNJO1epVMvUfsChGvPF97mXQk/wi29tPNED7NKZz6gaSStoLG8lp2KYQvwrQzkZ/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766442234; c=relaxed/simple;
	bh=64dqSBqqw5r4MU1xAYMs/as3F96hZB8r+Ci/tbXGZlg=;
	h=To:Subject:From:Message-Id:Date; b=KF71D0qc+mc3wNM03arsJG7hBJ0hkqdORw7yoxtRTWmHW0ARc2UpYJezEDNcsMg/7/ms1dtxshsD5HmztNLZq58Xb/hBMv4e9+D5fb5NMr4a/3Ayh9mOVq6OE+3BtJHO2ddNpI4wTLoLSNDrXm7MjzaK91yvvZD+HG3X+GyYeXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfCQ3e0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfCQ3e0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F162C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766442233;
	bh=64dqSBqqw5r4MU1xAYMs/as3F96hZB8r+Ci/tbXGZlg=;
	h=To:Subject:From:Date:From;
	b=EfCQ3e0ScGNWoNKB/BAjzCjln5mbf2G5MPydytxVsPQN05rtntKjGKCrtiWsyNPDT
	 3kEam9BAvOvPoMHnJngl2dbh1GAno0n29x/HCdJEV+Q4J2lDeak/Wmusd3YIFSaMQN
	 pGRS78PrUO0iWKys2Zl/yL1N7rNBYSJSY3lFxOx11Kd80yde7yhEL6y8hF6zuozdWP
	 n9GCHXiu6enK8n7fdvy6b0GNU58cQBJd8ly+vn6TJRm42IQI6B5cE3FPRNEMkbPT/z
	 qArRjAy1C1xMAZ7lpU/XeYyqd9yRanX9XMQLsWoQX1bYx9MsdvZNDkK9JqEa4XSh3n
	 UiEdnYJlsTemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A94E6ADF9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644223358.12259.14793563142260855812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f50c095113ae4e675f0a7f5395049ff7bb3fc0bcc314a893e6ac53d4f19044e
Date: Mon, 22 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766442233

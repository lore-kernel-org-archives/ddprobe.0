Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5439C14B965
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719066143; cv=none; b=haSQ+meC4X1Vop/XRsmws2N4dvxwC4lrr6QY17YouNnBbHkjMgAtbn6DfNb5W9GkY80cJmhf5C6aeb+7F41NLMcGRSEq4yo2WGN26TqWqma5l783UtyRODsbkuBCMC0u/yBYKA+b3Rklqns985ip3fRzBnlOjWpdAQ6U5fFaxO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719066143; c=relaxed/simple;
	bh=b9qgaEZUXlRC3Le+Qr9nr61tgU90QlZvqOVRdN6lS4M=;
	h=To:Subject:From:Message-Id:Date; b=MFaHvIlFTI9fABQbj5sXjczCde1sre2aUsdcOeV2266/OayX8pKMuDC02F9pYOqLbzvrbHnPN2vjelYfsly9+iMS+v4weippJxqNNLpc/wmmM/Wq/UXRTKZgNaSHXBeq8+y0TWWhGf15l7p4zrptObRiOdhKVRbz8yPtyI8WpA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atr9ksOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atr9ksOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3925C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719066142;
	bh=b9qgaEZUXlRC3Le+Qr9nr61tgU90QlZvqOVRdN6lS4M=;
	h=To:Subject:From:Date:From;
	b=atr9ksOarhMuNgFwkuiLxWCLVaGXQXTGeW0NWQuiaucdCza6ggglBCwvAK1obRa83
	 PRubQwT+Nm6CNyxWydMaHhvKHxVc54gGE1LQhTGhcwpVSK1/9V9iAXq5v2mw6wXhNx
	 oGUFyQ5DV6/O9JuVEL1tO0XNwaceZgEn2ZhkJBML9JGv2xz43xc0LqDEpTUonbHucp
	 Y/aPzZiIcATtOxI0IbesoYaiHaw7G12XMzIopfCYLeWklSRrE33vi2wFFbKJtN50Zi
	 M9YTvJ5hxDtg8kQtDMIF8d4/Qok1RJtCsBzvj8JPthOEbAzKdGSJnlb/YxC9ZVPBYY
	 X2g/zYb8QB9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA23DC27C78
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906614280.14119.3552832088983330592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b022c54405fb4f725d5ce9db9f21c2a0bb009b94e09b3f4449ab3abd6fcb81
Date: Sat, 22 Jun 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719066142

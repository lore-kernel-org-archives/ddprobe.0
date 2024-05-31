Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803C31581EB
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717170263; cv=none; b=b2OOtMkY0A/aOECfg2SUdBSc2MzgOa/PKMLLbjGPF2mGD6gZgdjUUhnOhP1tr2ZRCgbPnthvymSwAnx7Kyk15/vC14uis2ZlJD8Zdf47sUdnFo40fWRYEwCjemMYk1ISoKdyaX8V/YTCblKIfaZ+01tON5KWVmkezzyMB/G5fFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717170263; c=relaxed/simple;
	bh=GNaNqfQsBdSXvi7eN7dmFjW3UbWwBZ/TAHhuIimADdE=;
	h=To:Subject:From:Message-Id:Date; b=sbJ1Q2fq/TzodH8Z1ODypQqiWSlhtUORPSgtsZMJD8pnwd84cDEdqh35BqUfNmjNORNiCQhf9UzHmQLPPqdN7bQaYkMUeRWpleLxdhU2JrOovTvOm2hluRRLocmARzmI9AxxLJl/5tHkfOLSx/JMq+MALJtnnSg3XazPZlv7nHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olrKaMJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olrKaMJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04E0DC32786
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717170263;
	bh=GNaNqfQsBdSXvi7eN7dmFjW3UbWwBZ/TAHhuIimADdE=;
	h=To:Subject:From:Date:From;
	b=olrKaMJVuRXuX5JyXTv2nwTPdePKuOJm4Nh0hPgGfDsBIOrYB63knTl7y6JbWWQoV
	 F0SeTKFvjc5rpvvf8NV6J3BCBJhP55T0rWALYtCXLG3ntB1IeBWjtoWbRtvOyUmdP2
	 8DRvX1lZSM8dOS/KJhUja5PE2ScGNo+BcA2BnMvSYCWvizWNLvPay8zPt95tgwX5yM
	 vt2SUhgAogu8L9YigRtCnOnW2RCJs2GM7pBfIzk2Lhbod9Hw428lx6vSrgaCawIOMY
	 SBPr2/SUjEt6mTb1f3KPLzrljxpOKCWrZygwtLPM/1B4VOfu7xbuf3jtPFupSg19WF
	 RpW197H/JGyOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8BCC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717026283.21899.2851324535798316489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd55e89aceedb0c75bb4744d54b53e109b5296ac327498b50366956d5cf7012
Date: Fri, 31 May 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717170262

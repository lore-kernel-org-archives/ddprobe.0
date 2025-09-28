Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF3219C560
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759057194; cv=none; b=aIAH9op/KKFVA7LNZY52MYBRiCP8ta9w6Y3SuiAWmHiDj+UosEKTACywY7AnpyWmNe4e/9Q5jB9Yqw33sTC4kgnOTxvP/twGXmfuiYXcGY0zujGflEDcjZ+h5qfb/jVTEr2aWmJzHrCwZTXWEP7mhLZ3RDhcRtumdu3U9GARsOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759057194; c=relaxed/simple;
	bh=VFEsrQ3XaNO0MegVe5GUbCbidNcK4feMsLQ8jsKOmqs=;
	h=To:Subject:From:Message-Id:Date; b=qGdSMrELGeRSRhHKyNYUfqc9B8f/E0r2W1Np2e1va+IcarNrlOVVzs/b45tJQz6uVKOHytIDXy+iMokRb51FOJtpoigpk2fB5ozASvDUIWKAYB2QXoVK2B5FOEn8ihXJtLTMJ494yzuNVzz9rrPFwYIhrbldFnpJ2Zjomt0CHZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aH6hEtxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aH6hEtxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759057193;
	bh=VFEsrQ3XaNO0MegVe5GUbCbidNcK4feMsLQ8jsKOmqs=;
	h=To:Subject:From:Date:From;
	b=aH6hEtxtNKsHVunjNrs4K56pdQGRt5RyUFzvelPx1WEMIudpLkbhSWmQ43cgR1g3c
	 l8cgIXU7PmZ6OVjM7JYEyDPPZNIEvwR7ghVS1xrLr14DDNHtp9+MWC/jwJl9/Dx/8l
	 ZYeRdLuXLuDEnDVynHNjI702ThLdM+HGnzX8uANqWK7ZKP7tRJnEwuVYRtyanR/g9Q
	 AciG5B1T4/Q65R1ogHsPRZeivVE+OhcoarXMYbuYfCjq266n+BT8xC5XiFBu6e4Iar
	 liIDXTpntNKz9tQdVZLKcxv9HNYWTmjvl1a5AOZE0vp5EQ80zxVL47weD/PjM/3FDZ
	 czX66CxmwqLng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B2CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905719357.28007.2174458152851646630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63023449bcd3545a9dea0fab9c7b5b2d8aa436102638c16ce0296adf3fef0052
Date: Sun, 28 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759057193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0BE223DFB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769452434; cv=none; b=MTOp1K3rCbWMCySXacPRGETQ6HAQ4Ds+akWAg2JiY9IxZJHohUZD7gAd3m6scn3ydTdO75kICxlAbvPKcWTLtZfaHFEXUb3ESl4dL7wlqbGVOoXWaDPGmHOd7ERWnFvkbYTCgJxGBAAMusm8rHw3fyQSJDV5495df1gU6ikHOiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769452434; c=relaxed/simple;
	bh=2En+dU7XJJ4ni2U/Xn04gOoE5nekJ8b/mAfDpou8HwI=;
	h=To:Subject:From:Message-Id:Date; b=nJyK5IdaTBEvQHSPtlIX66SXnWUtq6ZKM0NYdFbSh7sDDzru93BQouUtVwVmseG9xKJT1MRkIfnRpveW9JSLgvZMsbVeOAw14WLZa7DLbnFlyQ0cWlYZxMuDf+W+rki91edecIuIzo8oe8+OsEVf/cBwWg9xLddpeZYUKyrri58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5IFESmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5IFESmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA98C19421
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769452433;
	bh=2En+dU7XJJ4ni2U/Xn04gOoE5nekJ8b/mAfDpou8HwI=;
	h=To:Subject:From:Date:From;
	b=e5IFESmX8/mvEFYW1kpcmaA7LT+zrg0WxNxOLlC5mz3AbozTpyuhyXR7cl60CdIMd
	 Y3XPewTL43bstKJU0gCgd8wLmoVdTt8chXFQcOxyWnP/XJ6CA5wkYcFDRdLmoXo2KT
	 aNZRMhVtNdS/yS8c9RrDeIXq8KSS+1nAhtmzSFX/I83q9kCtLqo1R8Y2PN86oX55eu
	 XYg1HZE7VP5cS5sW2KytX9Z7nElx0W2oSLi7MBg7TSic6pdhTbRbggcMBGG3TYuZNy
	 CC7hB2YCGrJG6o5Uy7ZML8A60cVKQnzLjVOrUeus+Q/cM2idmtB7LaVapTkrIvJ2eO
	 9CUsHee8H5vOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91411D1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945243358.18077.17832083346306246219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efe2806db367f6ba033a13a7315076f35b56e6238595f39355748f733a50557
Date: Mon, 26 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769452433

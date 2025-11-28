Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7041E3DDE
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764289374; cv=none; b=AnJvTwEGH3ZrOpqSwheeLPAmMzHa0CbNsKcP9xyOiXHfb6Wk9/KwENRwqcihndeT18IS5ajn54l2WzchS8bkC2Ao9K2Ga99/9zw9XO78pPHLbojYSICcIrIB3ADOZ+M1VAGP1BzdRcCzNZh2ZWPP64azMH8ejhjqrPdWKPlWpyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764289374; c=relaxed/simple;
	bh=3py5qMAUbzKKjClg+dwk/G9Um5TWu25pqt+pIH6dFRc=;
	h=To:Subject:From:Message-Id:Date; b=Z5jMiACX1x6Dn2KjSbryvrlRJjsmiQTXKr/IPXSAbqdRQMZj/GFqvUaknxc7vJewzvr/hF0gVaeGMFJqNYInNzz6dnnR3TyDtyWIMREj86IxA3KBeIYJSgEb31pHS4b/GMQaAAF+0E4bs1hpVWezzSl4MDoiUSt1jOc3ton2nXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qlv7Kh//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qlv7Kh//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C7C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764289373;
	bh=3py5qMAUbzKKjClg+dwk/G9Um5TWu25pqt+pIH6dFRc=;
	h=To:Subject:From:Date:From;
	b=Qlv7Kh//l7+Ix2ChcwXKrAkSXRLhuuf6XSZK5Z9qwa8+mR8hWfCaf+T6M+fMA/rDG
	 rFL69UgWsWRTvx55C7Xm9paAW2ddNbyhAZR4pHA3TOpvWeFSBdrvap1J49X5R5RUux
	 SQbZ9Yp016L/xLBi/0niqoaiNRczbbWelqkq3IKZN9hTiBdbpGWt2flB62d+r9Po76
	 yicgD/3E2tXnYc86l+2RY88ZAq1spOAE65b5SffZESTzQE0+Ey2corBXKl/j5jp8ug
	 jb92Omd/3jGRj5Rzitd/Lo04nLG5l9Fk3BL9DA9eeOQYcXfyD+sshLQf49RgZPnzmu
	 //a637zvE1IYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90778D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428937358.20861.9619893538838135401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3bacf4eff811b963cf4e3d08c1553b79d2a310f8153e7a5ca3258d221bac3b
Date: Fri, 28 Nov 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764289373

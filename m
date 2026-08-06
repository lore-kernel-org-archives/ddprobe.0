Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAA8314D05
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785985834; cv=none; b=tcl2yoXv8WYUBByEIQNfHfK4qP66hGQ29AHDmfv4pDK1fcOXu9CsYnoahfo1IgVjybEwBClWAPZOUIKCJJhfrSpKzLp5LPDoeKqk9MQvlYhRD+/kMx1WLXeWOut65vNXKdm2/rHhqtL3lw+/jUQXADtnW16mRv+F+Aibb7popjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785985834; c=relaxed/simple;
	bh=vidABUn63sJVMeCPRBrlvr5IyqIjwy0IJz4UUvqjBIA=;
	h=To:Subject:From:Message-Id:Date; b=fWeT/IjOofz6LC3BDwYxdlgvPUDms2YrR1Na06z9glDZydbj1dX/bwE1x4+luFMkphh2yLQMuRhzBA1nduDXojQZAr7DKqoA4NKZRQKt4QqOgA0PYSfTZ6Uw1EH0P8L5YVlC/EtUnRza/X1LnuPKLwxbKjFEDJhXQ1J28zY4+7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5T8bWy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5T8bWy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0008C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785985833;
	bh=vidABUn63sJVMeCPRBrlvr5IyqIjwy0IJz4UUvqjBIA=;
	h=To:Subject:From:Date:From;
	b=A5T8bWy961qLxgL30hmw5Hs+0JXViQmP6aATF+UF7W8AgbsTVSQO1WVUHtcGDPFzD
	 IB95zqTLqWHt9fLAFAwwc7W7lEEcVQGUf4f64Tc0Jf6TCD8GiBqyz+IVO/eMFqsXr2
	 bHwaxmZJSMRD+SkcDpkkgz6U82Yh8sys8gQSUgWr/gwKpm/NRc6aUa5+BDaIwfyVxn
	 8zdIKsioKY0YBW0LQIKnNEGgghyTaTQ99ddt/th5RBJll+qxekdSb9hLAcRoeCdwTA
	 HwuKe4nn56n6BDd7b0YIvJluw6JvTHCFtOEj0b4mXD+Z5/mZveB2GzRQW11DhtTQ9+
	 IPue80wRti8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63BC55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598583369.7640.11459568305331669803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cd98f3b9750a61122a7e63fa75db9e291f11230acc1354616341569d555278
Date: Thu, 06 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785985833

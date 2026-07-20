Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D17346ADA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784539114; cv=none; b=ROGtW7QpZdfNNvNGZRXy4wjTe0oXDd78apk2Jk64NoATes+myR3cYaiQwDdjK7LYhUVxmDkGRPDZP33o4RKXY9VEsyAi12q3u21/uzMh2hdOX0Ry8obkfmjwnkzdkEcf7cphl+f/l4xUcuzunyUV6s1S9g4qbsmXsQjNDEAgxzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784539114; c=relaxed/simple;
	bh=iqW6A94fSdzxtq+gljt/zQCjPBIOcPbWyQTa84heIGw=;
	h=To:Subject:From:Message-Id:Date; b=Y3IFu4yGKMx4v2Ty8jls7yBSejsZqiWSLsyU7WX5ONupPh81VkHgxUQyyMF1OWiM5hWMB5ev/ZV5lvNHov8qHdHhMyqr8ESHq4uReyFCZSgyD9yBLcelBi5QU78JgMsctsKffeR3S6x0QCGjUQ0PZ+W32venYjGGEb8MhC+HvKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulPxuiXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulPxuiXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8989C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784539113;
	bh=iqW6A94fSdzxtq+gljt/zQCjPBIOcPbWyQTa84heIGw=;
	h=To:Subject:From:Date:From;
	b=ulPxuiXX9SeSQYJrNAEDLw3fpyqawqgwwP7UL97WMjtXURx3PnBjfaaPAqMfSYOrb
	 Vkfoqa8ToNZAPw95Rnz6Q2eukHiBAtwYqK4SXBor8IXr2Ayhkw+gpf9Is4HJ958Xba
	 YHpdR3bWnmv9iWggNfjjZP/iIBXBUyCAQIfEJRkmpN+Hxks7xBmRDuM2b4FQ8mHaO3
	 SZrM+mHGLqDYWu3Jq2UAs1OMx4kf1llmpLRaL7wshSttW9kl+JdyXC9eqCNNldXdOf
	 OKqNYA8cIn5cgdb8aFwEw2r7xAuOKdyruPbC6114cnQt40+pOy9c67Fl9oI6LR1QxK
	 S9+a5Yl9pAXuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B644FC44525
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453911373.8769.1560692802816308529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d54f78516444f6d491ffcf70b754f5cc464a4a737d4cc76b2e5226d843f6014
Date: Mon, 20 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784539113

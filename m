Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13879325483
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763071194; cv=none; b=QfO+H8EnFGaPlPbgmn7SQ4MiLGTVBJhBrQUG9RKCb1BlPOvn3DnekjgUW9RAe6bSIBKYqevdEBMxe+7/to5weU+aq5vGko6mFn2Iiz7HnsKpVgdLpiGcLOLv5ZoLIJ6519n7vNsNVs3RqPv70YTLAhfdIhvwpkJjM6NSxQAwkXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763071194; c=relaxed/simple;
	bh=0+oxZVccOie6kEw3MqvEN/2DLXOgc/65vLMuhDzuQs0=;
	h=To:Subject:From:Message-Id:Date; b=q3MDUI8zQYDFRr74Gg3oe04f1jwV6odVSSRQmVSTajAO7BT2cipdeHPam2wNDgeyxMLhjorJqrfbJ4YonkLlOMVWUmHKEbTMJ3zAXcXltm4xwtHnJLS6JNr2D60y08mTcQsRk0EU7FIFQuLJ/ESOMlWIyaDm+cy/zmdS+vpD47U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wfz6h/fF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wfz6h/fF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99220C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763071193;
	bh=0+oxZVccOie6kEw3MqvEN/2DLXOgc/65vLMuhDzuQs0=;
	h=To:Subject:From:Date:From;
	b=Wfz6h/fFc64k7zSP+9RL2t9JQO8/TWLcoZ1ooSekzr6povIfnklX6q0yGwl6LFtSh
	 hb7VuKbAwPIs98MOBr5yS1tnuG/LsVTBLNrRwxI+E/xJAuSAqCtYEq427tZRYDFOIm
	 dDOL5g2DqOt4yPlTCuxNB0+bSXhD28a+xHjoJxZ0L/1seJBIyycfSuZIJ2VLhGUo9M
	 mgeyUJXvZF1bhyMO/Q4wHYePvW2Nf8NbSyY7vN4nvIC0qk2S2Dz3hzQB2/43HUJFuB
	 Qg52jT9K/v6RPR9sfV0rgzHJfiHwvD2alO6Rir1HluyHYfmQNrKEZ0yIrnOM/L8Kmn
	 FloetaFkXUvrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE0CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307119357.9296.631712977405180956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217939ad5b47e67998ac15c6510caf0b4561872e0e8bbf635b8c1db0a9a2c666
Date: Thu, 13 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763071193

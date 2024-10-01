Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4109036C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727744154; cv=none; b=bIvXR+47pMSGPjCbBI1hZrd+AnXQU6XjhjYWV9aw6bNdRYEB2so30CpJE4Yn4ynclAXMv3wBmelSUkYdTxPKT/++aSjZJauITWA93rMfTEjvJsVPDunlCgaoSv8BIMV6sQlQ1tOOCQnLit+sAPnYRoSAskO1mMDTKA/CkluG/v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727744154; c=relaxed/simple;
	bh=+lAnNzcfsS2GrE7kroO8790oLVQJSGzKxVK0aJ+y4Ko=;
	h=To:Subject:From:Message-Id:Date; b=stx4cHmGBpk9SkUFZ9SVwvzpQtnu1bux3Qn5JDbeOiq6jAmDLxE2Juyxo1VlU2jRbkMTbeLw3GqGMTZyXGMYjSeiLzevyav+yS8vmn68co+/cKIFwWz0/wrR3wmDiBXXUEjHBrIEIzZIYWIxA5OOjEUCYeq4nyhCruYu78f4svI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlFU6rnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlFU6rnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CACC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727744153;
	bh=+lAnNzcfsS2GrE7kroO8790oLVQJSGzKxVK0aJ+y4Ko=;
	h=To:Subject:From:Date:From;
	b=VlFU6rnnvf5REBiXh5ZeiUm8tNiapD+SxQhJ+L2fnhkYI/NeKuskJIFsbxQ67afl1
	 nOq/TcMZpgnHIjrIlPJm/IJk8iKA51riZspNB4Hmrk59LN9vARPIgq85vxKtaqGAYA
	 ngtertnT+CXoHtWzU8LU9F5DfoyRffAsltmo+zUkpVMLRGthvHodsJa2WZcUAxQZg0
	 egQI2h5YvNt+aT4tipD8aMIWmrcfetq0IX+8auFAP00CQXZ8Ap5OQLWRkZwTxhgIQ4
	 Kna73ugisa8k7o5L0g4h2sP0+cIu6tLiUZu+dF1srtDK53Mk3YpVLoIi9kvE6YFT/c
	 VMykDDBDDT2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2586CEB2CD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774415369.1738.4451282668447844796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa274eda8477fdf81ae417eabe8d284a8d176585dc4c3923a3ab96f068b8547
Date: Tue, 01 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727744153

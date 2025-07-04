Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BC529B8D0
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751632194; cv=none; b=HXBlKrQO9bYq3UxOPBLBQJBpr+cmAuGo2y9wk2JxHYCuWU8iN7F6xgs5dXWtQKFyPHa2uD1Xk7SczpspffaKNO75NZqOzh3N1oM3S0vr4ZDpqwzU66H+dMroMgvxrk9Ga0usWrvtNv+Qd1o/9eznDGalbK7ZuKcXq5rHfBxjQWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751632194; c=relaxed/simple;
	bh=xRGBtbRt2wF9Sggw1LNqzgdLQ8rAfUR8ED4AmL4p7ZQ=;
	h=To:Subject:From:Message-Id:Date; b=QPZ1nfrkaJ/F2nddSG99/RvXuPqaLDC1b/H0HLRx59zw05PrpMERmoad2NU70xCtfGVAv39+tcl5j1ueWdL8xqUrEC/SpHx4F4QfG0BZoIP+wqJvGxTEPirOT7mDcTRo99tn4/vZM6aofNYwZh61zC7UeKTTmUFf089mAij5zAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jfa9SFXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jfa9SFXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEB6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751632193;
	bh=xRGBtbRt2wF9Sggw1LNqzgdLQ8rAfUR8ED4AmL4p7ZQ=;
	h=To:Subject:From:Date:From;
	b=Jfa9SFXy/NDYzI1i5EZk0biQNABU1YlBCj/5Hyfih64K861OY2kIYaHOPq8+UHYgd
	 ZHfF0tu8oKe5bvim5jR7RN78VMnBVfWCglrgdA7dpIqwHesuopr0bUgn3BAQn8vPXc
	 c/DhN+oWXeA1JzpSXeedCsfxuZ00cEUbuV/y6i32ahnHTw8xelph1dDVy69+9GqqDf
	 Rii4UJFLddnJqRKZhUZEfcE/Ehbe8/jyJkkdZzEPxlmR9u8pOHt9XX7lDGv+JQE7YF
	 ntPT0wbrsCARHg38XeWsKGuxTtTdHeU72dDFVkRK8XVOEXBkJaBdrr8BRdyl2elfVk
	 Ejt0YIgrzr97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A1C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163219357.32732.14614429453460608489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6f14874b3c8f893c4e1c6d6dfbfffbdfd1e836c1f5e5926fc23067c24c64a3
Date: Fri, 04 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751632193

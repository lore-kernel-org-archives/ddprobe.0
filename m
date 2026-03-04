Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1677729D27A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772583894; cv=none; b=rEBs+FExH/47jv8dvj4uccmky26epaBKu9vnZ/ExMBk9VIJzasGC9yNsoDQaFNRk28BWS0qf/cahXKvpNwtzqOIv01n6QFs85kmS1pwvhwyijEGRFH18IRXKp0DdX5VxJVCWZHjwi0Q2gdvtHOSDzRPCT6dTF67qxkgfIwpuS/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772583894; c=relaxed/simple;
	bh=qOw6WQcimfgj1iaEhhqH9XmA/6ZVKaks2nxewp/GHYc=;
	h=To:Subject:From:Message-Id:Date; b=qSTK/9Yf0TPnnwkFpPOHXAIQK4yHr4WViKXtKNZ9+f27E3B8ytujmzx0nQIC4chnrSSue4BzQLHays64fEsJsRY+TO8A8XDYH+KBQIjbsvgk2fx+ZdLY8xKHfuLZtWbnkGUFaVZXHztAX65Y4wMFVByUDBYclbtfpq/a1YwNv4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEVNjmMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEVNjmMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD526C19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772583893;
	bh=qOw6WQcimfgj1iaEhhqH9XmA/6ZVKaks2nxewp/GHYc=;
	h=To:Subject:From:Date:From;
	b=WEVNjmMkAkFC/sUaZBxb9zIXXnfDsryicKvzy20ODLyvMWEr1n33wdIWYHAC13C8t
	 lWA3i5Vng73rR9nhgLpcogsW/L+0ypRg6j6EvvwV051k+biR831OM9srD0YKO3Pwjy
	 mLdtsVaw4U7w0XIXpcfT7w+I83CyVlDEGKzhwZzOwnAi5rYCtgISeHzXRsbzqgl3UR
	 1t3RE+zjFaTglKP+oYhMjwsoRLNne8Ez3djsQCSaasv/0UQKOfTD/D8wu2xsWt7gQ9
	 poouq8HvW0UCq2hm9rkrY4/S9EGqwzE93LtZVAfjPrN/Sr7mIU3isArraq/YfjRS4X
	 48Uz+uyrwqdHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562AEDEBF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258389358.31387.6674843468349660827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e3e2c65a15d261a56dbd85b2b46594d98dd3ab750e6139760f28fb9a3554a8
Date: Wed, 04 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772583893

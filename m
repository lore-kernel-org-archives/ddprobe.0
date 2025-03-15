Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD73197A8E
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742072995; cv=none; b=LVncQ4V9FEbNiv6jD3kD4PjmNadpjK9p22Vjp50ytBw82Fyrl0ROd56Q/JYdfQyzastQxnNFIoK+P26bGxjFQCFIQG8vvoZcvHaAlba4rHv856PkV3dTC85sXBSIP6RHc20QM73nZBSv4coGsYP2S6I+/JSNruvecF0mE/Dfo6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742072995; c=relaxed/simple;
	bh=2F2L6feMq3XUXwCBO9mNSL1OkabZViNLRyxUWW9sebk=;
	h=To:Subject:From:Message-Id:Date; b=PzBK/XrfsEFJ9apCFO28iRn/28L23IwLCoFMBk8ipPZ8Ca99njjym/v7rCQkBssonkkHc9F81tZRMPqFX6oDhV1GYfhqz/iRdWjg4ieauvf7sSM42GmQdyKZk+wHO7udAoF0fWz+UG17OqwXuljeTv/9v8zPHYUAo7blMCgw/h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfWzcH4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfWzcH4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD64EC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742072993;
	bh=2F2L6feMq3XUXwCBO9mNSL1OkabZViNLRyxUWW9sebk=;
	h=To:Subject:From:Date:From;
	b=HfWzcH4zKRahLCmrY51Ayb209A7SJMk9K0FXferh1pQM3PeR64Ce2ecH9ZMLRmR4W
	 PM01N9yJqFC4FUhg7r5Mh42GUsOXdo2JhSyCjoa8p6t0A2gNaCpX3QLoWbRzBUOqbH
	 s+rLTRuhqdDtiSFMgbUaFPEX07EeKvj4dJeoFnp8FBGgcDLN3SabbmAIojiXePpyV8
	 k+n1Z6Hlt9U/O8GTpOXWlo2hopsRESN6DR49Zg8R74aW+rSyuZuKg32aiujdQniKFv
	 ne7cqAXrjOUY6sqFk7YofOBPEILcXVlwwdCdZA+U/TUxIglj8TXwjwZs+rvBojbd+x
	 rNyAmpZt+7dZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F51C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207299361.32178.15426448709317019809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e7e2ffd6014c7e512eaacc9927c705e6096c572450475f798b80140fd0ae56
Date: Sat, 15 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742072993

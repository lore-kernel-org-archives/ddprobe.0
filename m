Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1882F948B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751634593; cv=none; b=LoIigTyLJ/OspTCfWtSiLle3n3vEuEr3Z9vgeC7eClUqDAHxozsIgl42mBRc+lhfyxoZjREpP2jIfFyKW2peTtl3wcYELqLLstSrNfl9wfErok0nBg2S5c2Czd6Xw1kIUcf2aJAbNZiXWhxIGvs6z7QkzAT3SZ+yOS+WFLzamxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751634593; c=relaxed/simple;
	bh=0iaXVY5dpvdql+v1cVYYp6PjbKHW0B7KOkKw4tG06Pg=;
	h=To:Subject:From:Message-Id:Date; b=V44Ns9i4PmSrXLHznBEIB6f46hGrN9/xQayb/V8oWoO9Z+kactWijV2gSAh/PbDx2mVLnN7tHr2avJuWFUZFYR0J1tc9F1bFMfOV5pOM3YINeUmg74CVYkX2sYx+sey3mUQ3QdPKWMIgUUsqbCZLB4jeeBoPt4f0lF6aid9whFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0PzlWpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0PzlWpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D667C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751634593;
	bh=0iaXVY5dpvdql+v1cVYYp6PjbKHW0B7KOkKw4tG06Pg=;
	h=To:Subject:From:Date:From;
	b=U0PzlWpz1Zo9OiK7m+K/ZwuABgW1QYNFErief0//TArTq3Yh2V8Wt6FDoAihhQVjd
	 dOdtZBKVeqguy56Or7LHX/cpi4D3we73cNlYmahLr1CdJiZLvzbTHKJjrb22JnjfyZ
	 xgnR6sTk1rI44bLer3d5i1E+W5qA4ullE0d7cQDRG9cq6zsK1dQIgAp+joEC+5ySoW
	 BHiT1nKZ9Dn6S0nX6CHjNJy/gaGOKjAP6obWLeRfYxnaqUPSJOnMiFi4frH9SSmZqu
	 BZEw5Ehspn4anQkd0nCe86khBFRBOH0dw301Cr6Oz1XaiBEWkcUo9cv1AqGl7mDOJ2
	 JrRJUiSfz6yLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A8C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163459357.21881.503146048695520666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90c52504a0a84a4fa4961026029097adc102c8fef712e72fda4d19730279e2e
Date: Fri, 04 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751634593

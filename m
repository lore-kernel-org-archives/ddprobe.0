Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3777F175A93
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783198714; cv=none; b=XL8nxouF2hmIytsWRzOiwbDaG2I63lUochySXBpnuBZVj3XIuVkPt2gQE2vTnQ6jC7WjCwR6+uo02bLyKWBVVhcbRGznjvlLvGhoN2DZ5rhnCl1f6wXfKf0P/nFG7P8nK4XwXJktqbDI1QQK6cdXwZPJGExxPbVfw3ZZRoxeZoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783198714; c=relaxed/simple;
	bh=9VxF5444JR0UsveZC/XHOLVtQaoiK8ngijC9bNgwEI4=;
	h=To:Subject:From:Message-Id:Date; b=Uf0Rx8cAEKL4EwiJ2sub1R8NGMfpRDYiRtVS6gyoELcVs6sCyi63StIZ8bb4a8vG+f4FzttNYJIrhN54X6F3/H/i2dK3kPRu6n2EsE4beOVMxp4Xzj3ZCrqHh8nHIfchnn76IS+ykjKsjjCWsqUaVoxJ9Kj71DyKw+VYTFkjbJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WopXztop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WopXztop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D555BC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783198713;
	bh=9VxF5444JR0UsveZC/XHOLVtQaoiK8ngijC9bNgwEI4=;
	h=To:Subject:From:Date:From;
	b=WopXztop53wjrsExKGvsAK8/oulgDgpK0je8Y+5W0Fru+48PIUyZ4b+P75sjDKOaG
	 7S7ee8jU9HxO5ceq4u70xw31WhyB2mR9c4K/owAU6JP1L1hzoL3zSgN/59HQeA+Rw7
	 LxE+gFPLFGx/pL+Nhtw1ASSawgiOfrDKuGHdAGB1QWngRXEq6gnZDCsVWcjkT38xWe
	 aLSc8tYgrbJqMtM78Dkg1VmffDAi7qmYzITwqXLtmVXrChFkfOvcmr+gEp4bd1nnek
	 BZtIMe8yayo9vKfKR0HA0flblvVy8ponIzPNop4yd6WTZsKhDcOoREv1LL1WJCviJX
	 WOadPPnbHEpYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8F1C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319871368.532.6506089229787399315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcb015017c58dba9084c85eba0c236b508c59dfb71ef88b9e721552e410940f
Date: Sat, 04 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783198713

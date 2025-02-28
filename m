Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385C6254878
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740733134; cv=none; b=JvTz59uEZZxLe0Gb3vdRXh2ZxqyKyBrgblTmGZ7PW3BhcwuRM0wIqniuYJU2CXG2nPbI0SmRRG08d3buE/qON2g1rTl+i20u5R30Qc6oFqdlZEU91pj/DPQ/ULbDgQsH6lBB3nEfbvMk2mKX91fBUi0DfxwWi4k9mgClZd28VDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740733134; c=relaxed/simple;
	bh=sGoJDK1cNuM87mhB+ZsmoOsWk04UX2e6y2RmBVjHRss=;
	h=To:Subject:From:Message-Id:Date; b=XXvnJcH7Se8/6F6oRVs8HPRClz0mhHtwfdpdf+803/XJlqLbY8H2IXo8ZEEGYI6cch+E/uGKrpK1luhWSEg04ae57Dgv9Qyyex1G6233zsBClqLwdNLYq03p63jdZqw5exyaYSabewwWTsJagUxaWy1VX5DZEwoSeWM6ad1Zz40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLqOtftO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLqOtftO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DEC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740733133;
	bh=sGoJDK1cNuM87mhB+ZsmoOsWk04UX2e6y2RmBVjHRss=;
	h=To:Subject:From:Date:From;
	b=lLqOtftOcuoiA9R6MxRW+A5cC0YeVQMdyePNnHUpicc36h/z348tUmaXZntRyslnI
	 3d5PuulUbNrADk5gMjbGt3NxnwGi+klrieAUDN1wQ7PN9n9KZJFbd7Z3zPMGjpmCYf
	 351wjRTqHre43M8MNVNNZgZfCPIi+YZjlQyaDiNQHA3r+pOe180upVBoyXuksFLB2g
	 +6IlP7Rl3nKSF/R8sdSGUfDEGMmLvzfEE2X6PMyA8BrRLwM6TqUqYt9CjXZVn3Tt0C
	 t8BCmqZl51zpB1wr63PqgMNfDtDdeJhOCKi6sij7xFlTHfaJu2BOOHY4eP9S9q9VxU
	 Y66B0+Ip0vpgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A1C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073313357.30781.9676559081389839120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f05014198e560657cb533e6eebbcd7d79b8c47ea4eefe58f0849b1c4a4662b9
Date: Fri, 28 Feb 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740733133

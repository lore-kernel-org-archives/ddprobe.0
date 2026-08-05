Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47476365A0F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785921634; cv=none; b=YNw9xViGlAikmT5ReOZJ/gdCMzatr1ZVCN9/G/IjCAh3BVA2Z+KEmGloxb+/RV96jdawyfw8I70H7Eyn5qSIeWzVjePHo8AgBz5zYzxLpoFFy1gu+WyN72ZCVYwDFvhIw1e8DXaMYVqw+mZ1rB3HfGtKKxn9T6VR961SefBe1XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785921634; c=relaxed/simple;
	bh=OEe4jV9KGJHTWjmdd8vv5DoRhgTr6YiI3yM9RJuKHYY=;
	h=To:Subject:From:Message-Id:Date; b=UbkHmqgevBt7Qth05jJFLHxrh8YwGRvTY1iFi4z8CoFChvjm4WmlKCyPlLsjs3eqJ2QqrkAfcImrXIwZOjgMDQo4s+XDKyxfkFtGzwhN7dxA5R1r6CImq9aiyxisNULpzePh6wJ9usjBWexEi9tJiJq1MqSr/oSt66WIjvFn72c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBbuyLGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBbuyLGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F05C2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785921633;
	bh=OEe4jV9KGJHTWjmdd8vv5DoRhgTr6YiI3yM9RJuKHYY=;
	h=To:Subject:From:Date:From;
	b=UBbuyLGGxUQD1z2kwX1mVRXhfg94oQIaXamX6wrtG158cvFKGco0i+WPtfoge9217
	 rwX9YD9AxYWTyjR/OrT8dn7lpPzDNhj0EPZTe5FkZTCvHa1jCrX1l8meA24RVTsRh/
	 NN+t2gMl+bM6yjNODGrVROBzsqEBdseY070jObRg5z5WKspN6QnBVR9ECLbkDKvix9
	 Z5zrE3NJZ38n0OLuF15aHs1IlUqJn+BzRs7xp21AHHzay2KnNfrAn8+9UVgC37TS6t
	 BFsZ1Ez8sFggPSYdT/C92VHtO5Z6K7vLYqh6BBKhjri5vLetrdC0erYFBShwUzvmba
	 aBb2csLZ9GfGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F47C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592163373.19276.6641907102783906735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3044646cc0bd8f578c8c528d9b036952b309289a6c80ecc4b59a1a7d0f9522ea
Date: Wed, 05 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785921633

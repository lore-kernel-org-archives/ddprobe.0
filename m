Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D442E7BAE
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752861595; cv=none; b=KFZ456Lk1HIaJ6BHxAdiDndd+8avgDER+JPzF75PwuVEXBnq14McrXRmcYcExaTQ7v99hXG2rLeieAcyZcHWsEMEpZyFlxdiSjuximB43z3JJ8+8wWwlq/xn/P8mGHjQbUmbmPiktFweQZ3EneEbl+dOFYV6MJGDNopIQvdl5a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752861595; c=relaxed/simple;
	bh=NOXxLk4YoYMr7h5tWhS6cGcnDuqLLkjLgQECF7SIavo=;
	h=To:Subject:From:Message-Id:Date; b=K99AhaH08etpW4HH6h0gox2d/jsN82SWRTwP4xc2uejm0bV6/FysApb4O12ypZEiyzV808L3f0yZNYeQWqhKQIR4oJXYGdO4f8LNpJGE9aAepXKVZaXfzaYp6qdtv1f7fWv1zhTbumptwH2a5K4ziMbqAqATmbG7++62c9XyYM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBzh8iMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBzh8iMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D20C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752861593;
	bh=NOXxLk4YoYMr7h5tWhS6cGcnDuqLLkjLgQECF7SIavo=;
	h=To:Subject:From:Date:From;
	b=KBzh8iMDnn0dlreodzDplNXipg49CDFPlV20nk4kegRjgbafO9aSfJNeGL0Fby4Mb
	 et2PZr7dD6SceJvUzpqOvyid2IATkbWbDDLEDE0BXvHCAM8DkYsX7zesrxmOCP5JBJ
	 00c5LyQDVji3jAhjfe44UINDGZT/6VH+Mk+w4UZRn/vcrDTRpwoDBYQNqX/yvY0qnr
	 KcBepwYNQa6kep70KJj2MuxCjMW9tZqOLdFvIqLwWrSp7uAyRSyVex/GvIM0bI5WPo
	 7SOFdkatEKf2xYKGuY+6QhEX3njM+9b3uFkWWVc9IdNpy3bYmiO8OjOZvF5qrO4C7V
	 iYotQDnARnhEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A9DC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286159358.13394.17139338633387333532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a0fcb0f00f98c7cb0d880a5651da5d19e63020e6139599115275b7ba74e108
Date: Fri, 18 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752861593

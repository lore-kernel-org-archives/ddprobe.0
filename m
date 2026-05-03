Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1609D1F3BA4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777807654; cv=none; b=cIo5VS08FyhUEWgi81kYB2vrGtLLs5TLZN2wKv1rF9UnmfcjxHaECwaEcjT2Ywns8gABm+DsmTPrv0S+Az2PxnhhzGMlahxjXF/dmBOHWIxuYx9z5Sr/8PVj/h1IlGiwae3haYcFOYi7JtJF/23WsIBSv1DYnQ1S73pP8pqCxS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777807654; c=relaxed/simple;
	bh=oYXHoR3uWAhZ7EC6Sd+d8cfpHh8TMJYdwYkWiJJdfHE=;
	h=To:Subject:From:Message-Id:Date; b=Bp0ujM9tqEp6cPnRTZ0f6imqLt0Hu+5/FK9nvfAniXkkMHOV7MeQD3bW8F1axJJQlhj7BIRH9lgCAl6HZTkZ4EgwIhk11K48lKgzVa9o1B1Iq08mIQHwqck3BP02cJiADAwnbPAgYrKDaOsrPyVj3IbkwYtjP/bm9bMfnxwUlwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqqGrqzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqqGrqzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA808C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777807653;
	bh=oYXHoR3uWAhZ7EC6Sd+d8cfpHh8TMJYdwYkWiJJdfHE=;
	h=To:Subject:From:Date:From;
	b=nqqGrqzSGJskV843MEc7T9fdXe3dZeHz/uBN5NAL8QyBPYrNdKiQqgwKdo4EqHHmR
	 QVamN6gAmIpq2zVGR+2hCvnvBYJBAGol41tCxQhhKIJ6kEEbE6mQBVKIFeCm7iQRT1
	 dsIygzMRqEx0LWWS2cz//Ddacou4qbS91av0Gpv9Mw0LcPoZLpCDZb9ed4lBRMPZUM
	 lei3uMmg1DEW27LGX8IxrnXXvHqIY6er+Ukwpjz6Rx5w3eApi8nwW4gDNaOhN25mk6
	 iQvKxlHicPEDFugWrXSc55C0rg3KEklISbZLk1V6IXq71ovwc9ZaJI5EUTq4x/hddg
	 a1meKLwI4dTYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF52CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780765369.25412.10530622726190264920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77101fb9a1c72804a6ebbf09135c890d423f8864bb2818076b00475a244c1aea
Date: Sun, 03 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777807653

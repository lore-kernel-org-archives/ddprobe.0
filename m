Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD3F31A069
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963233; cv=none; b=W/OxTs7Ufw+XcwvKv/ZnoZ3HG5bKOHoQ1sYv63SlqaJw5ItXi/2F4b+Bkrwfwb2evw+EJVo6Q4FLRiwegG2GjlzWBI3FlMiY+2ZQ150wLD1GfRyzcflwVArrda5vXgxTHU58QEypaDJmNLMFrguDggIXHRLJwydXj17297m1fGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963233; c=relaxed/simple;
	bh=iWjmkkuYuZww8XLZ5dkSkiaJml7DUhDqcBd78+4rRuw=;
	h=To:Subject:From:Message-Id:Date; b=Q2XUGkmPY2wpXGVRYSlrWYYBWzdcaxE88ZJretkBSVAOO4PQYYDKgU4eaVvwrtgeqSiOuBWBE3qXUq8GVt3lusVRqTrPqNYUP2jTXCLoBi6OCU4XSUk7B4dBmIotcC+RWJpVYF4VX1PXUtFhsrS6ZVzkHlfBHAIVDPFIYJh4VRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9Zy6qWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9Zy6qWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE3BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767963233;
	bh=iWjmkkuYuZww8XLZ5dkSkiaJml7DUhDqcBd78+4rRuw=;
	h=To:Subject:From:Date:From;
	b=d9Zy6qWyjgPCpDB5TVjlbIM09I/JYHuLXOaVTnze414foZZ1wb2DGkl+K07aF7VrA
	 /ksYspOGnRcYB6kGODr9mtc1DMaMdwTZ3EgfZdjEWAu9djYtAoMPWxUej1rw6WDAtD
	 1PE220Vd9vlQMRtZYRmrcXt00CWkL4T31ScT5/8wd6qPP6iswLykMw5C4CKk3vp6HS
	 Zt6eCivdNhEqLezCdHE0zFA7lmCeKV10257Pi6OL19Y348xBxp30SyKTQk76KtnAlm
	 BDjvY40IDgDH4eExGvqhp/OGcIUM0o3C1+W+0BpB+D9MXKWp3bFOeDbOri8d4+V5U7
	 OAPNB2sClgyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D1D1A610
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796323358.2066.3502401610951216208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b46cc0adf5af602be5701276cbcec152b74aa76b7e3d6991b98c286b3d78c3b
Date: Fri, 09 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767963233

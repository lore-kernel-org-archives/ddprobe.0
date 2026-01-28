Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E192C187
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769558634; cv=none; b=sxXeEGSiXdkoIU9v06S6SsvbQSnHOA+nL/go/So83Lw8bjkN5ZqO8m4ZsCHockI3T/mYekbgBHhHXSfPNLy/QJAdguZbPOZ1J9+4glEWtlwEb7ic7eV1BmqyqvZ+o59i0SE8t5FjWnR9riCFT/BMBD6mgq3vf6xn1tV4m544f/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769558634; c=relaxed/simple;
	bh=53UpkoIXDy1YHN42wMPeGLEwBLdHwwLWcu3J9uSv1x4=;
	h=To:Subject:From:Message-Id:Date; b=aGLLpXLf9acGe9EN0E1906sfkExie9+SJLp/kU3rLXIhh86ygKKUluW0mJuYdGBfaNSP6PnqoXBJ/y37zXr9Zfbu1GBJ1DrxxsIaiJffOqZk5vfGLI8mN79cSEkFwBuuVrsP9AK46OI18WLC8AZtW/xZ1993FBo0GfcHzsDX++A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccUBH63S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccUBH63S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FFC19425
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769558633;
	bh=53UpkoIXDy1YHN42wMPeGLEwBLdHwwLWcu3J9uSv1x4=;
	h=To:Subject:From:Date:From;
	b=ccUBH63Sv3ntwASZFl4ORx/pBgA/w9JOjrAtDtkRg2LNbGb3j18XSeWhKDddm3CO6
	 uqxbp32RvP01/jO5mpLdHfjnJl8SELQHKSjUW0zpXs0fk+Kx3Xkcbkjyq7ZlvzQefr
	 2rm0KosBU+mKIeW1oBN9orlGVYMNxwWsh7umOS44W++Q0OaKmfYEQbMHDPZ5D0byKZ
	 ALytXsujq2Zz3J22br3Wt3ytaq23i5YtQAei5PN94H36Tb0OQNF7JPJvVH6NdjMHKF
	 6iPPAIC+8t9N2MaPUrUd332R7y6RnvmiNi5qqNqh8+hmR+MiHdsh/u/vV9KzU9CiGP
	 hY09QNZB0A3YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0ED2FEF4
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955863358.26254.1892079583215850902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8325d96629913c4bbc0dbabd4adbe32b0674c6e38246d0c1f3a1fb8b9943c44f
Date: Wed, 28 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769558633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C7B1FBEA8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766859834; cv=none; b=scQPQzOE2CQv1XAqrzQMSo5txvRB/kLWXnBtLntIAAlLYwLW5BIvBl9r+v8UEfCJaWp28FowAmoqJzOs/kO/JvzXgFOxcwDfPPy0hP9RjPquxigPD2mFCkdPGwrOHRrgrZG+OzFrhvx3am1W5X95RFm8K86JupgmS0gGPXVPZYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766859834; c=relaxed/simple;
	bh=WNdy2XmoHMFgnBh3xAB8Tgz33HxZ6OAhI5oP5RKpKBw=;
	h=To:Subject:From:Message-Id:Date; b=Aze8omBnt31D74QmZvEZUsCCmULfCNtnviLG2Lu6ZCuWVaJHM2zgbMC3yipzJk/NunanJ+2m8NacoVIOw0c4ZQxI6ILfWrJ/kO+Z6cFBHvKVWynx7Vm/WcyARgYkWDEFpLal4dBbAUwS/9OtENkcPtfiKePpFKx70Qz85eBw4yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/q/rP5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/q/rP5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ABFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766859833;
	bh=WNdy2XmoHMFgnBh3xAB8Tgz33HxZ6OAhI5oP5RKpKBw=;
	h=To:Subject:From:Date:From;
	b=t/q/rP5/sq4pwu+dn/MQZ5I7Q3kAomIJVhRllAe/QPJWZ/l7NNud2/ssd0eNCjDqj
	 lkjjPtoW7af/+vDJ/+mtnNiPPhbYevAAlI7ya0xzKirRGPRxbMVSLOY//Qim1JqbG6
	 AnoL7Izv2A3IdJPEVCQiz0Lu00Rtnvlvvb66IAt3ZaTzMr1pGJmNOEtTWOiChpVVOF
	 I7yLkMaM/mYKWHJmZ6MxxfDrgcODH9HtCl1OE3nrxty+WPgVgMeIqgyalIAoORri7S
	 l7Qj4FxKgyFtXewV2Zo9ecQ/9u0/0CwVgvCyWYWcQiYrNv2gvB+nOq+p1CKaxkeEY6
	 CX0IqUzE2JXiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAC4E9271A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685983363.24419.2387611268388515504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5d7c77cbeba15c1f3e00a48e96a1da63e01df14bcb72216e09d0646e6c843a
Date: Sat, 27 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766859833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AB538D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782602914; cv=none; b=UPUvRDezopbVKt3U1HM6+BGKRYz0OsrSKclloAZ5P5sdM0BdOHmuDRIOubi6QdvWDKLO0JvuiYNZ1h9+OInb/xMtUzYtIVe7qt3Li+wDEqydv3juND3/EntWfgOaSF0Shqq7k1kflNoF0yHv2ahmCmCWW46CHLBLdjPuIrs3NZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782602914; c=relaxed/simple;
	bh=M9KdM/fZUnZ0prtPFsOuZ7WwBXPes89TjBIKPoKRqCc=;
	h=To:Subject:From:Message-Id:Date; b=BiyzzuqxuP36itPazgbyUWx2DHHV/k1zrTvoK40yWrnZ5peVBeCS5YfAVkuvLCSQgpGHvuqkJg86kCBohppA7X5M2WZYkMOEZbRCh/MkWKAqNFFIwa8jNbOwWR8lpk99i7+XVBMiZedVhCfdWKoukegrlI7IOkGjXUxvTExxOFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlJoREYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlJoREYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84BAC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782602913;
	bh=M9KdM/fZUnZ0prtPFsOuZ7WwBXPes89TjBIKPoKRqCc=;
	h=To:Subject:From:Date:From;
	b=XlJoREYDltwdos6LHcJjOIZw4m39AV/dwkFgzb+icaBJKQG53F9/28qtg9zzaX8ht
	 mh/AjlrndKn6y2HaL33cEavYKSUBixPJGVw+RCgziH9yckjvZDKJVmSJgKr+FQ6QAB
	 /U7JqfRC7ZVoEfcpc6SMop2jjOHIab5GiPW2kglHZAtRZY4SqFARcC1aW8hxQDIgLu
	 JyYq55URRe5kJhSFGLEnjSsxZvK3oU18DzeOw9Rw8GfKCAYz4ytMcXee4ZNo9jfifG
	 NRwRks5Th0HRmFoDJCHdGkq10vUgtLk5wenItuDq0SDqw0dgBiDYh/IXhl1myCyHsw
	 Nw6rP2f9zXPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80FBC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260291371.8264.4762680358662497658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b90455b76ce7fddd8dbdfff005ed5666e91d497f3d9192eabb5ebfd36a0ff7
Date: Sat, 27 Jun 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782602913

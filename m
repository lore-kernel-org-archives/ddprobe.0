Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CC620B810
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771986294; cv=none; b=JbbfIVvslrFkudY9XYumbSzwXHE3eWjgwnIt/YvwVDkf69k+9ZaOWqqsRQXKIqQRhdAw0RJ8WorBrZyH/TvOZihX8QaF/f+KuI4AxA4jBRVl07O7b+6BUpqNkQMJKrUEmAGIBoPZZegDGJTzxaxKd5dGdpRTeDoG1XZ+lOMzWx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771986294; c=relaxed/simple;
	bh=QTs7AUszNsDtbPIfecbSgo+fDBjb5Lqiln5MJnjTC3I=;
	h=To:Subject:From:Message-Id:Date; b=P7dHw2g0Xav+PbWcvfqSYhFQn0biAdDegmNAqiC0/FsgE0aTbwi7q0b20VM14eMNeiA5VHZBay8Uaa9w4coNILBdrxTM/sXuq8VTcvH9xklzVyx28MxYu2sK50pzoIcvFGfTsqABoRkVpBLXsgILZYmJQ+siCTkVr5XDAHsuQDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVNa0YL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVNa0YL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A829CC19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771986293;
	bh=QTs7AUszNsDtbPIfecbSgo+fDBjb5Lqiln5MJnjTC3I=;
	h=To:Subject:From:Date:From;
	b=LVNa0YL8DWohC/zGUfV9QJfTelwLqTi7xmERMG2Qwc8O4/lD+OyowjXeNShXqa9oU
	 fMOh2kAGpr+qC8e0baK9inW6PsMsxWGREeqlfhoBPBwaN+O3Mtde8X1JjmThdw1Z9W
	 jo9TsiBzQCKaZer7bW1lGwPAT6Xicdon1DV6SCuekxpxASvHmGAQdXDrOJaVT6kye3
	 qfg2BlyeWQPV5rdF+blDQ6mb0gYLKMlmiMN8M3Nxn8G1sBmUFg3ppWok8mZ1pVf+Z6
	 daqvuUcvoyghEpoRtGx8YLHm2fEzvio1exeO4RRu83rJFqCy6ZE+o8W4rMl+0yqEdJ
	 yrqcVMTRPBjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9864EF5543C
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198629361.6323.5831996101824334805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe912fca2f003fd95a2b11a4b67164cdf7dba374c7732f10dc1f5338795c082e
Date: Wed, 25 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771986293

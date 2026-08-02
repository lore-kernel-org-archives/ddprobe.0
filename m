Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5912D23393C
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785693034; cv=none; b=K6/dtNFUF9MjNYuCWyEwl6y3G/IltPYSFOQciE70lkbfip1UGIQO4jttNGEJFw9hUn0jjBxYHZEtF6XukFtpz31Q+FHN60YyGxxia4EOOjN/li1XI5rfNUER43qRVI7u8FpD+Ddoe16K+hjRSpSFphpRHE58Bar/tBu8p+EuNo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785693034; c=relaxed/simple;
	bh=f4n6roFxWvRKy64SA7kH1KOUA7zvGEk9XVxoW7MMAzk=;
	h=To:Subject:From:Message-Id:Date; b=NPUOGV7zhjpPQitHDiVWrU40UtOLn9G7uhvcR4xNiUt7qX7bjxcCyVGrU0WcEg1Yu84SGhj2p/oiEJFdNvw0l7exK/mdm90AG3sq8gYMfyqFpAXEmBDv+1hcnoCBx1R14tMhx0LRzJ5YL8ntstHLhRCa2W4mtF/VbrbEyWtwPxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kL4GCQmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kL4GCQmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1090C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785693033;
	bh=f4n6roFxWvRKy64SA7kH1KOUA7zvGEk9XVxoW7MMAzk=;
	h=To:Subject:From:Date:From;
	b=kL4GCQmFM0ZTznTpR9dkn6DAbV2HSd8MzJh7jreFOl6AVlQHtEmRS/Z0VEyGO80oM
	 3v2M7ODCU/Um+v0Q7oqD6mly0ihLALU3m5FHwC+Vg2dSnD3o77LHZVoYQn5IaRP6Eo
	 CVCh6SFJsTERzIaGNCm5Bm2WG4fn85/A7hTCJyueqZIKsnRlWr2reeIQKIDu5XaJf4
	 Yn62o2SlJa4oKZ7cqbNn1oa3ZrOCTiAwf1IAxB6fJ/jJzbu+iuBoGwDu9/3LSbRkO6
	 iPhsBJK6JyU+vqJshSW1d7X9uzO4ZbNGaZk0r7mVdJ/9tMhjuGfJqHTo4WTe3rGgHr
	 DnmeG1sHh+RdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3D7C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569303368.11274.13591757044379247635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3186c8f5c5081692d25a99611ca0a88e4557ad4ecd1013bd6e032c384bd387f7
Date: Sun, 02 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785693033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3291A6832
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773188094; cv=none; b=AWTAiwc8FKWLWB1eWQeVBGc96EhUnHJ1iws5CJxU/6KXilbdxqN8wRggAVIesdH+vyyDYE+U9j0lqMyXjoHVvodES1Js0OV+Xmn8+aDdRNVHsajSdsY76S8rDIpGrCbg22yjzZvmq1tO+OMA05XHEAdxl5Wbnir0/0cPTz1e6J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773188094; c=relaxed/simple;
	bh=SlS62DrC9Wx9nNrO+yU07ghBzEw7t26RxXXivtDyjtk=;
	h=To:Subject:From:Message-Id:Date; b=KsVhb6APcbVofgN0nWgLtPoVLo1qNAQiEjSy/2iLFqAymaZmU71hFHuZBAxkdu5D0CQvxr5XZJed6nHdJ+Pj5Nb95qfBSQpyxczeRw+u60nc4VSyCK39AWgEhTVUKFgtd0DQzWdEKoIOti2vi7A4MA3c/tkthMpKzlQNyEvB+Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUJZ4gNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUJZ4gNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C0C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773188093;
	bh=SlS62DrC9Wx9nNrO+yU07ghBzEw7t26RxXXivtDyjtk=;
	h=To:Subject:From:Date:From;
	b=MUJZ4gNHPByfDaHcUbjIxzkiiK47DP8ipHLYIhTH8HC01XIUUTFG6FS1bKmrb4/eN
	 b5yDv+WXGX23zknvvO3s4sDk+GiFRxS1nemiX5qCh0QkPqZo6G3uZp+1MVmOim34yp
	 lUKPSOtPZm6Nix8sqPhJUQVishhM9CbenEA6hEt07d1KxwibSbRIHo1RngPFaVyyIm
	 sDM6C5kg3cIQ6hz8Yj9IRGq/KoltMbeC7JXe42/3GBHoKuYlzgLgH6kpRsqHA8V5gL
	 s5bfXFdmMmUZ7xNXZ5CXZCQeUGPcAMw9T5Gw7zgUyTkLOfXTewL/MkeIK+fvSRbvZ7
	 dJDfMlkhqsxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5FFD88D3
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318809358.26408.6659732194825818717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8bcef1462ece85a832af95df27cabb184230ff6126addec0a015bbb3c3a2b2
Date: Wed, 11 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773188093

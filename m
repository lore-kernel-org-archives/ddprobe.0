Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF041EE01A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553094; cv=none; b=Ma6Ow3X4MXDI/FhhL/IQpz8IF73Bo3I7Ds9bg7jL8hslc7z2fLJmDQEP6cOnOtpFShi64/h0QigfDHS41CbCrsOAYd3x70cRiux3SLoMvYStGDmxadwyT2cDVf3vrnZgTnFJC2qqGlsxgJHZLHwp5XueKL5TCmGTdBAhMXzJUwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553094; c=relaxed/simple;
	bh=+vqel/fRVuVbqy76ZMYTQM5xctb++H5OhUMNy8IY4+w=;
	h=To:Subject:From:Message-Id:Date; b=clYOuoLbuO8HK1FIcssDHIsBQ4fqNeSv3B9t05OjXajE8kSACHl/ET5HJazP1owgatcVN/lhh/nAUfc/ce1D7WaKE7wDeOvAUhttiIRVemysbjXJskNXPYH2G8F8VlxK7ZX3z13a5Oqt1I7NzleCGjrNZ5PWpve1JaqXqLaqGH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7jR15/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7jR15/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC430C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771553093;
	bh=+vqel/fRVuVbqy76ZMYTQM5xctb++H5OhUMNy8IY4+w=;
	h=To:Subject:From:Date:From;
	b=r7jR15/iAQmZ7ofGg96fFzj/1Da0aBtu2RvGLas83/giiu7dyKO4LNJapBzQAQlwy
	 avnyRRDpjZukkcRWOyiDglOj3L8Qwjd98uRQWUglbhAG7Iy26Iwr3knQjjYZKOMcqu
	 jeMWXN9abfu7hHPyL0Rug3Qv0FUUPYrgl4y8jB4xUs+abiTfaKqvDf5BdHQlMSaMAt
	 bK0QR+0ONS8SfRVNyCJBGBvq44p0vbMQ/TttMuEzzLjwJi9NpYIF3H3D253hRvSaMe
	 7fyfvA7shRG1V7++3fGANLFB6J1Dv03SY/mvhWdQGPJo+gJ76lh4B4CnlH/hCh29Wl
	 6DMrkt2chttng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C57C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155309359.12299.8324507337922157015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3580ed0fa9c406174ff5445e649f28d9d0550382cfcb562d041de8228123803
Date: Fri, 20 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771553093

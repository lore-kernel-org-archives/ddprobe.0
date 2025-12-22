Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3120C219FC
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766447634; cv=none; b=kLqjrztv+84dp1P1zX2z07A2bmNWaEO0ugQ6UHrzKdH62iM922KSrJwbPq4r/QZAb474DfcfXcqqno9Om2A0XamXllmilR/k6OPGh4Ab66o4obnFjTAUIFFqVSRQKE4whUK3h6btggsnubU6WQ6gqFzPKDOf+ofag9Ku7fSj7Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766447634; c=relaxed/simple;
	bh=ZgGmOsuXy/yS9gPkPdWcNDFFimLNETB9xle4EQEWHtM=;
	h=To:Subject:From:Message-Id:Date; b=nZEfN8aeNMR7YLfipGJZ/dsVw3AettSDgY+/U7//KzYgENOZ/obwIX8pK/ZtJlHbBfN3/hYuMNVM1PLVcljaoXnBDOFdvTWIElvJX7NEdSALBgTjeWRAl1O9MTya7zLNgVaQJtoLCpGyscJt4uPxf4/gr90J/At8Z8dthryK5Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9J14NCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9J14NCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE5CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766447633;
	bh=ZgGmOsuXy/yS9gPkPdWcNDFFimLNETB9xle4EQEWHtM=;
	h=To:Subject:From:Date:From;
	b=h9J14NCy0JTka1oat3dSSyUa3mgrSIAK/DnV+frHLoD9O6OPubltfaV0FQA9XJeJX
	 KtgXk5KKmbsIHwd9JXgbAoRSNlcChDqxy5ona9gH2gN+SdC+bqV5pzBfskWWRC6YRo
	 EMOk2E/qtCLHxwV+CZOS/IKpR6v8PkghV/94jpFGpqSv3d6pWLJz7jed2XzdmQjM7c
	 m0NONYbxqonyLRlKEokgMsamIlj1syCX6cno7Ccsrrx6gQrZb1ANxFWB5MXRfyN7ka
	 CYfM/O6cs1AxSuj9pilwLjq3LTVI3hk2oYyXDe1ypcZBXtoaGVGWMg4RD2kzRAvwKK
	 CEcZW3qATayOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F162E6B25E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644763357.27192.15937362979973497582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5d437fb0e601e47d2c894c1488f8bdb023b9c1b5812311e2e6ec5d4171c01d
Date: Mon, 22 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766447633

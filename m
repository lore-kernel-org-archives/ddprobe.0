Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD12224D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718005043; cv=none; b=ExBQ6XAKjztO34HFZY0xszS0f2oFWjjxlN+QefrnvV8MFduyiUETB3+MFnvLDPTqWh5lKU9v7p973Vy+GGnnmVGnCGsDC6mxgZSsNN9grYTLQgY+ZbWSrHpVabC+NJYvQGw3Wi4BLyMbVV+l2gvGKjJIv4lvgoVeiChdO9BOhNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718005043; c=relaxed/simple;
	bh=flsebfzC0det02Bm510AmKipF7rUb427QPtU/mM2GV8=;
	h=To:Subject:From:Message-Id:Date; b=e3NYjBC0v0FN//NQrT2ZAktAjVkY+Q/ufFJcZ0L1nRGBCSwD04HieB18l/TTV5Adsry5hJ3AxCU15AI2+JFrsPi4XxJRXmiqg2+vllwdpjIWFRiBoetRQUN+JuM39hMjg4bX3S+zqbJi9e1ctmTqtLDiiyKM0wPIvJxSaUXqc80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwnZburR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwnZburR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB36C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718005042;
	bh=flsebfzC0det02Bm510AmKipF7rUb427QPtU/mM2GV8=;
	h=To:Subject:From:Date:From;
	b=QwnZburR/eUkWAmZKLIEJiJgeogksVLAr8Onh04r2GM02jQU8sOh1tc1mEbOJpbGQ
	 uY/xeuNuDHQMJkezpfatSEYdGGayXFbfeDdGzuKvpDHNTVM78vHAQZvC4hi4SFwZnN
	 jDTnmTLI+h3FmgsV2tuCNz5QgCDtGhnaHrrNVAf+oH28dCCULeuFPdlJerykKxB/yJ
	 dR5UWMdXgg08d8r1Gc86dro9SyDn537yX63lp+YuYZGHp/o2HzBO0k93Yo6EYvkr9E
	 k06oQeCwcKCSLyCv8cUgu3S7pAhNRZOvVugBbvhoZsAz+O1QBIGOILvzvV+KqIJMhp
	 +ywOsAeoLbbdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A78C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800504279.11716.4929285486428605476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa59be4ee0aa75e0b9cf298306e195e74682db0689905ce396dc2ef672a9a3e9
Date: Mon, 10 Jun 2024 07:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718005042

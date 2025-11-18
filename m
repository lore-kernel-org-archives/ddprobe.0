Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3D92F3601
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763501514; cv=none; b=RBgrjeelpl9CVo+BshQaBVZVNFuDy4bJqvVD8YdU18XOShmnmOeEG/kYzs4ukyZCx+YsTh525rX8MG9CZticA5QMCByXAh8M8vG1vlOw9ohqcXagkaAJmzhsK+wQnwguKMexahR9J0yiyLdlGczJBKZjaXOzFbUQYTduDFUTWWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763501514; c=relaxed/simple;
	bh=ozG91w3ugu+la7vqfwFC2P3vxcUpwO9PRGKtogYZggg=;
	h=To:Subject:From:Message-Id:Date; b=KfPyzgYHDc6C173KooDzmejzHkY0ThOtv28JNgbU6NS1b9r0Zi7TMFc8glHwGzEq/LeVEudAAI0hPb96ZB0Ua/BA/36GrOu8X56WHe4G0FYVNMCdfpnNDo2c9aRXs63BPPXAOb8Y/WHzCKD6nJlzDzbm7JxBB7bXBL2+2t7l8Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFEIS3Uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFEIS3Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D5BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763501513;
	bh=ozG91w3ugu+la7vqfwFC2P3vxcUpwO9PRGKtogYZggg=;
	h=To:Subject:From:Date:From;
	b=vFEIS3UkSRaJjWOg5UmGsQLbW30vaSQdABYiXAIgW0CrxbPgDkmLpLilsli1vigBT
	 m7yCVsXEwFed2KhYzgIho1rPq3HYZeD/KCG0hn0oJ+uc7SqxJuUnRoPVuQacga7ldy
	 rb9UWKoYkyymXYk2oXVOIceLqPVw1VMO5c4SUTCPpZIrdXIEpmOgvyxRzEZLnrHEi3
	 2J9+0bib+eDoMAKSs4sIY+u4lNN2u8RIqybD5vwJ5caG6QwlditjNRcO/UA0K/nUbA
	 pRGCrrsMfLI7uwOvAMxW+2/feSDGyvhxFSVjzfgBmKMXN1MTLyNua4RT861t70T6mJ
	 D1uFxt9dpyDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90983CEE35A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350151358.15323.4649576274988283309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8556be619789d2540c76c95a004c4276671ad33b4595e248b83b02aacd6d5235
Date: Tue, 18 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763501513

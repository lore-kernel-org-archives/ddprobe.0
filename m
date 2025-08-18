Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E6D261B83
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755514793; cv=none; b=iq6xzXy3FSHK9NLGKehNaqRnXzUnc9QH/CoOv4s6Q2vAxqg7pjgHZqggjZ5fv/0vdBj/D2bQKBmmqrrOhuOkBYCmDle8NcbyFq6oKyHVNOWi8PLHdXdxltpO00P/HdJR2DIHUfDSqKSsZr8jQvRNvQxExnMrfPpuSgYkww0Ff1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755514793; c=relaxed/simple;
	bh=PiUmMj6lnZTWA00VLt1s+1zfwrw5MbYeZdbdmHX8O2c=;
	h=To:Subject:From:Message-Id:Date; b=k1VmI6ckCk+0P4cfRS8guCTPA9Al76HNKVL/WniHogXtPmCIGO6g1EUhPUDkbJm1Yn7D/tOM4rnQTBPbuVHBuItXPaSfx5CHTCr4bNwt3BfxXYQ1PreBEwngLTEYQP9+kvMcpR8JQd1x5+of/6G9KPhJTLJl6UWzoZg8cnb2pWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ86oE/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ86oE/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC5C116B1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755514793;
	bh=PiUmMj6lnZTWA00VLt1s+1zfwrw5MbYeZdbdmHX8O2c=;
	h=To:Subject:From:Date:From;
	b=PJ86oE/LkRZdCSzxGxN0s8kF+S5i3c8iP3Es1Xjzo0BDIm8u+dt85z81iW46RlJ3g
	 gGy9ZpHi8fjTM/6q9YTLJBj9fWrZBN+dbt0ZMNVhbsFn00PKwcVwTDkDG/oGjLgFau
	 9mpd5Qw3y/vEOYN9D0O0bcEzTqldg4F4iJZYxxVzd/aK85vbFNMDb3Ep9xlKO6Db20
	 OdJzi9/jtpKtx7/bVDck2B8qZnOfzINaEtNMLytkPw4a9cVHM+7Rr64o+hKKsDC9/0
	 8tMjrqRTBL3eFxiiIGqYYr8Y5RRnPZc0YdxFEeu4PF/GBSZQHeXLIMTsoyePFbm7by
	 27ytzPUfOf1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B6CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551479357.26632.9107464683694352338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0fb531ce52d2910901f65b4ed133a132d75168ad3e6c7d7ec6dc0a79bef6a0
Date: Mon, 18 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755514793

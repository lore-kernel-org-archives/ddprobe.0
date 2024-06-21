Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599C616D306
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719000743; cv=none; b=hOTeIwZzbsToodK5/osDsLrCqXg9ilBPdo8XYbmU5q8xWbF4WQtkOvS2zdXTLLqCdEbR7SwivY7PD86/uwkU7qHmsg5GCY72jsklsqSIqpsY1nOKMPUH4Z6p4idjTmxFVb7YE+YMe+3P2VEvGjm33J1wxsgx9dplWtaJOP8kCcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719000743; c=relaxed/simple;
	bh=h937xObGomyR1AHRw89fCc+onPGSpNzqqAzaH3nnblU=;
	h=To:Subject:From:Message-Id:Date; b=hwBa0z6jm33Mx+JmmLmxBE/kPL2BJonE04VLvDos/ToJxtq8PQ6iADJEXrBtqg4eYgzvAB/ME10i0og4BF+oc6IIIjNJJ1ODgZ5mOqed39XyfZNfqbQIdhtI/7XeTFSnoAU4gz2s2Jxn9PT7fwGbOvod17dV8pFAwhJEsR1OUfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE9UETTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE9UETTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AAFC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719000742;
	bh=h937xObGomyR1AHRw89fCc+onPGSpNzqqAzaH3nnblU=;
	h=To:Subject:From:Date:From;
	b=tE9UETTTNl0/Xu0q625NI9t6Ltkp3Bm8f8t3I1j4AxNPMb0U969kAJXC8kc9Ry+2i
	 YuLFSwyJ1j0OaRNZ8EZsDM5POLAnhj4KCf6OCAdASVr3cGvJYIdwfpLbrcp0Hif7wf
	 lyPkKYf24SDlIqLmOnyelsbiDWgA+UcU7132qfC296sBGz/UDk7XRui2gxG2CVfpeq
	 S3IxeWZEVDAaT9pgPOYHhtNpJ5hOUDEotGP3cyzd/sdmEHZFAwmg/2VmCQahYzfGVt
	 ycxflgeksUYmE0IbnEwvrw9FmFd4Q/HwNoYGfkK8saQjAQrOZpMPwBEa5OgNQYkw3/
	 TOCcnuYg8ZBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC40C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900074277.28568.5006987664436369009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c6abed144ee0f029e335751bac7b257d8f1200a784bc7232012701970643b0
Date: Fri, 21 Jun 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719000742

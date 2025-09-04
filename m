Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139E9286425
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756969794; cv=none; b=otPYIgumXQlMJr7gt8bUmJb8bP/8E5GzBZaeb2v8hOydlGxDp2RAyKFApndl7dZH4LZvnwAMCRjeyWWmLmKgi165bXLQsZ58KxhUHGaT5eU4RAc7ZL4QDJOjcXxf9cC0rpKBn7zNvwmoXs5TbXSvBm+U+xbx2GiFNJaabGvhaJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756969794; c=relaxed/simple;
	bh=om+lOrSsKASnubVIZWfXUd0q/qi0d61tkXlpSP3rGzk=;
	h=To:Subject:From:Message-Id:Date; b=cPU/vxIwyVJP1U52svxREGg3S7QQ/Qm4sZQgNn+fcxyVNeLTG+vbQm3ZwIpPW99MNaqbpaMgN4ZGxTUb1r6gzb6KC370q276DeHVHotWer7fDfb0ePh2CvXjohROzshjR9QEwPrKbIOcbZzPGSJ1WYfAxHOPkJD9KaLcdBq+ARM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQsjFCX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQsjFCX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D52AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756969793;
	bh=om+lOrSsKASnubVIZWfXUd0q/qi0d61tkXlpSP3rGzk=;
	h=To:Subject:From:Date:From;
	b=VQsjFCX/2Y7OlBdl7ROIhvisWCSy2N8itaMUUSRdX+SYrU1P/RkedOw2KKuGIX8PP
	 v8tiohdxKAoVGtvgV3Wrp6SdccdpM0UnhBvybNrn0UbbvzEpZTuXgynST6p8BlNEQa
	 qA7sRetPNrZOb2Yj9+4E31L5hzK+vt16bdfeM61SnvL1zzbTUcM5o+Sx7CX/HnwmGo
	 qckXK2l48pHrk2CyPISa7Zpkuz6TX8XGt+cBHejb/ZNseQ31jO+zb6MwpptYRAnvJH
	 pXNpV71fb/HszO0W9g64gSRIkvLM0TTRmtPNjci1ThP/V3gxMIVJokSsmqu2Kn/4+k
	 YM9UZ2JJCJLiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF42CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696979358.20438.9105670003811084420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf5c2d108fc5c4bdd75ca0e3ea57d03791669d8ddeeb50e7a227814e22c9ff3
Date: Thu, 04 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756969793

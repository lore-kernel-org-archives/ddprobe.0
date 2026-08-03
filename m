Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4928F12E1DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785721834; cv=none; b=ehvVVKmrOpiItslfDHN55iZIqw2LVm4GfYe0ITLDKYuqagc2HT40v2VP8bWNFjfwMdC6K0SloHwCD1xW48JA9IMf53RpR4pg307QuoX5IhAMZS0BZYFPGqcgELJHcrQ3nDRTEJjw6XTYmvsiFqMS3mPyUUg67/rAFkt7q2066/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785721834; c=relaxed/simple;
	bh=2QuJJ2xJ8I/r8WFen9q5f2tEP//vbHVc9V0LOSe+f0Y=;
	h=To:Subject:From:Message-Id:Date; b=mmh2U+GP+xz+IO2ge3Sh2NjMZdB6eH6o3SgQphe3Tk/f9L8HyYWztESfBOt7cJZUdasJKM35bSVlXRvDzMSiB1gd4SW8Q5fHmlz1C5RqIlmhMQLrxbo3e3R8dzv2gPDQ7M/8KrWtb/OxcSP5W+2KZmV+XEGzeXMqd2osGgGre4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMASMEZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMASMEZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF117C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785721833;
	bh=2QuJJ2xJ8I/r8WFen9q5f2tEP//vbHVc9V0LOSe+f0Y=;
	h=To:Subject:From:Date:From;
	b=WMASMEZNJyDkJbbbfMu/13L1tEBNCL8Egr3yn7OMX8julCgJn5AiOu5+WbCkxRx8m
	 M/U1ac1a3uHNqJlWv3QT1NKAWW7CIwEkqHlucYMyrq1FRZG0vneMvaMZL//+MtkJLx
	 viUcP9snRS2ZoT5bXhhes5B5nl1nWIh1vjQL6kKiSEDeTW0L94ShPrqdIky9WsfbhS
	 ourRfcdMW9vdzIyGhfaHzEwjvFsD7ICAZmaq5nk9Tb/quOjIF39UxJV5dP/QWs6Yti
	 T+GxW8P9UxGVQkjZsaMoNxRm8GKry/a5PFCBN0Cn1fktxr7qhZu9fDf9wyKfrGZWLt
	 ySpiSgHHU+vEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D3C55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572183368.27320.2123254031112785512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7df7c176488732f264fe62e65e00f5e4d7ae54038c9c9846f02b79c7beb3053
Date: Mon, 03 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785721833

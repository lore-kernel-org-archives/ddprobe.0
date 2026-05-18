Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA96405C57
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779139234; cv=none; b=Vc4LPdtvxQCawv5qE+ntIckCgze9akvMfpi3WKxaDv2/3up1xrOEs+0QfTdxKr3B6LcO54QSwNR1yyzc5Z++HUZoPz1SQGtaeVghiEBv05HzPx/HldJHGaMvc8nqkj2ux/GddHKExfKx0nFSPuB8YeK6Ou/mTbT4Fi2AchEhoug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779139234; c=relaxed/simple;
	bh=pyvjDMC+vqKPntxYCOoKlf7ZhyWVgzdXiqqS+a9dECI=;
	h=To:Subject:From:Message-Id:Date; b=QKG2b31gJ4Ms4mZ39L+x0Q5r6B/X+AZt5QwWoWQ23YzAuWGOFSRBPFv6NFxeS+7TMraSX3DEDu09C78fM9Y9R3JgUrlYEkP4AVFGrqLVrlueC9QxVOTjQn44cNdWjXL/XLQC/vBZ+wfB0J2derWChN6Xrsz8AnR0HPOGj/Yk7YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjuF7Ltr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjuF7Ltr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA122C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779139233;
	bh=pyvjDMC+vqKPntxYCOoKlf7ZhyWVgzdXiqqS+a9dECI=;
	h=To:Subject:From:Date:From;
	b=HjuF7LtrbnjXC1fVDm+wYd4vasifUCs8PsKBFF4bAXJIZKwd59GSw8I8zDn+sSwjw
	 nm0g9qvIY6af0qrRuch/OVd7bSO6pLyEMXa+c94XFDqytQ7bzoFySsrhnsy/o6AYfM
	 AljO/dESpK+i9Zsnd63DzC5JlLmrPZdPq8cn2pziujZH/9pwEFdBDdisIW3Q+hSgdi
	 VH3sd0IWm0sLbDrXnG7hb8Cm03JUwKIee48hHgmlcRTj5u9IN78drct3CbzJGKWOFF
	 QQq8c7SzMChoqcNzrFAED3mma2obmsA7nPisgr870Atfq4hP3ZgpttJX136T+UdJ8z
	 rZ0MtjxPq2EIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8ECD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913923369.5845.443040701414264015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6960c35029ef48b6570c4d10ceb5149bdb3a16facb0474532d124463ee67c52e
Date: Mon, 18 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779139233

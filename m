Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CD21C8630
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757052594; cv=none; b=uCLzSBCzPEamU+SYkkHVI7Lk652jAw6LWt+HwVpcKbTyj5EF7w0qeDU6sY780QuJQ9YjRPQ2drGNLreMEJLOR2Zo3NG6p6Pf1FgrR0QkAr8kZbg2t1lCt1PHzfaXca14B4Q2FRagpi2ObjhxwI1ZuUEzGnqAFIpm+PlSFb8YErk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757052594; c=relaxed/simple;
	bh=UdDBB53lxfg6+wjjyD9ZTTGohWPbFDX2GFe1rDM/lps=;
	h=To:Subject:From:Message-Id:Date; b=YFF6jHJtMgbITMb+xlrUq9+vajKVXlqlPRkLWjAGRmUXa8w+wbfLF8UGiVSUokc0yP/Al1C2yjkGBV87DrJnCMNGIMm7t1wSxF1r38x4Lzeh2KajRzV8xkquJlrUTJ31rFBP7EEPfIY7rDk4E2i9QQIbknZofJFooh2ZjkL6EYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWYd/dg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWYd/dg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757052593;
	bh=UdDBB53lxfg6+wjjyD9ZTTGohWPbFDX2GFe1rDM/lps=;
	h=To:Subject:From:Date:From;
	b=VWYd/dg1s1ti3dnLMFu2vzKUFhc3gEMr08dfSUZXlFYypQiNpsUyJD6jyWIaTNGBT
	 NME3HIUe54oP5KJC454qM4acVloxZ451GtR2D3l5ZE97OZ/hMuPtyafci9+ghNBV33
	 ddmk7vh6xL8QaGJa/7diOQu20XpKamvXgyWzkMB5YBVA2eBhOm86bAGe4RQlgNuO1c
	 NhWSS6Y96559SS8Qc1fMhchZpTiA1hSYqNVes5ss9MyA52F4TxFyDIjed9t+H/bxm1
	 If5HPiuXw26eBQi2UYvj4UFaeEPB8Oq3PMZtzkg3YDrAAFyqsS6zoiPzFI/YToPp7V
	 34xUc9SdbKctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94638CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705259358.21051.3531752332239840025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26661dec9defd158f870600a0f0cd57692f532d097c47562f25e83b17e212fe
Date: Fri, 05 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757052593

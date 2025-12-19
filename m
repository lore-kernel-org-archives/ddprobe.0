Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515E22256B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766173434; cv=none; b=CKcs2KvCtA1sx6aGZl4Cx4CBq8iGMOLzt/l2j/hTmXXuucYg13uRid251mrSa5Iuq1lRVsNCLxOBA4DIAmsYlqU9CFYm0sWpGXwhdRHc+XF8iHmF5+4OTZNVZWarTrmqn8nBaYCOGf+4UjTy8ufQsuFh+SOHGPN2oKf2cKOFC5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766173434; c=relaxed/simple;
	bh=HVVlV9N9kH9bJnC3L4LoOjFy3Y74p7gzPyXagpuYQrQ=;
	h=To:Subject:From:Message-Id:Date; b=fqaAn3q5p/4izpJcAUdUmy2aDG3xouzCvfbDoyuceKEoD6SUShCC0PdptIHixV1vhNE5airMWqptFAgy1uW6XaDYV4S8d0XGKSlZ1mlwZ7feIwGG8U/Sy6OmANrnUbwIpbWZRCa1ADBUk7WpwqdKXwNrR3j2NsWFCtUGcfNeGLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnUQA49p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnUQA49p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4446C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766173433;
	bh=HVVlV9N9kH9bJnC3L4LoOjFy3Y74p7gzPyXagpuYQrQ=;
	h=To:Subject:From:Date:From;
	b=fnUQA49pXVO0p9WzWDLdgPkLpgzH+EyTJW1c17J/5oYdWGEh0o1FGYS1Q9axiX6YT
	 g6kSKZStL2ksKJX6nC40vQIZAHStjCbWXKMvTrn0Tcyvx35eKgTyUBvLDLJS/bKvtM
	 zGQWR+X63GMuwojxWW/7bM3V1Dhs0KTYG8/oexWG9k0SZVXHZ8yMNdmfMTRwWRY8Gv
	 WR6LfZujRiqVOCmZquCrHqRaGXWPEKyU4W5U17Yxk7o1cLiPlg9SPAmlW5ozKDvcmu
	 ayp075i544j6MrC63zLi2amqS0fyWT5PLnYn7cPavzimCs3RBE5YBudEKnwYpWCePv
	 ui2b1sUfztCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B7D78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617343359.27668.2728250998843357211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df66e0f939e083485ce73e6f92a50cfbc571076515d3dae26ed1490c8e758d6
Date: Fri, 19 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766173433

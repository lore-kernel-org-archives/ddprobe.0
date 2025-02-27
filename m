Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FCE1F9F5C
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740643734; cv=none; b=d+zj/4gApSROm3FURp3hHtFJcqef9Nd86mwSQt7iNYkN50RIWHkXcZCnnY2EBDxot3nJ7Sej5JBBtKU73PIOtlveiv7nUngPqpV570kQLTPUDXOBkl88Er8ULF6jwRSg+yjZvdegbXcSbNPF5FhyQAV+wk0bSKBdHZasw/dxfGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740643734; c=relaxed/simple;
	bh=UVFE6REjg9TRxhos29tLbHtzJg3Wru5mbfU++tfEsp4=;
	h=To:Subject:From:Message-Id:Date; b=Y5xaevm3b+EEUNnINwhkgyi7C2cXaV3hhwYv6IYqX9wseq3hFlTWaYd5KefHGt0f3aklkkal6CEBAI9gM10URCfIqW+dNzTN/pV+51XXGHmDf3f5xur0So04vdyyaTA5IzKpIuipBDL1EWj7V31HGfGMeMjf7F0PRxpUrchlswA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xz35gmvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz35gmvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32E4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740643733;
	bh=UVFE6REjg9TRxhos29tLbHtzJg3Wru5mbfU++tfEsp4=;
	h=To:Subject:From:Date:From;
	b=Xz35gmvvjYIPO7+qAgVHAazVi/wZrftDLdHCzp6I7MjVzbKuonfUXx8YtGlcppUJ/
	 ZCxxphAfyj8xeez5bZizi8QLIbtD4B6raxsaF0x/8k6yBDsxy9CtH96iAtrpxgtGR1
	 dKD1Z4wR4+RFP2/+t39T2sSX3YdQ3YllXxRRjTR9qmyVsD3s+co5LbRMVLDeJBm8rI
	 gVx6LDre7LzVs/D0egtn0+TkLXIvxeDX75tiM1tR1BlLORrCX9qrU/1PvSNvIVLuqf
	 MEcc0GqsZrk18kpGI9o7CWwGf0KLSzCwxq4L/GeBOrCx3f5B3ZlPcXDf6Xxb9yyZGk
	 pTS/BGr7LD5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEB4C19F2E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174064373362.18069.3878199867407122399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3fd2aaed1fa247cb9cf410e1a015c6481ffcc7f44b4d23408fedc2b95ec12f
Date: Thu, 27 Feb 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740643733

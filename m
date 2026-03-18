Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8AA3B8BC7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847494; cv=none; b=EPgfebSYMz8YKGtxqP3WE/l9sEnWV6uCBEVZYCrZfzMCSWPpohymwejt6ICbzKcY6TON1WU7WB7//ln0EeewOIV/6yRMNNCoXg1SV/ylEHVmZhfHxS2F5G/D+N0MMR4V+0Ur25H68WckB6LA7KGdKhN8RV1Ef4LXJF7AIm3HvNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847494; c=relaxed/simple;
	bh=ruv0fWAQFushUJptfs2q0x6KomwAflIzqKsShcrftMw=;
	h=To:Subject:From:Message-Id:Date; b=phQbw7Rl+ZIo7jgokC1SXGCJYbL8+Y5Hv2uGxmtRESDLN2xwlWRDMZoM59fjNMPqvTfAIWCSCx5nrhHcii2kJ3LtrU5KoAQ3W8YSq3xWxCMXAT4LCIJOXT92Y/XZF6hVL2RpiTFw7Q0IE9KuVx5AnudbZh5hhq9ds97Ac0Fl7bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWEmEvIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWEmEvIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50A7C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773847493;
	bh=ruv0fWAQFushUJptfs2q0x6KomwAflIzqKsShcrftMw=;
	h=To:Subject:From:Date:From;
	b=kWEmEvIN7Gtg4UbDwLc5NBHHBkuW9EXc6piCvq2c68pQCtcz5jqP+lxDWb9KW0PQG
	 elMD/+Ijc0B8xrNrI/UtOlACWdLU9qMwvse6M7DFMdVCzfbyYf+/8vGcSpB9JJPxOa
	 djisaeFoc1cK8xbm+zXQFkz9vCR73OYahxIMWflFIYLdpubnR0VILXa6+Vek7FdVIf
	 FKujb3LZX1HHBxFUWi07CsKx/QsMORb6swlCHJi9dKHxENP6w3q7ZwhsOjsyUr5klL
	 p30zaBvdOGaMmC19iuTmdd1+JmFLVB0+NfVmq7RIu6zXHAa0E1+6I46EZiOQzBcZ96
	 o478nZXqlkMcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FA103E197
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384749357.17624.5596034324824733226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24734c73672f3b038bcc269d5be98ada2081870cdb053759188fdd3665ad93e8
Date: Wed, 18 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773847493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1791D3DBD4D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774525494; cv=none; b=FVdSRZQEYXfrySSb4Sf4TTaQf0r/McMiU20Xv7vkjCGwiFajRHed3Zolsl3uDGRW0W9Pszo1o2CtuKCLHla8BrN99f8BKwE26YCLt4ZcEdphG4yVF/C/GaeAycKo1fTmO9quPJQNsOfxIh0PM9UisNIbkTz9Ai7F7S2457HLqNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774525494; c=relaxed/simple;
	bh=csVv1ZdNBawcy9IUUQ8o5H4c6JdLey5PzmJJPEVIFs8=;
	h=To:Subject:From:Message-Id:Date; b=ZnaTB3WZaAgD3sFn+KVCJZceOQ+tbwQqvibRfX24MYKeue9QPKS9ZlTXozK+k/ovrVNgU6YXuvIZZil2Bizq87GvkYxaW/f7LzBT3yEqziHtDjJFNCDnZpZ4XTEv9bxINKeK8pidLME7iiWEN+at9t+WVYUgDNcTGITlqUQ+ksg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7PB//FF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7PB//FF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50B1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774525493;
	bh=csVv1ZdNBawcy9IUUQ8o5H4c6JdLey5PzmJJPEVIFs8=;
	h=To:Subject:From:Date:From;
	b=i7PB//FFZ4Xqf7hoZQdJ1ofiD2llE/1GecV5mRxnWunvvKN8QYncSOK7KvFpsiaOs
	 P9zjlJWv74fHNvqReLmuoxMqrtBE8CGZU7PWJVGhQXs+WqtvfAX5QDkjPYBPNuUx/N
	 MdXaeA+0iidPAQFENwHFPyTTd5V/LrqVqxZPawZK2fB2wpjsYR1iPx4ozuGMAW9T4R
	 C0VCHw8One3/rCpe950iwfgGtdlC4fj0KA3E4jUa/xie00jvwx0sRzNuarodvEfQs1
	 dJx9U5yiQx21tGnX9xPcEiCz+rxMswMpoPrQn5sVNY9D55/HJtM4Hmtnw91PsB/mTA
	 H+tStqIDQlLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A095110A1E7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452549363.16533.12996672600219468426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c73b0194529595bd1321a13e89d89b0a5f4c87dfa0b2ecbe02a8dd802346ccb
Date: Thu, 26 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774525493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCCC207A2A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736502954; cv=none; b=aKQZO2IZrSBBNwCsYlKhjY85yiyGSB/GGyYavK/qWjVxpkEQuZfwXe7jBtkHZHMUbmM+7nHsXB6aWbJENKfMuP3YD1k5EAr8wKlxeIaFgOKerqnp9kOPRVX7xLsiSzK8G8Rnt/E2SgUiuRUvlKBGvCAHdFEMXJ7WFvyW0lECaro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736502954; c=relaxed/simple;
	bh=zKt4blkFVyExw+bYyT6sV4IBs/2ErvHlp0OWQA6T6Zk=;
	h=To:Subject:From:Message-Id:Date; b=GTga8rAzjjUqMbLh5sgQ7QcjgpCe1agIPCh3ez2elWyX0NFnmoXaMUQsLQ9SJy2as4kK/omQVc/nUlsMffh5dM7W527h54wnNtptNVsBeiXAdrgxAdS4KYEhHTLT5V42Hoz7rSqcxinW8mfoi5/BTW/jOyJ4FG9WW6vayPWXGOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoIEftvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoIEftvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4826C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736502953;
	bh=zKt4blkFVyExw+bYyT6sV4IBs/2ErvHlp0OWQA6T6Zk=;
	h=To:Subject:From:Date:From;
	b=SoIEftvzgYQSKLUAL0TU82A170aop0VS/MD7qvXImScrI2tZ4cpgkd44LikJfq6jW
	 cW3IfFK/hrqPEjkJ37x3m52DmGXUMmQWDFgj5FEifiEV5xIuy3SsG7censKc40PTtL
	 KeCmLgyv89Y6PqtY2Ttm7pFdCUwKDDX05u6auRLQjxDG+8cZt1VQSQUmbcoYvwiP7h
	 4O9Uxd8oayLv6RdMvjo56RsU8P9XE8xyozpJlxI2LNfqxPucOwCGUeMKCcWyP5f5ZY
	 oyziYu8b4AmnUw5E+RP3GPX7CuOxWebkODu9hlrzlqZETsqdYqaVVppbXzvW9ClFLo
	 xC0zoPGX+1J+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91064E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650295358.14474.1516464299613553493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816732db4affe924935ca7e2fbd7b69c2fb550860f214fcf52097f6c44a80211
Date: Fri, 10 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736502953

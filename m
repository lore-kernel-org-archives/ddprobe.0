Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1CE14F70
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046394; cv=none; b=eOD4oiCE8YILStuUcbOpdXf00Wz3zjEzUMMwNsG3nal9evKaF/cKS0XTUr4ULWVxFDyir37DXpi5LXfbl+QUNnIrQcXrA+IBjuhqo1iQ3FZMlUJHE5y7nluYDPp9vxF2ouaiBhNmW9FZnk7K6JlENnw9Lh8m7/NWX9D8v1lkg+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046394; c=relaxed/simple;
	bh=7z6ZS/TbTB5jXBdhBmiJooHUHB0a6mFCXzMBc7s65zw=;
	h=To:Subject:From:Message-Id:Date; b=Y7QFZ+ZDvic7gNgYs8JOFWq4pBewE92LFPzf6bsrPA22hsaPxlVoW1NLq6oWtDT/0eE5GOLwmLx7sJ9px1QD15FdtwUdpeLYlwYdHn3FGKfcYhV+4tAGAQfkd6xY/yrt1YkQSYhFQcneaSvqOrtD1Wa3V3BtL9LLlCzwqABp2GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B89s0scy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B89s0scy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4103C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756046393;
	bh=7z6ZS/TbTB5jXBdhBmiJooHUHB0a6mFCXzMBc7s65zw=;
	h=To:Subject:From:Date:From;
	b=B89s0scykbiWAept+CaEA9pOezOdWKhgBwUtAsEvqFD6fgLfEsco44x9DCgVXP6aZ
	 OHirz16EysmIGTCc/GFaLhQSgFggzNjIgF4UseBmD2fU2rZtQd1HmTKMYPOjo9JXU9
	 lai+K4cBYfzMyt5Bc3QSsbL8x1mfNQXC7F7m81wWYQW2iWCjJ/8F2gc9FzN38t3+4l
	 WD5oTidw+bY9bGYti4fNdv8gWDftjzOyJBIBjVf0ZMYZ8b08pr6U9IJQ0/INNFkalM
	 POtu5qGzvkDWMVHsJMwj1mE8Ow8gJXWQBgywvgUPMZzkcfvKphVycuCfj4qsguUkhu
	 xTcOrFyzJt8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92782CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604639358.27236.15927097111785919536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4ca1a083220c5fc5daed45e54a400d95a415e9807363c870044305ad0001ba
Date: Sun, 24 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756046393

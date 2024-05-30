Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9DC36B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717028663; cv=none; b=kZyj+JRsgfbd9cmvlzI4FSIYPsTv6VaagdiUCII2VjgrATZd0MvFT1RJ1Bq1x5GbG33Px0WYvC7bx0ScCt9tICCyZzY17DoEKGuOmk1PXse9H3TQ9Fmm8yuhNR0rI7B6hXXPCaB2XSLVEPE6OP74ZOeSdXYNNSGYbaDzb07f0ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717028663; c=relaxed/simple;
	bh=RoFHmKFH0Byy3xcrtGWfUIR9nTdUyDDDqVQnlAtOTR8=;
	h=To:Subject:From:Message-Id:Date; b=uIdh4pI05uX2c3mF4YbwUhpwdmCKjgPbP67Ip3iEZiZO56iHrrWDHObIG51Lt5FFngv/BZIX2W8nFNJHs0N9ZTlr3HXcDHA1cEgkGWB/3zkflQl+wZbHU4DnbXF0VnZiskEnFlK4kNP9V4DuM/1tvFgFdm7QtIiBg9KtN3th8FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnZNtYR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnZNtYR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDE6C113CC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717028662;
	bh=RoFHmKFH0Byy3xcrtGWfUIR9nTdUyDDDqVQnlAtOTR8=;
	h=To:Subject:From:Date:From;
	b=VnZNtYR6xwGReQW7VTtgdAr3REB4tD/oyopG7cEzwFKsZWWQnsvP99ib1t5ZYWM/q
	 JB0+1Q4WuCXX/sjgDeE7ah+8Ykr3SnsX9nJ0RoLei5D3KLBsYl1XXmou+fqi4DN1dk
	 nWAjCCZ6pdwOYAnoaAVAzyMD7zioMcvTFUX4cjFmpWJj6pujsDYRr6bFQujKBWzvZF
	 ZyBuW7lEk0Ut/HyjajRc4y5gVvQgwLCgRPLMC9Is8ez82owGbMcmEzAO5QL3RaGBUC
	 g7P9tsLb3S36MmQ1ELS8+Y7jGEsnxRfgDzeHJepduvp/Tlufb4pGx9s92EBqw6xQ+Q
	 3HAXgDG65Iibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EEAC25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702866277.14515.6316774021116213843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1762ccad6d19d39431e4cb94da5ec012b9aaa61f68cb93f44ee918d9f18321
Date: Thu, 30 May 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717028662

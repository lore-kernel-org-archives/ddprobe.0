Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE7B63B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717348523; cv=none; b=XyyfaORDrM2Gi0gKgFgkOCkaW5nR00/747DVKRhNr6km2GiK4IyBsJN4T8aAiUZqZrTQujY4HfNIULw4LyQYLqgradbWnxLeTMDST0PHEf/xL1MqGCkpDinZ8wTR/AC6xiq+xenoGdgg25QahYVk/DSz6GAb7b0rpNLAXAeFF6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717348523; c=relaxed/simple;
	bh=Xp12yLpfddSnXnf7hc93NghL9xFYhHef07UW0Ky4+v4=;
	h=To:Subject:From:Message-Id:Date; b=asW6dpO/WAaMRbQcWZDPko1bVRts1LWrk/82Sbd1jVyl+HJswaGv3/0xz7l0iITml1IYCj4QUV5yUa7pJB7QCT1Tup9KSsM2+dvexwNoMD2iCfy6YUE7NrcZtNwyZesLMTprSb0o3lmFy58amfbZdc8A/uQvtyFcicSkm64E+k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojIqEQPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojIqEQPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99B7C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717348522;
	bh=Xp12yLpfddSnXnf7hc93NghL9xFYhHef07UW0Ky4+v4=;
	h=To:Subject:From:Date:From;
	b=ojIqEQPoLCNahadslrZXL4BM1+0A2XcnLP09/+LQAEemjXBk62+LD0XFJ1H3BwkmQ
	 Qwg4OthchR8qucQ5Vj9DWrCN4RMKN6mBVXCkk4bWMX/LoWHXK3yBFseTRQz+YGdJKL
	 BZw67YF+8iuK44fdl4UpUx1+BVXm1NmU4iuW6ANY9SMU8TXRKZrBDAC6GpNDSzTr4W
	 ahCVc8n5B7lfjTV3xvUk1ZfLxV0l4MEPSxa54E6sHXv6koJjjWOlQsmEJbQ8uu8nW6
	 qnuQEOHzbbcshuedgZkLpMIBpjU2qiabBti5oFWLXNW0xXdf7RM5zhPVZ1ENc2yGbN
	 EN22WvdQxLeVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE3AC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734852277.6446.177029117779795078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1506ab8364325f70d33cd9f3a9f407f7d3a2d6f3fe6e3a874d34b7509015d3
Date: Sun, 02 Jun 2024 17:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717348522

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3378A339840
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772106294; cv=none; b=kgfy77pv9tSgwAGxxVv57SRORm3Xafv9PYU9qPgWcv/9NczUlXAcZUm9mC12Y4oScGdw/O9gimPQnBCpFnGwzkq2Tg9RJ1KmeTTU3gGopdk7ntMEAN8Z3aLWM8fu3Fbq5r1sc7FUu2l/wwCLzJBbdbeNaCc0UNs8thYitcsapMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772106294; c=relaxed/simple;
	bh=7F3hrLA2B4xzw81iju1xpXjUNpQHZFfFePGg8urh6os=;
	h=To:Subject:From:Message-Id:Date; b=CvDQWoYDIAN24orLUSka4lGhczLdVVaoQFtEgqpXSkHcExC0bkCXKVHrrzgnbpTisrrisMbvOgXJNIqJmIYR0/iFSfqBaCJiSdmXu8uxySR8BI8DJciTLmliM1kOV+KcTMxcW93sK04fmLrjOTt0795UIy+E/hj8nVrN8v6W2RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZpLUF5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZpLUF5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B47C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772106293;
	bh=7F3hrLA2B4xzw81iju1xpXjUNpQHZFfFePGg8urh6os=;
	h=To:Subject:From:Date:From;
	b=UZpLUF5LwxlKdV76ErATogla4qTiN56gQHapEGGLkh45nQjqsKlXU8/hvMGx5adFL
	 B2sCLMegOVKtufmUMowXIJ/gOcxANcq/8+8L4TYL1ZcIyNYAqTqqgj52A8q0xvgloY
	 FFWMW7XOxp4H08vf8oRmJLRcth1FHqyJ8IWYuwBPwU5vZYNWO7TlWwbKplkMPmHtjP
	 Obk3PtGFKWWY6PUkuavEPZJINpRQbwC/YU6xNs9LoKgK2/QjHIe+E8tr0yNkoUf5LL
	 jCdRr1XYZcpMQqSX+L/+Yw5+kf8jODwdTlozxkUC2E/JDmFtQJDTZd31425GMM0kVe
	 +ILOi6Kz27+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF5CFC5935
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210629362.21157.12576657824851539138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af664e01d472ab2b3b8423c786f8c4db6a4e0872536881a25dc6fd56eeeebb79
Date: Thu, 26 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772106293

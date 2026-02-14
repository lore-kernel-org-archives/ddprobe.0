Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02B1EA84
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771055094; cv=none; b=Cn23+rhQz70XfFk5pqydUi8qwpYveR6XlzLFXEmR6elA/Jno2FjJCRX59uUf3CoI8nVGvT0Iw/+P+5kHjh2RyCGbAn32r0rxHWYLaLmHziSXBVnAXsubzBhwJPtczwiptVML8dodhpprjTuVc6Bt+8p2l2DfYYZtULvXQUV4uMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771055094; c=relaxed/simple;
	bh=KUAg79vUwSKZ6JvFQbHte70QQxoT2uMR7ONOpfVAk5U=;
	h=To:Subject:From:Message-Id:Date; b=gJLBnGPQHV7IYp6TPPh3xC/bMwxBuR0S9Mcqjqi0K4hmUGQdrYl2Vy70SR8UihnKEZXn3GlPvnWP7PHSitrp57BonqGGUQQgBSj+WLKrItdJ1fu7Ovu/wYN5tsP/dLRwhLX8nKUT/2+vuT9Vzzkqx1FdzHGUw9/7j+z/5qQhQWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOEF72dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOEF72dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC11C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771055093;
	bh=KUAg79vUwSKZ6JvFQbHte70QQxoT2uMR7ONOpfVAk5U=;
	h=To:Subject:From:Date:From;
	b=iOEF72dTKYwTPdLu0YPNYX/3thM5hUR4A752zL6bIRC8/pqcFwlAZcZVddNTYdYhX
	 kqllG3gFr0KmVzCS5zeLLLtHGOXaiZ5Gi6E4HKBPnkmOSUlD1Xamj0ZXtgOJGsOf2M
	 avssj6Wk0MYHqT1KVr6VaxjlF1HvIhrP+DMlxYDsWVnJpoAlNkdbfoS7wmvXjb3LaU
	 T0msYvdHz+a2aKKlNAmM8wRQhITpQqv0OVao+bwuJhY06XbePk0Nk7KgEWe/u9SrqA
	 jefBRZErDPeO6JWPDnwYWXcZ6a8TcYEM+fnIzhC5Aid4lMSCFIWJm7bo4OUAjNxyKd
	 Mn3aApTNERDzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D71EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105509362.25143.9652187722691215374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971e3a12f744ab35902af07d3c4f554593552b8f13489f05feb4973682e2adcb
Date: Sat, 14 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771055093

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466403D667F
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787124034; cv=none; b=IFD5KmRIlOeyNxN9GOdNfL9/sEMbPTNy9MX7itNQmA3gqXXetUN/Z4gyId1j8o501HuGEPvC0kWJ9NcOPDEBXfg4DiwvigF73ze/Mn+2rCuZjAsFU9WdNNdWEXpJnLDGct1ROzoOeV+qdtMBaUaXRLMI6zQ9cwAPHt0WPQxr07A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787124034; c=relaxed/simple;
	bh=EAikyziYZxcbSmVI2QA3qt+7jpYIKhYvG20S1jEaXF8=;
	h=To:Subject:From:Message-Id:Date; b=N9wOTpLywEdn/yp6n9MSMadILf+7rrOsc6YxjNTH0gz1ebBO+4byyzk5Um91CLwcGgCD6aqS+RzYkKGUr62wNpNLQme1JWdi+NhMMLb+ZsPEdK9jbs5GS/tr06eSPEm/E3xJGHlrkdr+YPoX97pFRYRHb6370GpbrAYMNX+cfos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeWWuD7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeWWuD7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF8AC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787124033;
	bh=EAikyziYZxcbSmVI2QA3qt+7jpYIKhYvG20S1jEaXF8=;
	h=To:Subject:From:Date:From;
	b=BeWWuD7VK6ucmXZY8eRrk7WQ0+urfIbLu0YwGFTk3mfCGBZBIHj4Kd4gcNPBcB1oD
	 aFXlc9siANXUe6xhWyJNPY1Jh4zEERzTnIp84EyywIiYlRTSzsDadGqbbJVUwgMPzw
	 hWTGtiW/rdJSWjQ6gu3C4MeRbcv9gO7sv11hSHs/7P9X6edbrgnxeGivrOaM78lYTt
	 WDG9e6Y/Eu9TvkebaZZ0hj9TN0HClB+tqSvMT7YCD6dVS4jcEWyNUcLityKBtCG99O
	 GbEAMK8MJHhPcq0d42Zdk00DZPT0LRHqnJ0CN+t8XIfG1OyxjguBK+cou4TL/qTshN
	 u7tNChe5+sMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1817C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712403371.25973.10654084552725404411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c637f2dcb550ab4319158c25ad0d9659ede0ce57b6d70a457244aff8427924
Date: Wed, 19 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787124033

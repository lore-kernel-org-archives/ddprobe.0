Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCCE2D0292
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786589434; cv=none; b=D2CIUaJwDeoLA6mcVbZ0SgiYlHWkv4sBqAJ82QDlCJ1XBrPKhALJyE2oWYhR5hFprQEgV8nBUPFRmo7ggbzkBgWGHE9FmLTJyEQLhcoSy2XowOEbnNNAI/H3vB7AM6Q06A9JuVTJfO05pYjpMWxsx6JyNPzA6NAc3ON2SI9Cj8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786589434; c=relaxed/simple;
	bh=0xr4YECEYmW+lLsFzXOyncxBf1P9w0W02YOBKpTbyp8=;
	h=To:Subject:From:Message-Id:Date; b=XFFUubYtTCJdY1TFkYx9yX+iODqNxsk0xd+AjVeliLyqQY0yvnyOdxcj7nfS++/CN59X7jFnTpSgJP3ZSvMoX0uIg3VIa+CNCmvDAwGcRiWMvA7gG4krc6kfneYV6dA70xUqgEArNwVoMBjqhURouUuo/J4NDs4MOCnabeH5AHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O38NXA3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O38NXA3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8AFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786589433;
	bh=0xr4YECEYmW+lLsFzXOyncxBf1P9w0W02YOBKpTbyp8=;
	h=To:Subject:From:Date:From;
	b=O38NXA3pLbqCKl0pDkbRyWcnLTAFvCligEtWdVezBIb6eO+UQARpA7uef3WRyAJsi
	 KQ09nEtURiJifaO6YvAELlwWHJs1hAygJhQjuOxuxt5WcgGjId3Leoyc0KYUXEa1id
	 wvZkTSQwilB2uPC/PxMBVX0Rw5vGE0KdkDIvaeq3EbfjO3Dv0EqzhRZVzr7Ik9kCjI
	 qCDcDbbHK+pPKd0SoeIXSdnYrZbkMl0ISwC6GgDVhEzDZEM9A4OeBzuchbKGm4Xdzr
	 zNnM+sKs6wYvhlX15sr+KI3BHD752fjfOkVwUURwyUAxfa2d8eSMt6l3LkbZOO9lEI
	 JfbbSgOK6CQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEF6C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658943368.16147.3971133283231909880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1aaeba46264f236b42c6bf853ed5cf90c3e5eb97d231ff93ac4e2addf1538d
Date: Thu, 13 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786589433

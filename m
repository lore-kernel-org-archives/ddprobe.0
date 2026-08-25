Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437D119E97B
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787618434; cv=none; b=HA8xGszBnwl2JmUI2xecU+Jvz+al0dPdLoQ62QFTVwYxHva465N8B/SvXsVesnNrN+2UB6duhYBYgQkB8RTd7+bUuQ4LhHEJ/RuglfF9kdmNTqoVIzamHZAVNq/2z7Y2D1yrSgbkrV6ucL5An9O/wLLrtqciOvb+SGz4WqdKDxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787618434; c=relaxed/simple;
	bh=nGLprsHIOmNhPg+cwf5mvA20bF1xCm9+gI7A7R7ccNk=;
	h=To:Subject:From:Message-Id:Date; b=h0HoKVHrXxGGf8IugfrozTiWg9V4XQIcNZyM0wdkQyfhtXNe5Hc3sTYXe/9aT6GdgjObVZL3pnV3nlRsBOz6Cw7HppcY5tGHlRZN5t/Fz6p1BuXR0TAANdnfZEYsd51GVsvmw+lGfTnA3t9YgyqO8Lrj1udN72v6RRetvBO7aYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyMJUDGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyMJUDGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED9DC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787618433;
	bh=nGLprsHIOmNhPg+cwf5mvA20bF1xCm9+gI7A7R7ccNk=;
	h=To:Subject:From:Date:From;
	b=LyMJUDGJlStoo6TIngnnNvdfz+VwzhMOU12trB6Edo29aVSCEpeC+Q0RXD1+9sFGi
	 ZFmBsxSqWgM0hfq9kpXk5emfVaHAxjRvrnsEj2rMPzsnEOWpod/er8KL3AwMcLETZg
	 hJuGTMYwqnQqw+urZRW2CGxnYRH5OoK4+NkV+E9txorON4tyz4fs4TyCTK5OaXiQKU
	 tqbev7/XnvXKt07drEKTbATG/sZCJ7QPCUiX4zHdPXGJ6lXV77uPJxjxVTKXd92wsL
	 k6ZusA33BL5F5Goxv2MbLdTIZrZ+qlaGzn6BBb53L4vzrmm8ueUEr+QLWWWUQz7OAH
	 Jd2dRBBVHkgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA6C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761843368.5635.5979599041999575161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ab7db12ccf809816fa22a13e4b9e901e876a2b291148f569be256a10f4a59d
Date: Tue, 25 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787618433

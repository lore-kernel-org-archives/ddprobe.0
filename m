Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD8229B2C
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746712196; cv=none; b=G5yhoMkmh48yyOd3LJPDhYGR8b/R2wsYINU6WX88Yhp1e/pcfED/5kHzMksGj8Ly/tXjSCeETHGwM0RtZtZUzP9zinZA5Tl1jsLpILO61UQ5FI7a42XIIAgaw74XZqy9qgJ322c9EXTQzFjmf5A3vzDdc7m1JuE93FghzrqaySU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746712196; c=relaxed/simple;
	bh=la5AmHdhM/dEVNfJLYAOolmyh6BKLnA+QHHnrKNYMv4=;
	h=To:Subject:From:Message-Id:Date; b=WFjd/5B6Jl7KUIBxZEqm0ygVEPe6JagkATab+SfVCqnRXDsnhVVvemiNZu7Hlt9j8N9x1oF11FQCneGNcmvASab9/E6g7v428CoymKVe2+WBeF4K79c14DxE19uAan39nB4tTyKHX4HesC7yLPQq18KyXR6vD6hezfgksTmNYDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcybW4ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcybW4ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37F6C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746712193;
	bh=la5AmHdhM/dEVNfJLYAOolmyh6BKLnA+QHHnrKNYMv4=;
	h=To:Subject:From:Date:From;
	b=UcybW4gaQDGvd/+3Z+vx7+4O0LWGc31vPKFEW1yJDVYFaC5mijk7t6N9N4cVptfsG
	 CkH4gToEAae7wastvpyb67s/BgD9D7iiz5dgNjECTNlZfgnnZ127/KJl+N/p3Ee4Me
	 g3bYyqaYlZo/hwZco7ribMl7ywF4s4GPqAYuGLtTRpNcZ11wIokK5QQnHZFP4fscTZ
	 7wQKXECXYAiTJ0qFZZh7W4gg0wdYwChPq7/rdhHZZAAylAtFQKfSFMaOBaEKW5+bZM
	 QWCpq7V10tpp5/AJZA84qf/X8eyrMELnbdAJEIIbXdcAa6bLvdlHzAzWOVTE7rhlVZ
	 WNe3237diwq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F2C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671219359.15915.15111001496311010893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81384be130a89304803da69ea00a427bed95460e8437ee0a43f538f09b6565bd
Date: Thu, 08 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746712193

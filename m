Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1850248871
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754057394; cv=none; b=pO3AQZ9t6eYSo5uSaGlgh4nPirOrZ03YM+qc/SFuCkGrV6sBfLF9DBuj+ubbuoRWFmBzxxzH9UshjEnLuWJn9rVjSITCvBClcJH317kunPlZ4TT3RreXbzI6Oom006IJDVD9fn4y7gteGmFzfXcx8+Kx+GsoJ/FqqsYm620Z9Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754057394; c=relaxed/simple;
	bh=cT7+8bsFbhVTOIJZUIYeoBalfwvWvbrvob8NMtDJuhg=;
	h=To:Subject:From:Message-Id:Date; b=VuDs9wH6enhD7zdApwtB7rio1y9O14IcUHkJI2KenhPzI5D25GI3zTgbxVP90vlMrW3Ry3u3XVAGIz9QFzgeunItqZ1TzZUDOkdZ3qj7sH2UnsbzUlzYPZKZeo5VmfiebVndGIZKvX/t+KUo05wx/osd+m52xYy3nBBqotd8zZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE7aGM9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE7aGM9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24232C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754057394;
	bh=cT7+8bsFbhVTOIJZUIYeoBalfwvWvbrvob8NMtDJuhg=;
	h=To:Subject:From:Date:From;
	b=tE7aGM9fJUWNvd70AJlxtxRxJZ68iQ7yjQoULFwfUOvkwUPtA1O0dkX6K/pK6RqEE
	 evEF+pM3GxHhnch8MG2hOXAn+vT3v3Pff31HPeyI48Gl00g8iiLjt4M8P6opZd5Xyn
	 S3zao9pkHIFJYSj/09zpA0BKtkmRYduB2XR7bBWwwPCw5D/EQ4701HT0Tyu1vGs/Ao
	 RS/4ys7LUu0tQaPSuKj3aUYhJlA4jJt8FqQ8d+726b4oj0Q0HbqeCoIsm1QFVp/Cxf
	 uS7OZoNDVI2/gvaVJR6TeuUyhCefwmcjfJuhJGslT5fvOmiIP1O/1TaEFinX2YrgNy
	 niJBnaM8nYulw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5CE3C88CB9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405739381.27710.17574280024521165848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b282d5edc378b370b6f5bee5dbd7639b82e8bddc9d12267d23f76427a5c791
Date: Fri, 01 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754057393

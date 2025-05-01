Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F24EDDA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746060595; cv=none; b=rdqfKTTwqZtc91eATRuWbYR0qEa1qZpXE8lhipOYPTUI3LQgV1INlUmq9vy8f8q8uTdsYb+FBN064adurLOlBqEz99JsTX5MOxJNbybUs0x81N1yQPW/i+dfffY1sgM/Eav/WiGlT/4iVjEsc7+zSMewpTbkVxkWIefFEYIansk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746060595; c=relaxed/simple;
	bh=ZUovXjFSPyHJ5Su5QjRQQZOw8VHmOQdLSVLOMfBiHl8=;
	h=To:Subject:From:Message-Id:Date; b=Xm9i+hERZNWNDaZy6ECO9K2fefeyKkLMr3W84TIYfI5Qve2e5RJwHlwLkm53yYtmqhNKrxFrPdszJ9FdUzujYO5GFlZpHG0ypwk8mb2U4yJRXmLjSO4gEOlgpgRj1H6Mf4VfIllg7dGtugc+nGB4qT28Ya5bY4Q58iSTPJe3zTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFofR4Sz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFofR4Sz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2618C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746060593;
	bh=ZUovXjFSPyHJ5Su5QjRQQZOw8VHmOQdLSVLOMfBiHl8=;
	h=To:Subject:From:Date:From;
	b=qFofR4SzNgBryaZzSPuqWuPolNLzOZ8OMzm6vZ/nk5bpi5olUZPTeGWDiYYu8N1dd
	 5th2kyL0Gfj0rI16WI4GSPRc0qULv3mk+VSh+iLnt2sURGJrVhN5TBlehimgdwxGfx
	 aQ5gOEsQpZAixPILDz45pupmjPAklds40q/4QnDoYD7atfzVIjhzbZHVSDdi9R5MdX
	 IZ0GaqxQYwfRbnhUw7YEHlgIGDZmp8gBRGPvLmsdQcy4OqIb4RoAtiEpWDTj9ryyI+
	 oeAKGwltN8rB+hcF2R8oWFhdvmcu4gHOPAg/MLaUJpUvmpFpFXWmVxEzuNFte3mwM3
	 nsgabGlmerTLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF31C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606059357.30081.7100611107089486982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32041a13a0c1da014cb4ac0b9df029e7767212aedec0a96a6ea58d93e1edda6e
Date: Thu, 01 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746060593

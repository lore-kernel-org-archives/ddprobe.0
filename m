Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A589324B3B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770971094; cv=none; b=Ocb0xZu0rBg7JHs5Bu3+cdk2GE+CqZ4mWaSGFkCgmBBqWMS/mmLik6Atg2vK5FghH8nsnTYm1txuZiVnc7Lh42VoQYfm84llK+T9aU/oTYwicLN5YURIuoCxLVSwXCQ8jvQjxg0PnXsoVEDB4VD/3Gp2L6aEYUPp8V+vN/us+Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770971094; c=relaxed/simple;
	bh=xJvx0wndbZbQMeg35ENr+mNhLUH9bY1ZL6XNVPelQgE=;
	h=To:Subject:From:Message-Id:Date; b=lIEf/+K16MeiLoEsfbP+pDJVK/n+rkAs9a8sDSjS03FfaltokDvrgAzRWRnA3bfBZJtJ95rfBDJfXMdB54DPWVSVDe0z6tvD49sAxJBvy+WCFUojqlhjFfXmbgwL9Yc1sJElZ+ohyE870tqhq3giI/99LN9snBWZk2UUZQKb6Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lO20akQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lO20akQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B488CC19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770971093;
	bh=xJvx0wndbZbQMeg35ENr+mNhLUH9bY1ZL6XNVPelQgE=;
	h=To:Subject:From:Date:From;
	b=lO20akQzwloNdV6g6cnIWKGoCKv+RUn+3K8QdfRMCo0UDK5iHHhdhGvqQBVlr8KWs
	 byNEJlOGfg6gPzJhaAQV+elI8RaiXSBOEB6RdqLgyNSw/X9+XVDSCqLodrN4HL2PHE
	 2+0FBF0dRZoWDHGHoGXHJK4EAv7uaXBjTVW6cqWF478CNE9Mj983kRQBujP49qsBeB
	 FaRCVdfJ2H4AioJwyr2HKzJ9X+QA4c3tqCTo5BLE40g9qy7xRoa8KPnIPUbFzU68nJ
	 PriN9ntBztTWH8CZXnmnEX0DJiJTUG+S+eIGCoAGfMVhBsqq7RCtnk3/GtmpVkrbI2
	 b4FbqBp5nMZlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F698EF48E6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097109363.7431.11398804833200365066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f77345274dc8febedcd8eca180f0907e46f93c5243743ce052945a982ed2298
Date: Fri, 13 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770971093

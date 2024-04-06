Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0490C8BF8
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712392697; cv=none; b=T5qErJgiFjUjB36DDRAvAjqh4mlv0HbdcIdpV4gkHyOfinXnQwEX77K7gXy3QBBCTIgqwOqocEig95OMiibzPAVhx1QcEBKpDb0kJ3eM7tilQ9HD9GvZQrmYeJkIGmv0EjTEJ8g8RRbTm+MF9Hb5t07twq3gygh2Z4o3G/gily4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712392697; c=relaxed/simple;
	bh=+cdvOgJXPSPL8Jc/WPrI8fJ2WCOAmy5fLb0BxMkkV+4=;
	h=To:Subject:From:Message-Id:Date; b=kTRE8xVqWjcA/nEzUSWgfhHnGo9hVuLrwUgTufktW/NN3cg3sBtMyp711744kuty7oVh3GExTnZC0suxnkzEPzLuE0xJbSL6BPZilbGobhPKkg+uYfbT856ETjV6UC8sn1b3v7jgHtwdVRWQo48ZCSfaNivbroQKqida0uLhlyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIhvnGHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIhvnGHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D89C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712392696;
	bh=+cdvOgJXPSPL8Jc/WPrI8fJ2WCOAmy5fLb0BxMkkV+4=;
	h=To:Subject:From:Date:From;
	b=mIhvnGHXiwKyw10WdTCq7CQbtGaRovoisSkoQ0clCQ/TgPEIyXtzA/O84XJjJCobz
	 Tm9FTDZH84LFlc9w3qqfVX5vrE7LhxB2nH99KAYHewmS8DVzmHYJy3rQAMwWYRDpqg
	 0cUHWQjwZezuO8tn+xJH75IdKjyU7t52+OsTLJqXQlY41RTVP+uUDQJZL8ZKWISTmU
	 vgWjGkI+U0EQaXlvaEb/oAvJWscm7kfm5OhZCAuCJjxDxUBR5yuIpwzun8cmYysrVO
	 uIx8/EKjlDu1XOMQoqMrrpOcP1h0I735Cc2S7977/GVsddgDBzj0H7byMWci7GKgx8
	 1BSnihOZx3OzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F58BC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239269637.31138.14781929797618551575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764e62e2624cd1e88e97899706045fda862ce0770794f69c568be3b3fdbec267
Date: Sat, 06 Apr 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712392696

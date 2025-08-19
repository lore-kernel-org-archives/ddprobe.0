Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4BD305046
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755606593; cv=none; b=d4Tsp9OmQuzjmaGLDpik1zVsPq4UTz/HMinFr+ixarqofXoEDZCFjAPdR5VGWZkmGcBZYaf3WsTtqN3XBNiag2BE1dnRV4LQCQikKohrxICiHtrhjPhwRAeVxk+sItVddngmxYwl7otdzVmg91FjQQm0vNStn2jvC/rGP7wYFnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755606593; c=relaxed/simple;
	bh=qb/rSbpUAZnASBwmZzbUck8qaCLkct+QMnpXcpNDQMc=;
	h=To:Subject:From:Message-Id:Date; b=SZPf1OKlBObD2+C9+Iqa3fjB6JqqywkPzMHIb0qVgXdCk8+9PWKRH5O4YcGtMjqjiQEa7nKXsx5NqG1i6FzXzGfCsiqhTzBiQ71o9BGttItUjGanK7mPV7qVLf8qN5ebzJOJl7w851ZnBXjx/zYVmiqDW3yJWjDUIXnxgMhXSDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTtog4O5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTtog4O5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755606593;
	bh=qb/rSbpUAZnASBwmZzbUck8qaCLkct+QMnpXcpNDQMc=;
	h=To:Subject:From:Date:From;
	b=rTtog4O5V9xrxdNbTmz5RAzLh35j74YqWoL7FtemjWGWD+deaYb17qTInFzveCuay
	 h+4TUkU8GKIty9FM1x+2Ibf2Iq93VqB4bq+Nu/O5uQot6CxJKjKT6HH80sKbxy925j
	 F8AHsgcQpW6JrBPOUoUgejQjPg40XTqpq0qefTHUwlgqIkB/+xdi7NcDE1Yd1eUMfH
	 5VOgSc1LM6Ze3JonNcoGQUxThg2v2kM1hckTOhKfgsMSQhJr0in56V9P+WONHL2Ecd
	 Pn3LVKh5uymPBDY9T3ie6GDF51yoJcZK3yXjjztYH3fk0HXWiJM6orZ5AlowEBA1oR
	 rtrrvl457SWbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC0ECA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560659357.28506.7190917397545457854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0b5e0ccf0040e5e422c93da804f6dfddff374716841d64e338f6fbcc892ae5
Date: Tue, 19 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755606593

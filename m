Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BD318FC8F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737062753; cv=none; b=dauIHhjzsw0+kLAnrcYQLyuHeVyYEE3en/4VJ4QNQgiHezYR4uCRDBiS7hw4MyhA4KzDiKQPY7HyUO9OJWLsPBwZie6w3OekZrE31EiPAo0xu8nbZh7iXIqcJGX5DAWhCulhDTcy0jNGns9DXi34CxorU1XvxPhHGQ/pKquCWr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737062753; c=relaxed/simple;
	bh=42n3XxY3YnuJYcyh67AlaXx8xm5RyOjSBvQKkw4F9Wo=;
	h=To:Subject:From:Message-Id:Date; b=uytmw6vd/5qSXX0Du3SKnD1vNwY2n43gD/iqaMYqju7LnA6TS+hFGtKiOjlsz6PF14Xodc/plPlwImmKRBqSLOfwd/ubqgRRD8ne3yl4U/sRQ+UGAGV6Oaj5biVIqvxNesfotVAFRpY3cCSCs2gcvsydi3croDpg4CfOK7xGxqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QT1+yimd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QT1+yimd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4B1C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737062753;
	bh=42n3XxY3YnuJYcyh67AlaXx8xm5RyOjSBvQKkw4F9Wo=;
	h=To:Subject:From:Date:From;
	b=QT1+yimdb21uM09N9gtly7vL2upPHUjm5jGzj/uIPVaLMalueoykht+2YoJYNJxfh
	 8RAT8bx6prpzeSD7RRgjqUY2pmkGxcJmt74eAgYDxz2BfNF7a+YwOJFqElRZxcKQj3
	 H/rQdSSfLRDdBs2C4LwZA2zmpDSDsQ7wIG+23hHotqWuK47gxDMwTwnxq8yshVlw4D
	 J50ESiB1ci+u4liT2aaWBdZmDUBddqVNXBom01SZVEAklSCtwKbP+dSPpUfaJzzaqR
	 +dteAqyP7yWylre1uGdkiIOPEqoMClD6K7ahU6ngmWW2SOmszlIxb1iDms9mOMOvML
	 fv3Iw1kTYQBzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DFC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706275357.638.8508611089324673290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797bb197c7bfdc838254a47416c974728195c362b9f02486eeaddad4b8e48bec
Date: Thu, 16 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737062753

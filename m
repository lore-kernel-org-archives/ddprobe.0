Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2AA2EE611
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770516234; cv=none; b=RlGf6KpTuZuct4B/pqj4zeLApzk5XPLzBiSuyQajDZLj5eb6XvbfjDWFgQff+5MM9zNcKSKsn+0/MUUpM5dIy5mxt9YYXIcRH5j04IYT6tQo7fUXI3sBsVxUu5Df329kS2hcXIPFj94XsnnFSyRuqoSY8qE1hCgf4HE4zu5x/YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770516234; c=relaxed/simple;
	bh=SUlYL+cddW9Z/Ka7+oFy2BdynfqRsqSMR3UZC/yWDxU=;
	h=To:Subject:From:Message-Id:Date; b=kRT/OcKV/YwXUBKomJ4uXLav2DyRKt0fb446h8GbJCVzm+0Ky8Y255NH+ctKXZyjitmy+ZnxothkPa99Zycb2AVDQ1T70m6MDJQbR8gh8bN6Z0pLNzMhxc7tG23ZQlXMQpCmJ4M8XcpZZTHI2UkLSuw7nb9fZFYICP6YOFYFQF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scpSH2GQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scpSH2GQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3FCC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770516233;
	bh=SUlYL+cddW9Z/Ka7+oFy2BdynfqRsqSMR3UZC/yWDxU=;
	h=To:Subject:From:Date:From;
	b=scpSH2GQh8vcZrVSMguxpLuV94P1sYWCN65OB/GFYODFcScau/18vgk75NJeVp0xf
	 jV/MDeAhgPolAUbkl4qFG5dssu+fo1MCbNsf8W1QLZ6rYt/f1D/tRvAUR9m+y6TvDb
	 nqFfn8cWGcVf5+uqjJ0G2lGHJ+rpysWwUpIM4QzHJU8WFKYEeUcBTBybDrp65aAzbO
	 K6uxPdKjZ13XQTizhPNABbWLNkWvql7iI6UAB7nkgkSwM+V/MKEEpcB3pdgQcxQ6Cm
	 +q5snRL6r2TaMWnGWCV6GaZeL93p4XCXjuZl1+4bIdEaO3onThiYcibZmOYjogICVH
	 VScT1gcY6REAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99735EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051623361.5093.149355914363552909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff81c20f242efe9e730e04943fa4e32251db1b1ae522bca0e6c35007dded6cb8
Date: Sun, 08 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770516233

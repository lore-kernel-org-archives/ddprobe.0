Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F1F2BE056
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782890914; cv=none; b=L0SgYo0gOu0YcoEDsuhxc9uIbbL64Kuq4cQUk/ZkKxNCB6VUBXFZBDJLd52eRWtrubkhUxKLyMIFr+0O/mOinw1Gx1qPJ1A8HB7umGyA2UKDZLKX0p7k+pK86cUqMHcNY1MTX9CgXDfMeq3ZbfxH0uVUtYHOWb/AQkjvFWvyLm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782890914; c=relaxed/simple;
	bh=UZkTvYcbKw6GVtjwwTHve8IP7BOHodi7ug2hbHEbLCM=;
	h=To:Subject:From:Message-Id:Date; b=vF4PWLCBD4VvfZv5767SdBUIGRpKbwXM6dlwWDu55heChFmxlSqMnZ1i3RuclnRj9K/jGuABHrDdlQ1/to6mqHqmNYdAUo3vxWPHUad5f4NAxBUO8mM94O+lcASIMcRNBA44wcFqxBYXrxK5GOBzAUl4qwR+3wSoQgipeaO5KEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvOEKBMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvOEKBMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECAEC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782890913;
	bh=UZkTvYcbKw6GVtjwwTHve8IP7BOHodi7ug2hbHEbLCM=;
	h=To:Subject:From:Date:From;
	b=dvOEKBMNj3sjzJQJcL+bgTsjoV2RK3tivH3HNm1ernnrobYWmX+sUEgroXPgEIBqJ
	 9SpOIxrX2GTuMsQpclSIRSt8+WFjpIdFGSjxcolzKp5bymE6qqfEcZzY/tYkNc4zHJ
	 TPloB75r+molk6iVvnO9EXfcxgJDfI/gDzw9oSC5/vAmxl1AZOlI4vCz2Rhb7JBNDY
	 Nhy/ZY0lxwp4CQy9C+xIUm+5s1ZSbveRpzMI50OTj6BW6IfZkCMaX6M35PlqGR0lIj
	 1AfQqH80LpbPJ4WV5aa5LizJ37FjkoeekT18srOPyGSC3NDlzyG9hm8mtZ9qS89/ZR
	 ha6NjQF9HzoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4183C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289091372.1734.1112291732094228676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee3761b568ce5adc6ac1ab803d5634f342156680806a10c6cfd8ca3c1d1a08e
Date: Wed, 01 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782890913

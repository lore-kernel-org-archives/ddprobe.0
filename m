Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D699274B3D
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759460994; cv=none; b=dwnn1/hbXn/IZ3xvwFhA/R+S9w7sBS60d6onE748r/h0Z7VFTsCeP5ROY90S8XWVsI2KLHSUSjXk6CWX8585g/Dh58WdlJGgr4y+cJGioAGlBSCYO77EbGNAquy8ZqmIgUUZqqlG7LnoWNCLImr7moGHdMNjeWGwScvqyLYovBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759460994; c=relaxed/simple;
	bh=vLeFs+3iSHSQCo+MnfRQqQxCg8y0W3e17YqCQ+Gq2JU=;
	h=To:Subject:From:Message-Id:Date; b=QaTrQJ0HE1IXjJWYLX62UaasFNgOVhvdEy6VNGR+BlFW1GYsn4mp9BUWtgTFLgOdktrszNf7tiolE9HDGrJTytHKMiPcq5MgBeFMDBtE4L88do5CROkIS0EzXOpOCqKSitmEUT5TQyTU8CFiDIa/ZVqdz3A7ATj3CJCxvnA/490=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POOn5vX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POOn5vX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EDAC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759460993;
	bh=vLeFs+3iSHSQCo+MnfRQqQxCg8y0W3e17YqCQ+Gq2JU=;
	h=To:Subject:From:Date:From;
	b=POOn5vX0u8HX9DPEp+Awkwu1XFfqb7l4xO6ckhjgmbh5KsYdh0SYmd6LOGhhpduwp
	 yhMtCk0amI0GqJpQStJL/oZf59ONkOaBFVakiSM8EYS4ITAE/9IwVYzjqz7Hk8/9vV
	 T5yGQNKThQehSXnsufhLIigbFvXwPJzqO1TiAJIGNf4yZBwTZ9yKcLsduzC2lRUzxC
	 +xKdS5+RxJT/zTc4MQzBQowywGkY5fQUJHvKntuBIvE0kRkwtG7WwTT/B1bzxqwHBc
	 6mh0qpdlqC2+FmxszIwiIxyXgnK2fq3Y3HmMh/plMoJivyfMT1lKEIiHuOSbyKjSR6
	 YuyokscxskF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC0CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946099357.8527.18076604790672682217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48371e7a0ef4d528afd8fa9a041fa83f168cb84a4c46056e3853a95dd60113a4
Date: Fri, 03 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759460993

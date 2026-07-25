Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7C013A3F7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784980234; cv=none; b=kVjakd5RKv44miEcuyd9N+t/fcHIH1QeyK2f3ldXr7Rs7AdNpL6m04M0YZMdGxh4ig9aZGfccWdWG6dG1Rs61R3ykxeywSLaIBzk3eFZfAGjwvEzATio4Mdj59dUmcgc+B23ED53QgMuXITMmfjF9SWEfyGT7RpHfsbEoICLdAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784980234; c=relaxed/simple;
	bh=k+bIceX3JBYb2o2SLXP5fhR3sjVOym2651j0wnw+K8o=;
	h=To:Subject:From:Message-Id:Date; b=FnOvhJ191a+2JiPBjk0LmMMMFcqSRUIQXdg/YH3jTs2kL/WbEqhLi+IVgRIsFinWu3jMcqSsH6LN+C0KyM/KCoJlNti0Tj2xy89py0qv2BT5dg7iCrGsBasVn4Fr9m1RcDYfz/EImTKGPHmGK2Ofu00bYGPkfdAj8RdP6B8R+L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I88p/OO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I88p/OO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62EBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784980233;
	bh=k+bIceX3JBYb2o2SLXP5fhR3sjVOym2651j0wnw+K8o=;
	h=To:Subject:From:Date:From;
	b=I88p/OO4fAbeFQitLpkbCG9Y6Y8E6sscZ+qSBYqWbi8ga68wPJg1fl/DZk1XtUNCa
	 4EphDAfMzIcmjoc6mZcYyC50k4cLT/CRjRshfzVixtz0kNs46VwObEuRnLrsBteT2k
	 zAVz50WnMRwMoBWYPe/2ho/9pHJ9U/4uhcJn+ejgA8gc+s4f5TcE7c4SJ8dQdgoqr2
	 ZO7Rhu4q4HoQpH/NTE7cOZF6pRyqShMw2pgntgU40ZuBlZZTBHbGlZO53yrK5xi1eC
	 RRQZAe44rpmln1YVDn/2JhDFhtfs+Iy06mJ8qKImXdJsGyF+i/uYRgYRK0NzjHqxP4
	 dddp6X1xOMPeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA24C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498023368.25492.2358166668762290094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d15e0e5f60983346fcbf13279778714819c597c39210b01fc7011199482620
Date: Sat, 25 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784980233

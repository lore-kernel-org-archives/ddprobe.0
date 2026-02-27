Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3BB39449C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772184894; cv=none; b=glVYkF5UhNIP5VcgH7jd/JNqTRzc2wDM5hdP2KM375aVJpt5mn5Sc4wYkEc4Lgdwco8rRgaqIFnZ+edg9n6OZGUQBG/XcAg126vsKvTRmu7KuaBLiK5YSdYF6CWbQfjh05zuv6lFrF7x1mxFRKfw4YHc2aplqyzHoEjrA3k2+o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772184894; c=relaxed/simple;
	bh=mHx+w7lwBz+FSt6xvpRe4yVOKgKsCcrwV+ZZkiQiWkU=;
	h=To:Subject:From:Message-Id:Date; b=UPBo/O729/WHw2h86WwMT1qL7oC99oq0KSa6QuFpWoR3zUKpG4fQK0lh7rv5hk+M5z8AsdYrzYpIlEa9VWSUvT2zmxPsEUoEOF7SdJkZTC/2k2r42V7KdAYHk9iSsa3XmQfMi8ycY/KXLht0PaF5NMfekdKJM/rKV9GjJ3H50E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHTKTpcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHTKTpcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351DC19425
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772184893;
	bh=mHx+w7lwBz+FSt6xvpRe4yVOKgKsCcrwV+ZZkiQiWkU=;
	h=To:Subject:From:Date:From;
	b=gHTKTpcURm6n9Ujan8fXUTAUzWmacVKdQ6ToD1uW11CeP3PEy2sDapv70BXNaUquU
	 Y7+c7uxmbPdY4S/pYgpHqOjQdqBCwvNGlaUbtk3tNreykD8/ieIFSpbxApJ7ZhMmLL
	 tvUVM62lhgY+RrOtulc0Z/Bg0KMKbxQrf2C/S1f3QPeIJ+stHwIgD64nXlFoaJskvo
	 99dwkOkSnild3aGBEurR0boQeMgUKqi+zl90ceSISnFeJkqHqQLboPt8PsJZu2cN4Y
	 uyR3xlBPbyHiokTl7t0uRl7Co69k/SKg9oF8TJjRh7C5kmx3cq9JU7UNaCgE80s1Og
	 xxowx1++L5jEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F133FD531F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218489357.2421.417019670136984364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3cb3e1bb8f6518d45aa250703de6ab604edca6f952f99436c4ad1e3d2eab52
Date: Fri, 27 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772184893

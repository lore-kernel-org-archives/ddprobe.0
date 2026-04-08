Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFB63D092A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775675134; cv=none; b=Yy5WRC7MjK+l2e5Dy9tLDzZnX+R+7+iSTaXmDwmKjtyaOYYO7OSGn7z5PU4kn6No3xHhrOiDf+Zvwk5lr9+murA/D/XNS6XrOa9gcjN8dFdE61yZpyIIJ9CeF3EZ0vDTuDEtIjAnOtM0o98deg8T91QRhuQlpeKvXPUQXuZ1oOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775675134; c=relaxed/simple;
	bh=F30G5vZhvL73llU/6xs1d/Hf4aLz+HvYOod52UCFQ5o=;
	h=To:Subject:From:Message-Id:Date; b=C7fo9A/l1sMj5XTR2kodGd1FTI0btOZv3zQ6kHyWYh4uxt+GAP+i2UNasSeL2YtFOhgOK1WQL5a/CYRfXIhkAD4VHFK0rSbfi4N6RhNjCnAs6hUCVJYIs7UTcwRO/120FPbEQdoR8X3rubDdV3RSIOMq+PLXgWUSfmqq5AZbn3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXxlJd8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXxlJd8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C16C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775675133;
	bh=F30G5vZhvL73llU/6xs1d/Hf4aLz+HvYOod52UCFQ5o=;
	h=To:Subject:From:Date:From;
	b=QXxlJd8zq9sPf/xBXeo/KHVNN4CXOOiZKBvOoSiVD9Qc5yMqEShMtp4Z2sno5PjQl
	 bjyPF2m3xe2MwMCPjMEizLk54AFS9jPtTd4YqXoZ48GpBarIQ44QmDTbjmfW8nPPVH
	 1iTZZILlGHuC4jfSFfq3uizNAcGpLL6foHToTPtCVtBwNeo2wIi/HApK+RyYaCWkC7
	 U6ciqtXxLx63/QgiKMsvdGBmx0QdzXcR3V9nmVUekWwdIb4JTLtsCslZ8gvawvFss7
	 55tn/xsfYZVA8sQwQWaGPrQvZ5o64+qyA8ULlaS/AyTSr4qlBhrEZHQlFuo82xtZOY
	 KN7HOzw3/aTkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B095A10F9974
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567513371.3716.8843232441219851416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9991c2cae116c8ad96244332eb7963dec065ef5cd199f6ab7113ffed4e5e16ef
Date: Wed, 08 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775675133

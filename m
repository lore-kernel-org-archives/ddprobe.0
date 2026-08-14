Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C26E1C84DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786737634; cv=none; b=l1gk69Ib0L9+gGV/U0cD892WuapOABV3QqJdfqOcaOSAc9/enVjiZ8JL0TdzwOWqn3N9tFOvMF0BOh+UEtlfcUWCyP02SufdTeiegH3MUVReMgY66YDK6hrYUKW09rUjPJX97VjS5W4KEtQq3h86bE7YNGbzLNvZM4HW02DIxx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786737634; c=relaxed/simple;
	bh=DWEzS10v0KntnQ3duQtuFw1zUA/bJ+lSqWf/xbNzXJg=;
	h=To:Subject:From:Message-Id:Date; b=uEThFKy1Ud/FGd9CgN9RpixU1zfzCni0xrUViL3FlM1x+0Wptl8B9AEo06XN0u14bTyihhMfeK8JxPMyP4T3nXtru/lP5AU5a3YpCnWyr5MYXm/SQ3egH/+vY1yxBKwFN3NuBH7dmlEG6VYicXCFmfBtoqkvIKfOQ+gktYFPzpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjY867Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjY867Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6D9C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786737633;
	bh=DWEzS10v0KntnQ3duQtuFw1zUA/bJ+lSqWf/xbNzXJg=;
	h=To:Subject:From:Date:From;
	b=YjY867BgQVGT/BoxRgmNj1Wb9d7KWPJS6LAC32KyiL38QmHT+kY1UmbSUBcQhc6yT
	 TIE0h0yYA2dBPMEGxXJIabHxrepMlJvx6yqH67kskDDwTIYlMQYGN1pQfedDuYPSmh
	 cm0bl1hLyCmpMU8mCNRiZ06GTeG/CZ0B9gccD/3sT4c00gG01aJzf0KKpPFeCBxacJ
	 4hWEtOUXjDpToof+xukIzeL6VYNxjsWhHmJGNkLk1AO3JEdSayzusUxDtF9nKjUjvz
	 AXV2iVta2CHESVCp9JPo428EBf2sXaEhGGTmFd7sXVG1ojocyHqx3cCN2aRkdY57e7
	 piRZmEVIwpFxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF27C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673763369.14213.4620273983372138699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f898a36f48e6e7d87ae26f8d2e15c8eb6bbe1f63db4fea804459cece276f1c
Date: Fri, 14 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786737633

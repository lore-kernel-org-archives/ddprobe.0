Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EC01CD2B
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730223954; cv=none; b=RV+D5RjTFDxcx2daen43HupYerXGcWfIMaCAluQhCwnlMi06hKkgGgiCcWJWnhGpprY1ezAbOIgHXMKLUhr1A46Q1gUvf7ynJWQlcJxiNR1zUsQFezk1D6XwqT9vPBjWGpC55DBfcCTL1ZwGlNCjFC6JGec40jZUQYjdDIgsswA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730223954; c=relaxed/simple;
	bh=RCAmJ3w4Z5qWVnlNUaKB653iQiQFQGWoQU+zKcIKr50=;
	h=To:Subject:From:Message-Id:Date; b=du4vvYkV+s1LmFOwQJUjZryov9JLlexNe3kld3CT27OB6jJ337PSOjvdUOJAy7qjgR2nQC+TtZQ2Zu+BzEUIwrdxn3kbsq6BffEjtE1KObnIDxwsuODnTp7OUNqx+weHUMWvkmGCC9QqeLFQIdzCMvqrOofesjF4frEIGK7h0tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlN2M5C6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlN2M5C6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49C2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730223953;
	bh=RCAmJ3w4Z5qWVnlNUaKB653iQiQFQGWoQU+zKcIKr50=;
	h=To:Subject:From:Date:From;
	b=WlN2M5C6R2KiuFvegB3I0O97NcLU0cOMdRLIShSox3aapKlihEFoYyBQaGubdF6Va
	 qFsKR/qDni2NUSWdWRYyPa2OOpHDWu/K4uVkHdRAftIqPKkCds8ub8k+84kK0IyK8U
	 kDv3Ko0DVpJ51mtTT8K8hq9rIut0ma8RHiS89bpFT/KGC2JM09KDHL0xtnJ/GIE7H7
	 XqIG1ydp6Ai/55UAd/KwPryxwB6kV708Fqk24Jz+hg2uv357SuwZ13jvqtdUuXX/74
	 DVvR/6R9Qa/nzORMjHguoISmemALt94oT/7XMND9rA1LS20w+NHL5KHkm/P8Hfx8oX
	 w9fvcK5yB1FEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3D1D3A679
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173022395363.19984.3015153929531637786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e9ea67e23abfd3901a3e94d6860fdb78fbeb82395ba6a844fc6bd4e1107b72
Date: Tue, 29 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730223953

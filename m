Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DBD849C
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758760194; cv=none; b=lmK/ocv8SbPZInVW3Qoc6uATA/V9UKl3mh6Fj73cFIPnB9Lh4qA26Jn1xXZmsw5CEmbxyo+AfVI9KAMjB/0wUCGqLFYYt2cXL1EV2p+mGk/jfw5RzUcfomZCvoUB84TO/Qd+1wqGz6hYSXeMv41sgyALayvlMUvuLYTNqqEDiI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758760194; c=relaxed/simple;
	bh=FNgXaWmgFcAEnGvNxPo+fMj6jGKSpSRbaOinvbnNYbI=;
	h=To:Subject:From:Message-Id:Date; b=VFLHHNJq1CLaOTxvVZ6L/+xnIS2YgYhVgQlemtVCyQoYsjTauLDJkrDVYxAxJTOQ+BoYSZj6f6cDOWK3V0iek4Bjiqo6veBTopRxVVTyGYxCGk6pOZELyqBWLTlgvU+Gl1P0TmvAcKDY/XfA9id2TlwsCe+MWgDG35hLOn1VUS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgcFACkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgcFACkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD11CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758760193;
	bh=FNgXaWmgFcAEnGvNxPo+fMj6jGKSpSRbaOinvbnNYbI=;
	h=To:Subject:From:Date:From;
	b=CgcFACkhalRk8ANbAvDENTOWy9CZdJ42HkLsqt2GrNgDwQSc8FnsgzlqN5wl+uAYX
	 L5IQPLbaVey1jnynqpe5/WgPLoa1RL+t/T0bQtfAYd4NEnUQjkUCVmd6k1VM0k5QOv
	 lKYVFcTQZRIjJTUlNotABRNlxhdjFhe72TnRWGYdlabOqbQwLN18RnsgItJHpATKDL
	 Emtdnb/mLWrWeM9Yud7oC7O/on8bYkROe9BE2OO2/45JGiN0Sk+G1u7bo2w2qKo6n9
	 ApRJ3lR2J6Tad0OQTN6RtetiCY6GRQDfHrwjJE1ePGaeOqV53YIHPHwzVZ2YQCEmfn
	 P3heXAsEox8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97477CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876019360.9567.13131765159159980438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d2dffc0ac940a6ed2aba9f2741dc8478edd49cc6743b171a59d9866f2905ca
Date: Thu, 25 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758760193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42731129A78
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744760994; cv=none; b=enogd/WSA97rStKdUsThzKYq/4xoQ53XS/8177EBHjyoLoIARmIjDJyQvgLHAvhloNkdfHyxrzvVBJHkn8OcXKWeBd+sY/MDXR9tzWW0wznGwLvMU9Ljln0NpH0KZFW9U8czzKmG5fDpoxkxWU6LlLJd5k7BdroeIYGSJv7H/tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744760994; c=relaxed/simple;
	bh=iwFqpCV1bMHIbkw8rzYM4TABJMEysaBR0u9DtZV4CoI=;
	h=To:Subject:From:Message-Id:Date; b=Fp7wd1rr+bwuw1E1TECrUp/XjNuoZpZ3A1r1Y9mrQAYncO7oL+meJG4gfEqaTX6d8AN7/T8yeJEzftvmOWTUjYogQPIY3YyzbCPUZoX0ecF0Xf9xXjvl8m1toVvt+vs3JFdvfjxoMdMBQiDSINJhQ6W9XNETXICVffiXyNe+THo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOLjlGYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOLjlGYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9133C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744760993;
	bh=iwFqpCV1bMHIbkw8rzYM4TABJMEysaBR0u9DtZV4CoI=;
	h=To:Subject:From:Date:From;
	b=WOLjlGYNlnUpZOA+SeycGScYb0SSTGMlXOjTbvszb1tSACwk3e3z3P/PSgMHdpR4s
	 MSAT3MjP2huPmguG1qX7e3d4RSgZRNRsuZnlklyU10zoxX4zDLzeBhs0YcxM3kjnwx
	 V4EsOQDAWJRjLA1Z+H34KoTGpCyr8QsymmPR5nnlRGj+BoTCuC+0CRzf72q4EJ0ZHJ
	 jRFIQNDKYnGfacyAyOc6SID0J5GAvYU2HyEV/rh+bqO0FpFwrQohUo+fszq8NpONp4
	 EvWxyMTG6So5xlMRCdSAQNr8RaFEjKqc49K5WGEFKPx3AUxRdXymAJnXko7ruNC/gr
	 kIs4gATeDc7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F275C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476099357.15552.11154026026887452075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5bdb859ba45ad9e7f06ef246b0db31f0fcc1d6e4f4426bade1d373d6ea8086
Date: Tue, 15 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744760993

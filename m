Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB9B14A60C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759892994; cv=none; b=cg+ZV6Wg010BTYSin/9xGiVl7AGNyD0PJa0qJ+4WquFuJxcdXDF6Bs9tvpq7PKpLS69Tw1imlSLZ3Bi3OX4+F8N6YLmWJafB2dlNNyEqPNItpBgeMeDej5amRQmLQJYAeDvT8RUiVLUSW2SgHKJBKA6zPD1WQJYG2B275palJJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759892994; c=relaxed/simple;
	bh=Euuik/YOY42SZ5PKyvavJuRkrdPvBUOk2yjcgp1pGWI=;
	h=To:Subject:From:Message-Id:Date; b=D83ZMK0o5WBNTYKzLwKHAiNGsCZPMhmojZbrm5GtCbLfsRaqeNVfyhKf1gVtT9ZaXJvMHG6AqO+Vfxagc62vV0jHeFOk+tPqfNYLRzIjCy2F5ryVE/TTlAcCkmTVUonJ5q0Ld4yRS+WVtLJbsnagakkPvohs3FJF52X8Qknj05M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7laF1C7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7laF1C7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E87C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759892993;
	bh=Euuik/YOY42SZ5PKyvavJuRkrdPvBUOk2yjcgp1pGWI=;
	h=To:Subject:From:Date:From;
	b=u7laF1C7V3Y/kyrMgDt6mlQupvdr8CrBbpL0wFmtjZsGFXxS/cKpGeykAm622oL/T
	 RFROX637309N/k/Bs5DPzYrbUIjpbIZv/RgZ5abdmQS8/uhus+U+nUyQ1Dexdba7mc
	 Fnwa5MCxf3ObSfIKMRLOoY9L2TAcxUd7NMCP7JjNw+GOCCj2COJzIymVUSM7Bxoizn
	 VQt4F54WOopcNg4uK+HEfrEwwhOU3r9L7H7d+vcDOQ8cBGKNyo06QiZN1kfejVErZ5
	 M1P5dgQP1DdWxzK3XeaRwpyO1dWRDSYoHZeHw0D5yHXaFGcPIQSxkrVGUNMO8dvXLJ
	 6lQMFvbTXjWfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95118CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989299357.11218.15115637517545104873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a25a8fcd27d0f579441930d1d2b399def60484b026c45990da16da7d7541984
Date: Wed, 08 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759892993

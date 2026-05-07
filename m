Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367173446CE
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778161054; cv=none; b=G6R4JU6mbFD85UCws6m0s4zfsoVqyyHTmIiOgCgTrlvTeKGPMgSNdieCveGKi5Aw1/qmi+t5OG1MOYVAnV7b4+J/0wuERwjTib3mTjyHmrs670tRuNNBgOzPxyPq7UcRkZNlYkVcLDFtX1XHHU0oQHBIeZkl9xOfitHl/hbE9RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778161054; c=relaxed/simple;
	bh=mcM9lieKciiKauzZn9mutrxxwhrV+lsYPRzRorFDZAw=;
	h=To:Subject:From:Message-Id:Date; b=pJq1WKcWof4SPom1V7bUD1Wq53OuROaMT36XDw+6lMJLRIQlKimLcfWJviHt3GHyd928rEpiHmP/hxB0a0yWuRq0oL0tQz8YyD5QYXhXXSnK0ezx/kd9R2MUzUj4tlFD4UidErM+4iCNwF/Hm5W3LacJoCpOF+DxfPQG7mx7W7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kesg87Dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kesg87Dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E04C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778161053;
	bh=mcM9lieKciiKauzZn9mutrxxwhrV+lsYPRzRorFDZAw=;
	h=To:Subject:From:Date:From;
	b=Kesg87DqK21XW6T5ZD6K5KuC7iCzF27xLLvqNLLaIZcMHhG+gFPeQ09DIW3IeUjqt
	 EorziuiOUIovyWB7z3ShOyy+Q47pe59jYWlhgj3078ZcJyhWtgyrjozohrouvVDTws
	 dxX4ag9zPDfNki3At18kevM3W5Bjbuj5zVnVWe4e2WugoDkvpAUvUzH6rfa0TsNOJ7
	 Lbig6h9b5XkFKgcVtNeDKjENTkBaQ7iN9WLO1FB8r95R52hDOkJD69ixGbUZJsLtsZ
	 vUOL52OBoa316oU7X/G/S/Hq8uYXkwj0wepNj6yJs0t2EErO2DUeagAbvjs0+9OuJp
	 fBg4bA3PjxZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6724CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816105373.26755.10066576624541888069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125e3bad1a6c1a1f16131580f35ffcd5302a23e0751abd45baf0bdfc123ace9b
Date: Thu, 07 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778161053

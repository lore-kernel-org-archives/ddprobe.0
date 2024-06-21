Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B6C155C82
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718967143; cv=none; b=CodHeV3opL4EO05OUOoxN1tohbfeoTH4CiAXfntRqLCxYmdLVC5i0I8PhmrAN2umQPYvaH5BXsOVeC8QBokA9DObFvEJI+ncwTWwU7LCJafbTY5mzL6JvkkbVQSbSjzAO4cgeF/qNmbJ+OMWaScDMShmkzfnlwgdjgWRv7vTC2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718967143; c=relaxed/simple;
	bh=s5R/8ZvFmie2ZNtnzjgF/vgLLGCkmW7LMdEtTCVC0nM=;
	h=To:Subject:From:Message-Id:Date; b=UNO2xDPh++HAOT+N0H5n1u7btLhzxXy2X6BpIu7U65pF/b9lsXQ8BliO9fbQF/eE7FUvv1O6tUIYp7qKcQ7ThINC68Chcu+97mqgyS9mrPNbY9nbzZzoMM+mL9Y5L7W6Gpk7cKwm/Hhq2pvrNQ1DamOXc9aiLyqUMnwN0fpnDRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/sGQtjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/sGQtjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BA2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718967142;
	bh=s5R/8ZvFmie2ZNtnzjgF/vgLLGCkmW7LMdEtTCVC0nM=;
	h=To:Subject:From:Date:From;
	b=o/sGQtjolPgHbcGNmIRgzeNTD1FcQbKWXGctkNkiG2LVQPTBWUoA6Yo3owU5KumIi
	 1o8O0ytZAFDZlG71JquiGTYr2l5rhfG745Uxh2CgorCJkqNCFaNPpbRyuh6pCYN29v
	 71orVI7ipbTk638vCyT0IGzCwK+ozIq4+J+r8bF2t6inTgFQ4iAsLw8JNVfupK0OXS
	 zvbMKBwQbOjiB0uuCBXZyoIS+IuFcUFYoiL6+FunP94IpI2tSbEn/Ts7HzgSyGmttL
	 ojotONsVU0IwKbeVjc1mFuFmDv0ywR0Y6CqEwvz08XsejLQUlZQ+ajwIHtcjBMR819
	 wLnf04FjUzlDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3857C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896714277.14886.7056124470431133395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddc3410677c810897060555433ba04657af63c8784d6ff672835e63fc58cae6
Date: Fri, 21 Jun 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718967142

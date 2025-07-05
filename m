Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38C918DB1C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751757593; cv=none; b=N/akr8q0RNBVvIyNcmsW7Nq+lSnMyR82S1OQkBkkeCOb/ljC2U5CiJGXh9fXf6XN/Z1r2F7paivfdKk9J6wIgzJte7tecsNnWBR5vj4QQIgEBHu6ryi/WUY1flq1w1VwnfwKrubqITDkGV3uebXraJpm0uI30wrB7HN1OCAbTz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751757593; c=relaxed/simple;
	bh=LDSuYggd9i3XPc2BV4wBtiwhG4jaq6aI1fd9lobU4D8=;
	h=To:Subject:From:Message-Id:Date; b=CdY1bPIaHJege/LPEOXxWGIh01etZPk6uCXyMY1isHP59dufB1bBbonEbwgHRLfsFJYMYKpp6U5NTiuo6jll443sTYAgIDgR2g6ki7VEfEbccVKEzxqx20ASbbQyktr0Lp6MWT950Vve642lNVTMZ7YL9KS2eQxj6GF0Fz4HZcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHfMJnG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHfMJnG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6183C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751757593;
	bh=LDSuYggd9i3XPc2BV4wBtiwhG4jaq6aI1fd9lobU4D8=;
	h=To:Subject:From:Date:From;
	b=qHfMJnG9r8W/zaC0rFSEz8k1HeaOezWQoLRWss4N0651oLO5dpW58DR7J17ZiRmNo
	 b2ZS5rzFsSRRGY7Fd4ZocfSuoW9yPyL+I+9XEzrD+6ptxYnyn+yLdV+SpLucMg309V
	 h0tKkfFoQFvnH809244rpn4V8FblrRAtCFIU5p9ECyeK4jsoNOJar1O9TSZHqertqf
	 /sEk9DxrwLEzsQs7NFAqYiXMuA+ZE+6ZRBLX75sAwiBK7XUGcmUQzPTRgn/UJZ45VG
	 Djj8vttPjizfVXQmezctOaKRZNHikpFO/VCaAAOOVxzYnKTeF23kzchlHCZS9m2QrM
	 GAof1+30ZcgSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D80C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175759357.28655.16682191814919650789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363333040a88d1196c815130fac2f456aaec52343702f5a798566473869e8283
Date: Sat, 05 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751757593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936123597B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781973994; cv=none; b=ijHujJm1/KqU2jaUZqKbQlnnM0tIONYy7PxJEfeMqGu1dM6wkNaDJwlpMtXOsz6nrI/iMfHCKw4tafVeFkQD3JZq4+8lXh6jTVfTU5617n0HTUcp5qtG7KhYUsruMMXrYn/ffGFv7rPxqM/WXq0jUYCubDuGqU68LNj5V48Mt3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781973994; c=relaxed/simple;
	bh=3VVdk8f/wG+FD4h10NbAsRyhEgO8nBtioJPQJMgf3QM=;
	h=To:Subject:From:Message-Id:Date; b=hZn3WJA/lUKr3CmvfmapC5WLJ+pI8QoUC5gTk5kGoWJUf2Yk+yvJZpuFNcC3pb6SgQaJ60nw1WpoYtTnSbdKx16e6Ow4otxtM1ezNw+dN7jz9hQsCNGnzj0yyLdr+mKtNcvyNml5YFYPBntYtQjM+7jHzrIEAG9mMqwsEAGiBnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lchCH5eM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lchCH5eM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5E9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781973993;
	bh=3VVdk8f/wG+FD4h10NbAsRyhEgO8nBtioJPQJMgf3QM=;
	h=To:Subject:From:Date:From;
	b=lchCH5eMX3aZn3MgdpZd5jYGf7a8glctH95OjrF07wS7pgn80eIvyxaRktC7Yt6HN
	 b5zoxEnVeAHkI884d7IVpbBVufnqCzOx7YhaDr5i48eo+t1xa1nxS5YI/m9LcalB+T
	 ssaodlGQFkFNvwD2TRANVLvI1r1IA46yJvmNvEzXtwWOMDUMzORf5JVc6vjGO8WbZo
	 cj2cMJIrhO+YQh9cFKkqYhyL4S6tmzaBAYqumlYPGZfyLWz3vMJbLXSC/tZDUzs1//
	 udIZs97LvYIf6Vfg9BvSBkaHc+fuJ7tTt/3mPGhiYFXjzDP76Q6ZgzdoFOB51L7LVg
	 pFI9T6uE+RfLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8E0CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197399368.29192.10698151186579340145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5e7c2819507de92569563b9f76de298ec165865de459fb51b5a6aaef8b1122
Date: Sat, 20 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781973993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374371A9FBA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775297134; cv=none; b=gymttMG2+1mOav4fnX+RjKEf+HwSLUghoVnCwIaywl3ujimVEOGu9QUgwDkPnnpzspdrCCrUmRioQ2nrV2D4v262iw86USGV6J+V7m8BixwcxyL0w5knGKE7u2DBFZQcdTQ4uGqX/ZKRClsFBUbTUZRH8MM5pkAZtmwUAfJsSrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775297134; c=relaxed/simple;
	bh=arK10KFsEXKkQNTLJkHVujXGNEH2VE9nA4FqG0Q7VLA=;
	h=To:Subject:From:Message-Id:Date; b=F/a4g19a600EyaqLXlQpGKbSZsYdjOmo8lxNw7V6pSUTT4tX/i1Q9kjqj5BIQLKe7mpUJEpj4A9VkLbZcFyHLpOjyteUvvAbwAN4aCyo/8wxe8pi/6/VChLn6o/uROMY3nAf3X9ajgTqah070tUO5XutOmPVxFzEeftdALRrVvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=el6des0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="el6des0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7895C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775297133;
	bh=arK10KFsEXKkQNTLJkHVujXGNEH2VE9nA4FqG0Q7VLA=;
	h=To:Subject:From:Date:From;
	b=el6des0oYUtOc+/uKmbZD2OJOGiIzr+wumZ0WraVAZjdERT4JAnCs0hd9fqdFugHu
	 14BawyJruC0LJrKEr/Jw6S/jVeHyPH6Hr87zkh8prGz4wW1zrdmnIHVWRK2IKg+Gdh
	 drm2vg+1jUIk7ceeuQIdvIxljMJx5rrz0KTSAT3+7rA1EuSDkqrvcEev+XxDRNN9Pk
	 csmlID2TGXz9CaCFOujD97YFUAEeTME35G4fw+jRaan6BCrqa8pgIhyux8JI1z7JLr
	 0rL/E5yXuw/nJPRirkssF1YrnqP9ieS7YPYmiDG9JDqxptrjQx93UclAVh1UVu1Bgq
	 RD8mlLYsDeO1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E1E88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529713370.18592.17398257995403696966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4712f21d9a5aba0422dd88c814d27c05e4855773a55b6d42f5a9ec896470fdf
Date: Sat, 04 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775297133

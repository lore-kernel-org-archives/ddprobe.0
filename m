Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A03173
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727019354; cv=none; b=gMR9wgX5ZF4/qncUs3BGZdJMMUcOjnJyKVO/OqtB9y1l6DUySfvHmyEtO3oWqAkl2mkf1fQQ9HC9z6aw97EENJ5NReuejodev/NGYY52fxs9vbgFv+DHcxVw8+iETmb2RKXEDSjoftfr0rB211dlrWVyToaXKDpUsOapnFlds3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727019354; c=relaxed/simple;
	bh=5D0s7LcyANqzG+hidPYwxnJ3Ee3QCrb7Fqo7HtmR5OY=;
	h=To:Subject:From:Message-Id:Date; b=aC6bg06+iWewh9z0PmXvTgjyU92n39vAABLPAmleS/+YwRrg2fiA11AOuoL4g4yftHUTCV+gOH5JiYSE60qKzZRiyTbTOaujR6V64O+WjO98s0jSWKLD4kH97Zp6jiXLRqFKjTfelP+AkWtyI4YnI/ONlPyWtLQdsSMadnoWwkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A72QFq0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A72QFq0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDEDC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727019353;
	bh=5D0s7LcyANqzG+hidPYwxnJ3Ee3QCrb7Fqo7HtmR5OY=;
	h=To:Subject:From:Date:From;
	b=A72QFq0GOI9iStzuxwXKDczkQWB8h5qzP06rMK9LcKziozbDn+5lrDtZXDSrnvXUQ
	 squwZtyolyD5Y5uc0/EHc+Jf/9cOG9nSbqHSbEZdz7VOaIN/8gtNr0sXtDvZ++HfKi
	 cD5NOhRvAq6wJHHUeJpraZCSrexLpUJ/Ef5FZQIxeGbhc9kIHK3nVfeLOrpG8VBfgg
	 kIT+U6lRnLjoz7P+Meti938Xq4tArmqZZXbCLSoGmQOLSZCt/DaarxFx/msgkyxjQs
	 6lZsmbL5XieXGSPrrnricLdJYAGgYFckHt4YfRfwfJJwnAcLf5Skj2MU10FpEgFFTZ
	 om8QcjDPV8ZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1BCCF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701935361.13076.15685163041891324937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06aea52cc58237a2338e0697ea8b436fbdf4d95f4d98a24aebc515ea8ea62b04
Date: Sun, 22 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727019353

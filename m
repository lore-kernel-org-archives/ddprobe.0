Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7801FECBA
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783885114; cv=none; b=GzZM2YdDkLSJSaupebTZIXX4pA9C/6MCqDcxoRxq5VwReSr6af83Gh9NGBvj/F3I+T3kPWROgSdCnSKCKlIYnvEN36zC9tvnFW0voMEBynTWSAnYsTKJNFxbYjr0E2jRcZWMF03cfQ4CQpAEwUGCPUsjGqeYsdQ3UNUuKFrmKO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783885114; c=relaxed/simple;
	bh=L5dz3LejLNhcsLFsWcbkkge9Sgzp3soIaxXuxAkyg/g=;
	h=To:Subject:From:Message-Id:Date; b=foBrFOkxR5raezBxrlctfZOGkOMrABaXJitXzp3WPCeiwk2uw5JyNMPNTC67DGls3i/RGFvS7kzG6eg4vD2RrZfhm8rhyJcVcudXHs4LZ8lcsuMzld1o+fZMD+uNKnfAl1J1q80cyLLoN7/l2RGZ1bNcU/cSORobdm8eNIBVNs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEzzCg8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEzzCg8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46AAC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783885113;
	bh=L5dz3LejLNhcsLFsWcbkkge9Sgzp3soIaxXuxAkyg/g=;
	h=To:Subject:From:Date:From;
	b=SEzzCg8RM86spxkYRMD+mRKuBUuCP1I1G0i+DHVNB1DHKw+UMqV5U9KL4IbUVTqqx
	 tj3NMLpBchFsc0xThbo/coIoykGAe5lFDkqpBHAvo10KfkNHi/io3bjhd5xYJlshMR
	 x5IApkF0DvJL+jBoW94FGVhkBPw7vjZ57c03b6+wO7waQXfjBqsFgI6YxlfQB8xU7F
	 3uegoUGK/j9vUjZQ4T5+1f0sfC8dZMhEXzFnKxuDgmnTdjSqu0BpAUR1sCrHyAS+vW
	 lXIvK3LyUs1yChWqbFJSDFkpDVVPOBy1V45GswZAjSJZiK1Np6hulckuQpIuZjBZmb
	 s6wwFZAJh3LDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9CCC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388511368.10534.1640150896724489458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514faa31abd7129bb8e9571fddd021678f592e86188691f0ffcdfec1e52eee1d
Date: Sun, 12 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783885113

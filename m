Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD23326D55
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782763114; cv=none; b=OPkPptEoJL8pW5K5rlfEw0EB7/cf+0t5s2V5MA1/gh1XUkOLF47LKLB0lovO8GCSyyEUWrDmKblLx3nZvKdgAv/4TvsFQCUzd+BQNqLGqrAlCUPUo8cl/Uec+7NztdggRCFVyRgXtOquQTypCk5o0FX2nCNHMtToWXJT+E/8YIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782763114; c=relaxed/simple;
	bh=5FtexShlhUxtTnwkT2+f2egMbdj4rMoElbq33mNkGDE=;
	h=To:Subject:From:Message-Id:Date; b=r+kWbzRFk2+zj1LD+ubLWs4FTmwykCmAlxSlbz7+KYidEROvp7snQwxPoaiNWOudonqd0vVpv2EFK8HlRj7MxEdn+GcOg+OphWIY6oDmrQBpTkZGCrSLsiFjSydjtwuA9zkRYFW0a0rhaPlPd+CDC+jwTiz1hRrkXmYAqNmaCVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YA6kTdUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YA6kTdUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C802CC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782763113;
	bh=5FtexShlhUxtTnwkT2+f2egMbdj4rMoElbq33mNkGDE=;
	h=To:Subject:From:Date:From;
	b=YA6kTdUGVPuldVh8B9inIXUyer2Yt/IKa0HfR5GD8LYQ+ibA/muvJrKnpLiRN8r5t
	 Pb3k1TUkfdvP/QNrUkYq8QmR20itgorQUcUBp7byagFY+w6cjSD+J3hhLN8eavBKfp
	 b0ZhrzrpOHgsichM2uE6N5nMiV0cl3bf7+dv0rbCKgw5VvWHPkHAyT/0qlcTmTaKs7
	 b0Y8j0jWvp/IzTq2OxOgKoWuqyOu7BPAq/461Nr4bAIeJwEVEHqy4OH1gL2wLWF3sI
	 vsMuf/3/WirmLguXWrfaw02BjdWCXh1sLuvgQpbhRB2IQhIkp5mIi5Dmi2mlKfTPHj
	 I3Wn3JktqiqkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB6FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276311369.1974.15552000980533085835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb28852492b802cb3ce2a8eff01551dfe9326f31e9870829844934aaa940be5c
Date: Mon, 29 Jun 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782763113

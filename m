Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91027707
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773187494; cv=none; b=CxvQnKXfoLoQtVQb5zq5wrZX5M2hJALy9tINHQTTqH6wokWbeeay/N4M1S7Q8xPn+b6gKK1FXxJUw/8kPYnPv1z9nFxncNeNoiHYI1Zq8PLU8BMcgAeujnPkFaH3GF9tyl1M82ZLypFd7c4+Ba/eGUoMnqwE/A/01w/H/2oCyN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773187494; c=relaxed/simple;
	bh=qaf8ZBnlKrDDJEvnTBY/TxX6PG7VEmzCr1FLlUvT3Mo=;
	h=To:Subject:From:Message-Id:Date; b=c3BrwnOMyrwGjePNmHgDnidSNCkYXBMCRrfdjvDKZ7QZlFSq14buY3qAe7w/QVUCqlWU7eWqmItlkeDEJ50eoK7iHUD8FQoa9jemPaXUjqzysHZ13+hI5IU3sxE5S/thyp0U01roYsuqQFpRhAnvhkHqT45wXg+NmhRREPgvu2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwRRJplA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwRRJplA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABA1C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773187493;
	bh=qaf8ZBnlKrDDJEvnTBY/TxX6PG7VEmzCr1FLlUvT3Mo=;
	h=To:Subject:From:Date:From;
	b=SwRRJplAPasSSYG9ZPdxjJbMJ+QlMxZFb/w6iCTduSyIp0X/Re8/1hPsb0DCwcyfC
	 W9ecnDS974uZlDcvncJAfZCUOXcK53GAUyBAH4r4u0B70G0PwBK4fDyNlaiODHXixf
	 HLHHfE95J4o0SW5cBKcYlXqCEYyo4FPLJB/RLl88y/zErFqeveho2kB75M0zz4OzUO
	 2kRGuMgWpV0rCtREH0GdzQ79EVjF2h2XXCF+sspZUGWl8yq5oa6hGMaVDe5Ner8IbS
	 +wqaX33stBkdamYuYb6zNSTkaeXowRZZjIkGHuoScGlVgDf9+QiiT8q170UmmCvIhx
	 i9vc/mnLsMDfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6922FD88D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318749367.24123.15312956405173225810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3324b8481afbeb71ada759a99fbe003d4ded17d230043ed4f3494dc7166f69
Date: Wed, 11 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773187493

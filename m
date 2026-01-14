Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13924A59
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768350234; cv=none; b=toX1kkEMSueDhpgMLp0P8GIr5yHhMYG5oC6a9vxSUmxQey75//2M2BXcoXfxohRCvcV52G+LV2IUc9c3CnvysU337l4JAvVLdHSDwmcjYBPiWbuStGX7qPzHgskfCIR+QrP4+zKXUUtn1c5fjmrfsizuLOlsdjMRjzfQsQOlmhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768350234; c=relaxed/simple;
	bh=SwyxG3vooRyKcAEA/OFR97Ow64fD0Se+c6xJZySGtoE=;
	h=To:Subject:From:Message-Id:Date; b=qyF3QWPNhRwPjQ9A6cCoYr2jmPhwDcV0SH2g/NV4xz+qxhdwo6bkstQ9hjZ+TWmGWtBqQr/y/sJ7EqEHw2erlNFWLolmEq/tsAfm9erlLiw1cyJzhNWqV/25n4YWvH+ZjB6IlWOT6s/xV5dqj86wVpiYydwcHKUHCSvhHoRiqZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WB53S/AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WB53S/AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A348AC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768350233;
	bh=SwyxG3vooRyKcAEA/OFR97Ow64fD0Se+c6xJZySGtoE=;
	h=To:Subject:From:Date:From;
	b=WB53S/AGh+k7zubqP0MWqT36uh+rqz4+09adrcoMb+plVrjl3Cvm/neoWjIZgsj2p
	 DANFQIaUjEBC/KEzuJA0SrV8SnYJPw1rACEmiVznlBeX/O9xNa5qtN8vXNlwZcMCFR
	 dhOowqjibDD4r7qTrt05byKcJG/kOwkIdm9EsdNDA09L0hAF1a8ZQfICip+t1WXB6l
	 kbQHqI6vDqzVtmWkjfhDVlOeZoE/d4FJJ1jo+7zM9IXffVYAfOlTS7KaEShmXpCfTF
	 DY+KyIAhNQsJqnause28wGzXJQqSQsvrFbZUYp3fAH8oO/X9M84imIYXAo71Cstxg1
	 p76VKnxdhljvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92905D30CF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835023358.21999.10892639503675244594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31465c8b96f4b7cea1ec6fa9d129d481a154e40b9fe4300e6dcc236f6d3046aa
Date: Wed, 14 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768350233

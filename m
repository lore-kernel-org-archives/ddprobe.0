Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F55313A3ED
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781487994; cv=none; b=rdkPug7b/OU/zGiomZaDlgiF7vokKY8IQXlED/FYcADsX/y3V0jxG9J/koXyi2JZhAtMnBF9JLTDZs2/TEW5Wqo/OSGwNCNpGZwSTkZsr2UMzRx1LoDjc3niW28oLa0gADZ9w5Lqn9rHpZmu2g6N8M/c+cHnLaZsC3yGkvSaTss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781487994; c=relaxed/simple;
	bh=DzKNxBsIXQl/leL6ZYmbGIV1tml+x2Xw9upUWLHHNEA=;
	h=To:Subject:From:Message-Id:Date; b=Yxd+rIq7P2Vy9qv3fxxtTa3yRy1O+7UQGPXHXBBunmwMIUH5UTgzcu0q5UU8tpxT+aLtE4rKHTFLs0I9wX9z+YFYfP8cuUMSAasmX+FdWFpYihNgQQOlYR8klHeMaakLPC1bXcIxPpWvwYBq6wskgQ/qcoAQRkXAjsJ/+OOWhJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klBUI/Eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klBUI/Eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE691C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781487993;
	bh=DzKNxBsIXQl/leL6ZYmbGIV1tml+x2Xw9upUWLHHNEA=;
	h=To:Subject:From:Date:From;
	b=klBUI/EodGY+Ot2mQ3VmSBBZW4eN7pUfvpXqfBRRjLBs1Awhn7evEcwLFZ1dSM1Nh
	 WJ0hTPecbPZJyQapYeKMloF6Zdddz9rKld2AffFm1PJyHVe9qAdlcKDZBq8Wh1wqTJ
	 px+vXIXAgx2Xp/a7VkJAisCQ8ctcRAEwaD49hAT22D3CpPWYaHujC2Aa0PcLv9SiOL
	 esL+XqQKvbeDOlwX2UzzTkv9wpHF3LxqzY32KCRZkMp7ATYhdagKJtA24lVn8/LBAV
	 vMqpxvW2cm6OX9pQmWiZoi+z4WvqjJ/1EQwof52aOcIk1O1CVGm3BOpcn8XpdQRVUb
	 5hKh8HaZbW3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B258FCD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148799369.11052.4028559121407819962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b4d9758bd0a68bdb05308dd59081ae75c66e6b9cd0c3307b78778f042e043f
Date: Mon, 15 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781487993

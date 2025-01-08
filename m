Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBE42594B3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736324154; cv=none; b=Rwjy9OPQszPXTBWf0TtvoYX9mu37lLJFBYCa/+bASZhRfnmtLO/ES58KLNleOf5RDNeE0hAcrLxXpah3fEA9KvK85AeucRMrhJz9ARJniU7rAeZwtvbHuZHXuVSw5zQdZbZQRGhnRYMLgPXbHPvzjs0gYyfCUvFPcLrRAbD8ttM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736324154; c=relaxed/simple;
	bh=O8m2sIb03C/bAVnrRKKUNHO+V/8NlDd+aHsi1rv8Nno=;
	h=To:Subject:From:Message-Id:Date; b=eHFa7kdzAbHGbBcBLW6QQfZQMKNtRbRD0QdURCwVe207auzj8eN+RWQvPCpgWPf8Ssl5xfC+oQ5ti4RKsVbUA56DPH4yipkgruvzfZ+eHMi/Z1Aq8FQxsNmKda+P15kqf5IDoLbYuFn+xWUyNSofvyb4xJ05s3acNOLoIcvz+Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imejBqAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imejBqAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A742FC4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736324153;
	bh=O8m2sIb03C/bAVnrRKKUNHO+V/8NlDd+aHsi1rv8Nno=;
	h=To:Subject:From:Date:From;
	b=imejBqAkCgCtAeVgsmSSDLRLjgJqS91X7p7TBO8MSa8PXPyAd4J5BjrAw6V4cChKy
	 uGeKYolKOGE5a+pr9iF4VZyD6nYuRDfsGSbHrTiXiF9/JMfTAoRx3bKcK+QKrpTyxc
	 8xvOzRYMRixyfklFc9CvGAaQ7mI9E6YxEw+pfJI36xfGRp+eEmESQE9EVb4TIdVZFU
	 baeWyS9mle9n65u/bngssfm2DUbqEVTfBfzvWgu572oVS8S7ImCg5xBgopz70QFpUu
	 ei6OpP82/ZmJ0cJZiJQNLcWpVHP3U+ntNGTJe8nmMZm6hmfl6Hee/2o7bEXiyNqMEu
	 mhPrw9fNubNBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C71E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632415358.3803.17135228911393843643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d6a60e0b5978d53887a8d55549106d86858a05aaeb958db5647a2a73ea038d
Date: Wed, 08 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736324153

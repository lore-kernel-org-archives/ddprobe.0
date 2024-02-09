Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0910215C8
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707442097; cv=none; b=HNHUVUxCOoP3mUGDnmQAJJ4+mKxSNaDojujZGetRa9y8sG7cjSo7SufTvCd05gwSrPUEWG3tKb0clvozlNEal4FKu329oLuihM8kurKu+e+SfWy6wFWdzLI9+rHRm3yKh+az9O7+Duu+cNXF6Rxw5fev6/5rKJSwngU7um049IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707442097; c=relaxed/simple;
	bh=W7Sf3cCTrMQmZ+oc8yUn+knfPTphTJROe4aE0pAJzaM=;
	h=To:Subject:From:Message-Id:Date; b=uOUbmidSNTzDPXTPleG+gC8smQ9q2tLWmGlYXgDPzWBlTllHNBv19U6/mwYX2B6FRP50GQmQ1LF40vOraRkUxH5wWb+24nEpfliaS7h166BsAh0NuQdl6TZnlXHYD8rS1mLqBLxNHWK4qIZl8SHSik1BOMXFRfMFJKJneKCCjg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPb5aXmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPb5aXmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FC4C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707442096;
	bh=W7Sf3cCTrMQmZ+oc8yUn+knfPTphTJROe4aE0pAJzaM=;
	h=To:Subject:From:Date:From;
	b=WPb5aXmEQaRq8aSo3pcIXlY08Pxuq2GFj0Wt48BojHdhBNr3YxUhkHKvKQUQYgUBS
	 d/VVAdF95iCh5rVCyvjFYOfWMwuE6Pw/Cb+EkCY8Twc03+0p/GTkOmC/7wrG2JqRFg
	 EtaBu98/U37HVW0FxV10QbfLKv4q4g8CZKu9uxpGkdcAuL1LXHGt1avLinFbob+ruX
	 pmdrtCkTWxTGtHaAmjaNya/XcK5N3gSybrLyVLhRNoo4/I9ASIEgADhkhKiRp4O8ky
	 iBFu0IYu2M7H5cYFZ2gk0QDeD/CXd6ae/5qjIxzZFmoawYy8QyiWdEqvoOiYOPWKV3
	 409uc2VIwXibQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62384C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170744209639.4460.1804029839400198054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0cd0e1d3cb4ba44f076aee8d25021280fab9937620373e8ce9da80225be3d0
Date: Fri, 09 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707442096

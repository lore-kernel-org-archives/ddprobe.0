Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E17718785D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737279954; cv=none; b=KKusLhNOXSQzvhjjHvoCGAM0KrABsAEF3eOrnGkjOd1yxNIIQ5crj9tqYmkUnLANbWULACEasrhyaRA/ko07iWNqxhhsDAIwN0CyeMs1alWdeYe7srESSKpwb+IiXR8C8sVLd/89/eeooEqUk30tU0QuKfZ4NirNbyMGuRoqm1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737279954; c=relaxed/simple;
	bh=y1/99HGdb9vpsyXiTH175+vW+Et7/Qan7efcoL4G9ps=;
	h=To:Subject:From:Message-Id:Date; b=nWAgpGkyRAOofP8OhcATZ+G2On3CnKtMZvL7j8a/aPaCfyj2UvbW7cPPyOZA50VrsuqwmZ2Gbtan+uydWqfenQDavLW8STBMkbba6xeziK8Wfm2JCjNkbNqp5zR9JCmHCUpmEoQGUWZHfz3dhxXbGOs9BmpxKLNuxTXULpZ319k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOtFgWVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOtFgWVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE523C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737279953;
	bh=y1/99HGdb9vpsyXiTH175+vW+Et7/Qan7efcoL4G9ps=;
	h=To:Subject:From:Date:From;
	b=VOtFgWVLFB13I6k8Skb9Xt4QnO6LmZLb/zsmRMtWnryBhDJ36BqtPmaSrwIu+gUHi
	 4Fba9fBVB089D5xQX7u/19DY/75mRt0igC2BUoD0expTkrxXdtcGkm6xKqh83Y2grd
	 gzJkT4BcUhxVCp6exDvhBdZBVEOseaqy4EyazWhaR/Qb1ZXhSOry4T0AkhZLmisOIS
	 uwWRZCfLpzU/7OUSN+EP9nUVXZ7t5uzJXwpq6QuGtEhocm/F1PbNBCqdyopLtw8Iuc
	 C8w2YNfhK58dvln44J9C8yVuI7sdpHs8NjBAftebTtCW2hoyZ9NLCPImXP4ni36LqW
	 32zkM122NOSjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B01C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727995359.19509.14985707963652432621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b786547790ac1c18fbd0fdb4bdc78f506707101cb0cd01773e49676acc2a5c
Date: Sun, 19 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737279953

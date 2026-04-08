Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AEA370D6E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775631934; cv=none; b=s65HP3QUu7wzdb7ksRIjy01o0NUl0G9CjJWv341kLSmxLlDDVgohrRyNECIkmHnM4jXbdkRagBKfBtOJqp+XiLueANhb+hiaUNAUQ1Oprz5V5rceOlgT9VYJH2opuA/Q1VqXWd3Sp0fn6hoseUTJS7MXS4ppy0X5dIocaqa3F/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775631934; c=relaxed/simple;
	bh=nmAHtqkblRaa0TdUXVrGVd2KY9LXj5L3ho0Yox2hzRU=;
	h=To:Subject:From:Message-Id:Date; b=AkPA3xcltqvbJQ0v16hZvOmFCGKVlMO9wpCIB2eyvB2YEyFSMRB+vXQknAVvmeT2AfbC1IbTfCSBT3gqzLGqs9+GEQFTH42I6hF90gwz62+JFtuNB88eMf0X2i/wvg/EI1nZuFwSemLw1zonyamSlH9uBvYZTbA2lOxq0Qkv+Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ9e4JzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ9e4JzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D010BC2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775631933;
	bh=nmAHtqkblRaa0TdUXVrGVd2KY9LXj5L3ho0Yox2hzRU=;
	h=To:Subject:From:Date:From;
	b=nZ9e4JzSghp8uHQ9uqMqwl2bzSTQaRj1oYCS87lmxT+dsuWSwoQefQYIlxbpNf5DX
	 +E9nxl3vxMCvTrDhNFuwS+YDfMM3ewv+Z1UI/oFN+Uhr/onfF8seZBb5vCLlozn0bk
	 own4NeaGfs1KFHCYJULaVsH6PDZTZmI2uxbrxHHG5F8PWz34o+tFEox4OZ8F11TNhJ
	 4h0iK26bfBdB6LX8D0qRDhITQWM4U9Od3f2ilMcUvMkjZaWG31l4enlQhfuvxpL0KK
	 vHVqy/kzyAqbbInCVBwyfTN9FSc4IXkYfZ+72k8Tl4YYY2wcfptbK5srvuFJrhG4UC
	 S9tfUshNw4KXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA90BFD5F75
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563193375.581.8909726337458582591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2595befc7b88dcb24ef3d01739e68cd7cff0ec9ed8afd4f8e54709f18b2f3e58
Date: Wed, 08 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775631933

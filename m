Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F0915855C
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732133154; cv=none; b=II/nAIH9bcnX1EGIQE36m+ivb/R4yw5h6B/zYTpPEvUYBt7Khv4DPBnvlgoAgWoQuW+0VTplmUfeosgn1TYnE1TdrN7MFMZGxnWjD1UISx57kMp7pGZVEF+HZ2tPNtsO5Sx7WShQNIFljpRcVZlSc6No1yW1mGPtRbbUcN2QTyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732133154; c=relaxed/simple;
	bh=5fXT9om5gKLlVzIHPeiecZXnVkgEdc66PtYqypXIN5U=;
	h=To:Subject:From:Message-Id:Date; b=cr+0rQ3sXk9QNFt1yDRjvOeAJcPEEGwKnJrODhRpFa7iLeRag1dx0ZjixhF2Zk+jeuAz/miyN/3yoyoOWSG3j4OgZvPwJEfAEOXdNIXZwjFTL+UIU/+r03rBN/DL67mWx4D95gtdo/y4GoiReEHJdB8ciObwQ3AJ2FXnRkqo2Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etQemiSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etQemiSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7697C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732133153;
	bh=5fXT9om5gKLlVzIHPeiecZXnVkgEdc66PtYqypXIN5U=;
	h=To:Subject:From:Date:From;
	b=etQemiSmluFjAXTAve4o4+TutXwvXuOBytBzI8jZieKyT9lKxyvNML3cr6J5RpKxN
	 h+YhbZKQ5r5gs7rkNnBGbePUHyw3/O5o7DSoY5oiAfEPHxiJDl8HUeRiI4b8Ac9hxX
	 L2Ib2jUjQ849xXUdfAevGY3jJGMOssVNzXRTQ1baLZlngKMQesFOROUm6hGuNv6Xys
	 86kYtCNGAPH4Faq1lksFdNIF0a80w40n+nXnkN+YT3Cbo3ggpvkwHevGpAGkAYfXPc
	 sKLFqcry/qFGprz7Fvt72QlTWzyXc8e5zNBhd0Yo5d0u0yfS3smguz4Oe3VPgxgmSq
	 p210MYmpm+lAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C61D743D1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213315360.11255.12727317586341050781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657fd879e58037d885115dcc179bd5cc164f36712d1e59841345f2fa8c65ec43
Date: Wed, 20 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732133153

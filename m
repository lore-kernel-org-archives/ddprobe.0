Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662FA492E35
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791467434; cv=none; b=TQ1XvBhOINgLYSUlFbam+hOGG+zzOpJB5efMoV0OxuHXKaXU5YEBHialsmWfJ4h4JD2cmf+HJ70aQSiD1XdBPM6wPc7/tbvwVB2dNYB4URGitQTC1DvNE2AkV1vE1sNGd7vIM+KV4ioedCNTpVl8p4vxZnyhSSW/UJqVjjwnZmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791467434; c=relaxed/simple;
	bh=XibP/9p6h76lcjOvJYhB8tpyzWTCWvn8pAlA086ThZE=;
	h=To:Subject:From:Message-Id:Date; b=eNFunHxbdw3sXOGCWlQXXVBjatPJ7sDa76OUSiW/xsyDsPkbkGsSE4KhnoPQ/qLi433utO0ffZdnErohITtqKIdHQZE1KHM6EcG8gpux4DpeWYIytuvgYbqJc7QflOxiM3Aw7o833NqgXENBiuSlFuJhBWyggfYDDya2Pe9TCk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF35NoP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF35NoP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05F3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791467433;
	bh=XibP/9p6h76lcjOvJYhB8tpyzWTCWvn8pAlA086ThZE=;
	h=To:Subject:From:Date:From;
	b=qF35NoP9NZSjSQHC3Mfd/fDDdwWxFHTdkrJEW3cEAKC9sSiDzK7giQCZoMYAXAF0b
	 NNh0owIptuXnAH8dK4YDvASeFuRoRMhRAA5eUYJvwb55l9e5tAi84Az+G+h8S7B3Zj
	 VFk9syB7ziD/bwEZx+dbVZbEqBNtUfJVJO3//js89skmLqOQi+VBFJO/nr3PHCMYA5
	 NhTU3LNH6Wzs1Al8QPmQigqMPsKuqXDxNku/l2bgzoSrIiSWGIl0RBJlfLEctkzbod
	 OCIn+XFPB0fK29vlyCC/mu/GqceXluHolgD9dADO4zqSPkp+kGpGsgLcbhve+/fDf+
	 SPZ+YSS6RaMTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C7CCA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146743368.6346.17219564977992943068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9124b7c817b7c79752bd8bc13d512f3e6f120714d57f6e189c65f51083a33034
Date: Thu, 08 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791467433

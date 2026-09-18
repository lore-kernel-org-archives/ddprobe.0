Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6993C1D72
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789702834; cv=none; b=FUfB+45kSlbvlRdAWiwVXl07j31xBLAQLGKuI04Lldqvk3Toi3Q0SoW7S/URozDhny5HJe4jH7kp9eCjnE08UBjzDqm37GE0+veZ4/4Eckp3RcpMA+BC9JZIqDc4uXNXLVu7vRfrOfwgZcflDvY0KXMmGzPguG+EUYUSBDHpHOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789702834; c=relaxed/simple;
	bh=pC1TYX0OkEiqWZvBvFg7rhELeOXhXM996Uiy03lHwes=;
	h=To:Subject:From:Message-Id:Date; b=jC7u1BF1Bl8Ip8UN6nrlqz7JQsmWF3pVdQnl1hy44rNv/6Gkmti+r5h4wuQ/VbI3Ba9NcQl69JsvQz6cKB7Wme8h+XRMnWGfZjeuUc4UEWjk4+BAwPjebQqjle/jhYR66Zsa3AdNeZS/t3JRzdwJI/jQXxMhHDOAoVHSnBIUSag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOnb5Nfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOnb5Nfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE26C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789702833;
	bh=pC1TYX0OkEiqWZvBvFg7rhELeOXhXM996Uiy03lHwes=;
	h=To:Subject:From:Date:From;
	b=VOnb5NfxQZAJVRl44vvAw9j90RXiMkJWiIEbxeZh99oiN/uZ8m5LRSi43a711/koh
	 Skfaxn7MlJ3gR6T5ug48RWKPBCE+cvN+819EujITOlpg3GkmNchwhsxToBdEIOwMt3
	 zxLGXziM5r10zdThtB8UcPb84izFA8qufQpDgyCjY/Gwki98bo9hYsdddztoNh9WSW
	 RSDRmUbnRfcxKll4s2awyx15aSA8zq3U/WdMbLqwj7GvnCTfu1dUgDzNEmJAp8u2mP
	 ad6Mh5haB7xxoBe/VEgmSKc6Aru41JqrN1a/uVsSmG0i1KugKetRC+SPH7BExvhE97
	 Upms8lYD52n2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C83C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970283373.29985.14156998897883886427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5743a4e81cdacf55737a58d71c24b0207e4ed16649e07e250287c954760f00be
Date: Fri, 18 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789702833

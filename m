Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331CB38C
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727142354; cv=none; b=ob8OcjdPZalCoIar4+AgvfKPkL+npcI2za6Br3dZ0JOT7NtYmmSzCo9jOHBYwJ0+RgDOHEgrdB1vlJI6x3vtuEmSbmp07UevKo7UIXBFJgL0x+sAM3UrPTd4AZ/k5juLu0klFRW1gmaRX/lqixl5RK/JolCr0Q49hcsy5bn1sWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727142354; c=relaxed/simple;
	bh=kI24rpXPofGLWVuJ1jCJDQXWXBZNvDllxmK9gV7O49o=;
	h=To:Subject:From:Message-Id:Date; b=IHeW/rEkqkHASPtC5/E/rSRI/eZ2puGRE6g5xqlHufYR90kIZyY0JpLYT0uUNE6E51SzVug9dEqSQE+RzrTMHJ2PjgWO3l4+SoMgx30AFKH0gl6fEw0RBh7X9W4I+3EUGbhNNqXejnMOfqtEa7ccd+9Rkj8oyAS1vI48LRVGFUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3Ttxeqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3Ttxeqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8ECC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727142353;
	bh=kI24rpXPofGLWVuJ1jCJDQXWXBZNvDllxmK9gV7O49o=;
	h=To:Subject:From:Date:From;
	b=G3TtxeqeoeIfh4EIC+v8PNJv5xmb2sao1Hc1ou9q6qYfUylUUlbxcUO16ChFEOMzo
	 XsKE3XOx+R0v9Bzddxvbif9Li06gi+L8E9adnIWR0Ah5668FXIBS3TBPWAqoX1IX5e
	 2xv7rrP5RTvXWtHa2hIY6ZKMEiJAJ4zyg94aXIOfdsYp/xsNlUoIlFksAatJ/vAILY
	 eA17tHFa1Lk5C5ArpreKOHTpGU4oq3Opa5Aj843ShxUu2bc97iXIkPwDwHK8jYN56g
	 6O+yRxmx85ZaPjRCRoFveNYyYQW3KdyxsQHoBMN4BTgdD+kE7rzEzZ1Ldiz+f7HA1c
	 BiclNT88hD0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3148CF9C73
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172714235363.13633.16710205536532243417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412cb07de18ecacf1933d59ae4cd5970ddbbff9947b0ca9732222dd9b44dc316
Date: Tue, 24 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727142353

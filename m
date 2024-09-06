Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DCA1B85D5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725648354; cv=none; b=fdGO7tG1NgYC8hB9IN9Ycubd0Ppp9LBRNtGCg4KGfeywSFLAT3JAmBGz+x+bJqJBKVw9KM+LPMlc5MFhuvmNqBHZblukxZUOxOrBJeneaHyteK5tLsAIRIG8boF6xD4schrpz8zVCqQZlMdypw2rQkJd+EPv3mdeU0r629Rzfbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725648354; c=relaxed/simple;
	bh=LlPWdawSWOuio8MFKP0y6BkuCNSO39a/KuANK2zWvAk=;
	h=To:Subject:From:Message-Id:Date; b=ZHDIqgkIWs1ixwplJo8Q9/W2ToYdrOIZudzoWuQK+Uf/c2QY7unbkegT24MUW6a5dz8pyXtoQFg4MEJeypwuP3T9HUd4bktFyc6D5nKW50fkzg8aHe3P78TQJiPDuCu4q89kpY2bJZ/SyMe47UiyCsvRlkz36xaRt9hLS3Gx0OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFujCTOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFujCTOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB365C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725648353;
	bh=LlPWdawSWOuio8MFKP0y6BkuCNSO39a/KuANK2zWvAk=;
	h=To:Subject:From:Date:From;
	b=iFujCTObk9WqInKRW8S2+eRXvIMtrx2zAWA8e/t0VfFB2iBOnA2cEYNYlkTbQxe5r
	 ubxzV/W6PKL5RZsyKB15ZI8vZit0f4ZGupw1gC3G4lnkfCWd1BqChKHSbo0VUiC1Zi
	 0oKwoqu0XTLEHZ91FLOBdG9SWtmctybhFbvu93McsRhT1+0V+LQ8ee0wxLAB2O3MZh
	 OzjUc6+1x90b8xAil8y2NBls5YzTmzAv6GZrkyTOW0a78zQFwp+C6HcDbvG6uSLRE/
	 qfLq5+K4rQBkBFNKHkAOZ48xezgLDJNseGBR+9je2z1YB+LcAvBf28R74YXYQJNsEd
	 Xr9X6ef4s2gGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B2CE6FE41
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564835362.23068.15616253911862274639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e961b822edd661a6a736d0c1596e03637e030fa9680404907e3b682ca4a037
Date: Fri, 06 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725648353

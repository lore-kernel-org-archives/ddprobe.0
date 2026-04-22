Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10618277C81
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776896854; cv=none; b=ex80oDXoznUPU3N5sR9h06Po/jYqg1pmjdhPtfGD+vXhXRs2iGRPwSnNkdJ+77EFdRD3odlbx0ut792pjA8dGZgHENysODIkVaYcTfslylR6RqXdGzGeFcYC0gD7sGad7X4c/ZJR0F8vJX/IB/LLAv+mlX8NOJtnbuFpJJdYBy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776896854; c=relaxed/simple;
	bh=tyMxtdcO8thuhHMpwVNbhp00lyuZJnj/pZ+nzLbsizk=;
	h=To:Subject:From:Message-Id:Date; b=IebCrdAbYFhwgBOXiXKOvhI2r4GWNIc9YvUyhnFpLc2Wt9e+tvE1a5Pbo6pjKxzYi1UCEMxBnj49NLYjoweSSKgMV6NvyD6n1s31Hg7X7dLJZSir4T55FO84MQCwyCnBXst6fN5W696Ox6TVo0dMID1vZ9damJuD8iyRcTpxWFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTF1M1gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTF1M1gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C101AC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776896853;
	bh=tyMxtdcO8thuhHMpwVNbhp00lyuZJnj/pZ+nzLbsizk=;
	h=To:Subject:From:Date:From;
	b=XTF1M1gkVTGnVNQ1LB6eQLlq+X70DfMLxlIkF5laIrN7nGpRz+vevAhUlp8+d92Go
	 yjZ4V1xHDSBTPIu5zXizdXr4v8nbxoC4e3RTJU2Fkop3l3bf+Sci/91vsyI0EgtR4B
	 aGPcnkt1boppSeSZsSnQtmS92fx4b3pwhJ5xl7zuiG8dUKmJ+8qsXXRTu4Fo+OnyHe
	 EfnFtKFma38FYhFE0Q6OmPkwX0wC4o0OD3Oejx2JLcu1eZDEFvCwU4+jA1Pw0zcMNn
	 nQdj02pOuBWKbra584FEt3snR5HFyaEnDaNzwPDPRw9QDMUx3tb34r1ALrQV2t7m2R
	 VHdTLhXh6k5NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC882F9B5F3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689685368.9159.3679943377774439071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce39de9e1f75fe5132c1797b7c4d564a53f73ba97270da161c0684a738fc3b1c
Date: Wed, 22 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776896853

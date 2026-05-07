Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855202DFA2F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778188054; cv=none; b=cPmQZfpdv8W2rNPwRtK2Ogu5a6s/1j9+dQmOXRcbfZjpGP+SRiqHj+125r+1ty+qSfytqdjUgBUmKI/mfEbeXywWCjz3QVL2hOBbsrgmrfsOA8ckrH9qUCdm2yn3Eel3OVGiLgl0WNOzVP8cDlRq5zBdukkARP/yOfT0F8SOflE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778188054; c=relaxed/simple;
	bh=8bHl0scAJ8r5Ni16XjXXKJM8zQOxl5+j+sp0YyMi1cU=;
	h=To:Subject:From:Message-Id:Date; b=aWiKDmx3qfj2Byqllg8c8r4s1JVzcX9s7cUEF2+4x18eeiVnrlQChZMnO/Q3xDpok3pi+f8USRoaT8E8r/xc+Dcr4Q4KPmko5xLjsZ+vUUN41PxVOUacK7dlsOebrYNIeWj6Sr91uESbVHDRbwjhnWgmk+slXmL5k23JgsXJgfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSGNduTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSGNduTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8ABC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778188053;
	bh=8bHl0scAJ8r5Ni16XjXXKJM8zQOxl5+j+sp0YyMi1cU=;
	h=To:Subject:From:Date:From;
	b=iSGNduTrCKsov7LxNCm4ka+iEW/Ntp/dP2Cg1T1b3JUpQrI0dXBMZPtIenaku9EgZ
	 4XsnJBL+5YSGO9kvLvdanPLA/pP+nkvYIUq68tKqLnAH4vvKLH3Xz6AclDfUVUkrE1
	 wQlhelOGTsQPyxBY8rvjMzeMkB+EcdNot/rjGcym4UUpA7FpeypTxTVbC3LdD1jjaH
	 7aPrWJlUFxc6OQxYEdvpcYmw1x2QUwx8vgIDfw1PPy+WS5xhH2EB8NI5m+cVqBefQo
	 7jcWLjJ14XHAJKGpmrdh/79PCuwX7Mza82ifSstCpLifL9dmM/Tvz164azoAvuIahS
	 lcW6J8nFPkwQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB968CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818805369.31515.13700491797298243717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d24793f032988c2bf13bdc7a8208cb82bfc768b0ce76b9aee9cef7a4b2dd850
Date: Thu, 07 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778188053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3302882D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776833854; cv=none; b=T1xY9gBgK6Liq9sr7Fn2dF5aeiKHrCsQZZqrr6ZnTb+m5Ur4vzlhEHHEIeRYmYgYLThXOKN5+iDP/6NLR1NJc4Ztr5+BQVRp3iSZAp0/lv5OAQdmJnliWAI1IxGvwS496NMyPxINVF0OGXQG3+auE/oADBy5w6zevvxefPKLmJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776833854; c=relaxed/simple;
	bh=A4EhX8saiSiF24+IkPU7ybqLB7wYX1VFmtNKa3FLmVY=;
	h=To:Subject:From:Message-Id:Date; b=VE6AZXvQz6aqGrB/hrKZNwaMFYWMAHbLWi/w/6pV0M8eG6MKsliDQ1mHecAVK7bTDUJqJsDTD8mvssUEmyXvSbOq5JLbAYGDD/yA0EuIyadEblkF5G/WodBnIt8zjvGnFa57PwA8Hkw7JqPhOuQlD6cmoZiAmQFFfGaxRWQ2xRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMsdDq3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMsdDq3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD029C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776833853;
	bh=A4EhX8saiSiF24+IkPU7ybqLB7wYX1VFmtNKa3FLmVY=;
	h=To:Subject:From:Date:From;
	b=rMsdDq3tCDyHDBj5LveSo8ajQC+O0ll53jFGoLd1im+lYI1qwx6R+hwNiKACvrhl+
	 DeTUXdyHMX+Kix5idoQ2TTu3NAFxuOpHDpvrH23vrakyhdNx7jESuFQGmvxBA/Ap2v
	 Mh0Kmi5vNXwMxJiQHcEfSPPowH+IVFVLJwqHGYRA5+WRxfmcEwyYTpok1xJc3ga+c4
	 AlE2NMrWXHZJ+u/TDVCcw4KCCq2mcVxGtOxP2y6iq/W6ouJa8lsPCV9Ly3qO+5Vg/V
	 scE64y6XQ6QUnIde88umSITU3WxCUsBQPf5JzcJ2rVP7vvH8dz554ui5Ytr8S7eeEJ
	 fermFk7yH0KDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE46FF94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683385368.10228.808812551648247846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8cba8334b1b87fa99fc5d0cd6161f350a1fb0cc2e23ac9e391d04258d5a5fe
Date: Wed, 22 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776833853

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5851922A1D4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782629314; cv=none; b=pVonmMF3pFoeZPguqB3VYO0Kkv+THwOzoWRBQaf7DH6x/a6tWZzi5IACjvBxz3DPX0fRFt2QjBgpN8Dnnn2lTU3vEIWXiwQZ41Ezp8KWNqI6h+1kEmif3ebRJQZlbGoFXiunHUTD9krI83WsixVy6NreH/4f3YNd62+eiPNO62M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782629314; c=relaxed/simple;
	bh=p+GymK0A8Bt5AboL56oXFxGY1BGQWkm8MBWrP2OouMk=;
	h=To:Subject:From:Message-Id:Date; b=bDRLr585pjoOFTP3k7tHtCXufkN352h1/F8TSxnqysg4tTVXV05EPcBOE+sY+33ko5cYnIB0O2LR0rEDB8ACxNR5UU/XzsHf8SXkGRVqoloEiBq71cDTSKjKDM9vpCAPq9QifuRe5dZ5d23NNl9bolnbrYvTVIM/obxIhZ36HP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkzMb341; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkzMb341"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6D2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782629313;
	bh=p+GymK0A8Bt5AboL56oXFxGY1BGQWkm8MBWrP2OouMk=;
	h=To:Subject:From:Date:From;
	b=jkzMb341pEKStQ07vEB2iwEUB7K+KHjz9M11braq8SAv0lHN122Alz/OcxJWxDUTe
	 7VXmKE7coTTpQ/ovvrRadkYdhpHpXNCtaF/xWy9uFFkyx/PwPY2kUoOaQYDS0QfDkZ
	 cd9aqvyG9cxbDtJEpqwM+Z/cpBErKYtvNYYM/YOJtMSoDKfSXQHoukOBto1tai9+lv
	 ljFPQKVld5ppYW5lSdL85iZbW8wax44QF248VZmnR6Qf76gbeqtohHASmIZOrlweAq
	 dGha1ykLviU/jd3F/dBaWugiJk3oGwxI1GSUnq3TATAE6E5y+BnhqmwIE8HdHkAB+Z
	 JfWNFyxAMcBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2F7C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262931369.23824.18202270347272780162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f6a26b0ab7f903ade0640316c816a9e1ee241177c7b6d2dbab8d6c7d28b7b3
Date: Sun, 28 Jun 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782629313

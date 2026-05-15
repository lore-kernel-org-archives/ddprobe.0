Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206D0362149
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778812234; cv=none; b=FnljwTomVe+ispwoivToFJBecyMw026+1KmDNTpGfbw17KvDF9pMbnNjtFRHstRrfg5Yl9Vm47tyRMU6s31vYNV+I/fquBYEQ+LYZUeqrwHwBpD3pbRlJiJRz5NoxtYSGs/L52WYi6y4tum1Y2TdP3WKXM+gbe/sB/YrcTnTZXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778812234; c=relaxed/simple;
	bh=qlLnOZSW9cJRqk9cwgv2tdho8tieqbv9yghTMzh7+jg=;
	h=To:Subject:From:Message-Id:Date; b=D3syVmjw8YnzxiKVtQCU2LuAwf3U8vfaqfQ0vmDt8J9PIzVTZXV+tg+Z7aBH4AjQOEpXBGWAhZVChP+QbDqj4TegBg/5SSJ41mCEfJ2lb+2O8/OuxkKzyqrJmREtT9YCsNikJpogrmdCapjLtiaeggPijj6KMjSl0mu8JBC6ZOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnB4EnCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnB4EnCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC35C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778812233;
	bh=qlLnOZSW9cJRqk9cwgv2tdho8tieqbv9yghTMzh7+jg=;
	h=To:Subject:From:Date:From;
	b=GnB4EnCy2s4/6CXYqYI3GaW5Cc0245V9C18uFj9fkBmPqqxdye/4pWGzeJ9oe/gXX
	 xZ89zd9b0uyUAi/apxZfCzaHFU2DAuKuCWEBaR+JUIFzR32AH1Lmb6ItUn1YNuwRyb
	 AANqMdx4Hg/QldfGCmpdHlgLj86BU0TRd04EMK/fcmRqYfDeA/0ct0/0hmAyNafGIa
	 sARhKsjn+wL/B5Q+Oa3/IMR5+sJ5/ogrniYoJsAIYgjFpvj6eaA65IHXbmfd0p+7Kw
	 HYAti3fz95OzxV5BYOfYUbJ77o1ehklYpdIdwYJin/UxAY6pQQ3yBK1r2KYyVFBC12
	 fz3kbvu0RvNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE29ECD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881223370.17670.12982295956989110143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6983036de24615189535e2e98f8d9a0c9d2f0287fc94aa40c1c3c99f0be1e93
Date: Fri, 15 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778812233

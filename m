Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6071B808
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779133834; cv=none; b=kOONf/pJp/UdOD6rf2uWfQyYfQlAzoEl3coyZVntmnI1U3etlEpiwvBrL7bzIktQkR/yVO18YIEB80mdiUoeBwtpT2uJundyVDqp/t2mLe7KC0rtgmhLnkIKPgRQVlxdTfwT+bxV/owmaHfoNmj5FGRRzkzsYTzcf6DRlEnIzjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779133834; c=relaxed/simple;
	bh=HIlGZXqmU1n/wBR1pp0lp8JqrjdrYNtuly+XIsWc+Po=;
	h=To:Subject:From:Message-Id:Date; b=XBHUd5Bf7bE6QELE4a6y+0J8MQ1EEgwS4IwtUQBamCKEhUDnYaMo20siP6zYvWahXVgOvYofbCNJ5xqi8mO6stQ3B0au91mqFgyRvDsXIIeyLzUp2xleRd99W5EHuv95C5mCeawqTA1pOaVD47Ye9p3LZ7PoMeOVkt0ufg7/YEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmSPKf4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmSPKf4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0196C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779133833;
	bh=HIlGZXqmU1n/wBR1pp0lp8JqrjdrYNtuly+XIsWc+Po=;
	h=To:Subject:From:Date:From;
	b=YmSPKf4ZgcixaXK9PCxQOUVbS0scFwT0xgAvzkHJIvY6Ug80Fx04H1Fh1krNCqMj3
	 Jxp++3QzWrkw+yyrcGF/pCvxioK9/Qdwb2Xfep2vMuI0hkjn06D9KhZiiotMVWfCaa
	 mIIm64mFQJp5JR1evohCqG+wUtJQMWNJYcBuHQ/pZBHA6m1CLokadXTcK7QWHgn2FW
	 aU1FcdxiS28FKav4P4CdzMhWkJ8v8mFGjqH7sjV+E9JcwlWUnyKC6Dvha0LZZ9RE3V
	 v0X7bvla7ZR/s1ayS9qSgg4zbUqDOnVH2S0O0e4koKzAxx4/r2fJUgxPZjfKb36evH
	 5BrtOX0zIdyew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB10CCD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913383369.25508.4865956066135167907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05e796eb70f52b5e04535f28138cec4939c4efd4dd52b863e5573a7265a6c51
Date: Mon, 18 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779133833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB4047F770
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786491634; cv=none; b=PmWmpfL0fIGdwYaqYLDi6REnLRb91yqvRvccYr1+IBJgr7WEw2T04lHYiDxYu4K4iFTF2N/WnE/S0m1Pj4IB4Y3Br93favTMub/Vy+soaFYsTNIqTZ+tZrJTs3761JhFzCJji4uAN+oYQPI6xPBczAZlY5t25suHlLRkeI9E49U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786491634; c=relaxed/simple;
	bh=CQDeJVrxDXmRSBn5JRWAMP2vDOORz9OZAnOKa9Y+sSU=;
	h=To:Subject:From:Message-Id:Date; b=HbEC5JZPJPtiOyllcpzNWFWU5FiYoIYt991gtEg5o7u8tEFEV74uD3orj6dleFY25JIMad5f5Q4FRZko2Z/VACHpYnGXoq8x360qWjTHRVsS8mDMNkB2oDt/PIH5TktneLB0CrbviI2n1EI3Iy07uQpOWA0lvZ1BtsDdGy9LELk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsOjtkkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsOjtkkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA43C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786491633;
	bh=CQDeJVrxDXmRSBn5JRWAMP2vDOORz9OZAnOKa9Y+sSU=;
	h=To:Subject:From:Date:From;
	b=QsOjtkklpCTa/IKULr/v9cn++g75J0w1lcIybRSd1gUczeAhZtpP+nQdQ3no/lLDh
	 Ru3b4t6hmxtJ0QWcnIo3JkM+IlOzzEVLMQ2wc6cruF9mPDbavOl1GnPRwHJH6vzgGP
	 ulr72Qq/XlvxbyCrczDen7QSBbrfGvt4T6l02KFn8mMVYqgIKwkfTchhW4h0Rcq17Q
	 1qpLDSNysSgoM1tW+vbAQPBvpdda4fxLXEcp7H3JbTM3BNzfnsclzeysLUFV1wg2tg
	 uX8wSjmHv/jdssZAVeS9x+UR8otd/B0YKHVzCNAm5yfig3De72cXvclNLg0P3V2pye
	 59S28ui2bfDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EFCC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649163368.28414.17463291696748001462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60618a27a81f8f1a2e099e7c1c1f72432c484702ba9e302bdaeae58b60ade51
Date: Tue, 11 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786491633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CFE182D2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746606594; cv=none; b=G3V3+4nNPN7qF7gPy4mTs5VD6BowSwzk9wcx+AbuPoNK+2jUfsn3Dv4I8r6e6GSwK7I4KILXo6/KbEmApn87TGnSFiktB1I22EQMH/1Wr6bfi7CqMZ+BWUU3iw/XUdtDT+ZVCd5OAH+EKMUF+7QyAIlgLXlt69BaCed0o0IBnvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746606594; c=relaxed/simple;
	bh=3e+3te3YRY8plIFK9S12J8ofksIEGeglFrjwmJZyZas=;
	h=To:Subject:From:Message-Id:Date; b=TtaAY3Q1eYnquv0ct/kNhNGhS7ufsAdlDea1fj/cdC73jLm3ab4iimccf9/cIc6/AUVRFo9fLKEMydQtt6VxvRJBz3gGVxRx7uyZ5fX9crMGs5PeEQZl5EbIpmx1AzJWgDuEfohfl8BYKGn4YFh++UyC419Ix5YlgYlFJJ4bLCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+lMQ84x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+lMQ84x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A4DAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746606593;
	bh=3e+3te3YRY8plIFK9S12J8ofksIEGeglFrjwmJZyZas=;
	h=To:Subject:From:Date:From;
	b=G+lMQ84x5L864Gu64VfnqBv/rkNlDyUteD61qa87ZtKkemjD52o2JOgsedLbJQr3U
	 ZVSNI6uje26xM231HE0TROIRv4xEgynftB6a6OKObgCDKWkhPaxtWZOJBaj6DL6QaQ
	 RoaPsXPve4Fsij5WnrO3+86mc2ynnLlB95jYd+QF963JIVE1hyKPYmuSyiHOf9SB8i
	 uIe/0vg2PqE8rlAYtXIeuS/8e+XSobizVaasC7mj+H5ql6+sOS6IimGmXAOgJds/aA
	 KyPgEkn+mFrwhgEChrRKu4c4UYLPgT4uBHtHxezv1GrLFbWGRuZ3xzpQc3whPcJM6k
	 C2zZuFm1+wrRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D49DC3ABC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660659357.29721.10484281652645131393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b3cc31f73175f57e1fc4a8558951a910afc160a52219699f240694b8b7309d
Date: Wed, 07 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746606593

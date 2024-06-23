Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DD9181BBE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719156143; cv=none; b=VaCgN043M7lARac3TnQrelM07hYzogi+NBvn74jMkYZZD/bpz9XZzLVOgoaxIs5VWvHMbwYoBPkeJK82XAVrJnrimNgei2kI4nSniiQEVWfJPlEq/27wruRyorgz17oOjxfLrY7EN0Tad4Zj+lWoVvW+/iKQ8KEMkmBCH9sP5lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719156143; c=relaxed/simple;
	bh=SEBX7J0Fc8oOBSfhH5A70NeM4ttt4xk8F98CktLJIxs=;
	h=To:Subject:From:Message-Id:Date; b=eBuP2vrZycCFYZMwJAVSdZfrov+SnCG/AqUlAV4XgbMjZHh12XDMlCK3cJR/GjxC5hA7anHe6tWCMBaho9Vq+f2l4Y3XqGFEnZgLAFo0QYF/gtiZE06HDrjUnMvJNGL6A0C/PK3Y31US6EXIMvlkcgGsyAlUAw1QvK+HkfiAPp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvJsdctf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvJsdctf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E494AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719156142;
	bh=SEBX7J0Fc8oOBSfhH5A70NeM4ttt4xk8F98CktLJIxs=;
	h=To:Subject:From:Date:From;
	b=gvJsdctfdqnKj+t6B1LVH45kFa+xDvCTJIZbJA5z1Q2LAK2Q5bLAek08C1xeke2sf
	 uVVLIoEFMRSF4/Vw6qkIrEdZGY7DIkrMIO8SR+Qk4og8901GPKfHN529vgwWBDx0wS
	 ZWBxCixGeh80Xw2dSo95MSTNwPNKUXwk1CO+oBk007ztsB5AR1HrgVCYmUYJ+vMi9c
	 McllMJy7R71ep70YofnJTLYkCN7D5qgwoq2NyqPCzUn9elDh0nUxuX03Yf4ad2zCCg
	 aCoJPmZJ2sUiz9kFYjf0cEa6M2SKX4ybChypLijb/P5Qr6YDD5M41ofgz1rSNweCmk
	 v1l2ZSHqk6yVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6FBC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915614282.10642.9035036410622845788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b10dab0a8a9cc3cef9e60919944992d9db4f59a9ef76dd1d5c428717e54723
Date: Sun, 23 Jun 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719156142

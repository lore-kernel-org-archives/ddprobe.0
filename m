Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1274517A31C
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752571794; cv=none; b=gXzpf8cRR5v3MrsssdfIi7RK6FoCGARfcP1A0i0PjTKGah8+IC3QkAUx9xSOpnT60zFsfiuILhukp5L2PrcrVUi8/kDWlqjoaoIexHx9e0YHXDgEHiP1ZeB0RcCiv4uAyMx09PCi+BN2bGAtLW7dJXs/glwvpzKyDwBpi9xEi5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752571794; c=relaxed/simple;
	bh=iIVnN0KNjjdOkhUTEk6LJWgG4PKEFb34nIICKAmbWns=;
	h=To:Subject:From:Message-Id:Date; b=CaCX7WvKBor7mVOeGEEsBLXVw0XeLTOjP7rkuh5sVFu7bKLLBAQ7ob717E13oLWQLqLR6lVNP0cCxHQBURN1lgmEJggVtnYq0FR5te7KzCIofspuTr2htnJSzITJLxYyEjQKtsIkLORlQKcvNYPUOlsmO3u5Vg/LIwhtUoqXHro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S09rF1pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S09rF1pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99D79C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752571793;
	bh=iIVnN0KNjjdOkhUTEk6LJWgG4PKEFb34nIICKAmbWns=;
	h=To:Subject:From:Date:From;
	b=S09rF1pJJ35Y3LPmFuQEXRkWMqdaP638t4ML4aHRf4OF5V0ijyPnIGlEQMVCvJqNb
	 rjlGMA0pcZiW7sj7jJTzJAc1o5DxgLb6x29+Sz5XvYx5wjh7vsmZDammkFo1YFX+8y
	 ThUS3u4IB+QbkS4Dzh088rChmcmzL1fLNouAmi3rBBaCu2lgGCR3ia6uKM4CsOln6q
	 LFQ7p40lcBk7jSTe0VclRXZEclWIxLZvYaeXJkhEmjvyqIx7G7d0FQeEkVVypVdju5
	 s01bptC+atCLCmudfGRuBikwt3hGlpP+nq/d9dLZqM7cP7O8ymlpobLnSH0yBQdmj3
	 a9+ZrIa1REwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F3C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257179357.28361.5593295196565473105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d598f61b3b08c3deb40c57622196df7fb9e673c7e3ccefa0a168798822b964
Date: Tue, 15 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752571793

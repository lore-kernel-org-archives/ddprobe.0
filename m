Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30607433C4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745890194; cv=none; b=r2Ap3SaTR/ZngczcN1eeMJn/8uOX9ifMBjjD7Hqm7wUr5+OM2XwvvEcP1LY8xW/3w2R7nNCpXVhmAQv81iikeUXYyeQsOqEQ0bNX4U/O6w47nJ9y5FnWVm5z+yXO7lCo92qDuw1BbLqnto/aF/DRJYQ68cKTGnvbwVvKCuM6paE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745890194; c=relaxed/simple;
	bh=FH7PmJ6DXNA8aFRurnvBz5bLT0L1StnI/TRgnj1XEGM=;
	h=To:Subject:From:Message-Id:Date; b=ZlNLbyTedyi/gUerCAoJHfRR2es54AwhOoL2CEyac7fi3O/SUqU/H09Gjk2NeIZmMLThqqoGMFvAEHC38wvuq55G98MzOzec/g8SwhjNhkc5oiqIP+Sp/ua8JNIkbpSP/7miuqCYsK0ZsPUcwY+np5QGNGwZSirTeSPlFe44qdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgNwwA4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgNwwA4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745890193;
	bh=FH7PmJ6DXNA8aFRurnvBz5bLT0L1StnI/TRgnj1XEGM=;
	h=To:Subject:From:Date:From;
	b=BgNwwA4m7Bc4HuFjALiLTVCMwAFno6+kdU/DvztIMbIS/2U+zLDcT52q33srnPVyp
	 P2xVb8rlw6K18aRZFGzlKQ8tFD9KjyyPumHGkSuSX35+dEhMnN+aPV2ffAk8SnKBXe
	 h9hLRgnewz4MXkjGfgoG/lkWeYauWnPL88xFqFXofngTrf02Ch/ad3U2Wv+RMDmmCX
	 6XbJ94LOW5sdzjNddKmKNyxeFMUg/hBYEWNYttR6OUHiSvCRwAmOPm1ApIjs13H5bU
	 AQgFjr2LzDiZl9oBEfACYgvuug7cOKy1izrWEVLse9gYdwd68sZaWZaFjSWl2auuMo
	 ggowN3sngmqlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947DCC369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589019357.13091.9197154825842618171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7de5c2cb96efbbcc2476d0b0927537d275f520fda40fc0c6c75ff3e1e960a34
Date: Tue, 29 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745890193

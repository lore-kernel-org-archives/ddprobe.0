Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A43F2F3C05
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755086994; cv=none; b=c2zPE3TBlb7mEss83hlcGMzouhKJ3TeiatnBApSZVwkmP/qtRs8AIn/2qRs421800vYBcFKhRaZTbPKH/kZ30u8MaEykEtK1B6yAXbAnMbutQjru+e9S1vKFgBb5qeqRS4xJclYX4i/sinSxM181LaYoHEdFGOCwlgnVv+N287Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755086994; c=relaxed/simple;
	bh=kaeK5Vd304aL4oGRtiXP3r2WgcOhrwZR65ODLLrrOvc=;
	h=To:Subject:From:Message-Id:Date; b=Pk/qRlX4mrqlr6bjs18W4pMA/YWidjqW6g72/Wzne7qshDSyLCKP85phhkFMmVWerNkM7tfRm5qrKepM/gf7GNgX8HJLEYKcNE8xJDFipSkJ/3/27v/pohV9fgW9ytSTPnnRLR9tKCK7nN8ImmrpBjIzT6PgI5OrlRKkQ5b+DMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acaKv/UP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acaKv/UP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A278FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755086993;
	bh=kaeK5Vd304aL4oGRtiXP3r2WgcOhrwZR65ODLLrrOvc=;
	h=To:Subject:From:Date:From;
	b=acaKv/UP3PllfRwyVrTvTqiguJaTIfXn0eg3HLrTJQhEPOei9weejUhTp/NfBBFfj
	 55uvnzkXpXK8Ic1QadiZsUNrfMbGQuea39LMKtdZyDxVGOMn64PTli8jWyaxyOwB2Y
	 f3RYyv8WXKAZgZEn3EWTNWtR9Kpf6ladKbY9YiqDgfPD5358NNrfvHqTUcLxr51cLW
	 x7b3JslCOPo7C/o4kcW2HsnGU+lgSFWYMFvBRVbv4hVhah1LbhuQKBalW373MpzL2i
	 ZYVmhMiisrRTCqkKlnSUolnuJY0D57ahFiPw0Y/dnnvWV106fMXewoRnlIcTiPPW0K
	 m5IWyWmHDZSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140BCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508699357.29621.4102692564674225512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb347bd5059ec3af4d627b6034670fcacc0b09d7993a5bd58fa7d0a78cb288d7
Date: Wed, 13 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755086993

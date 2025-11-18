Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA18299A94
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763457714; cv=none; b=rKJhqPHhzjBFTGIkR0Ss6Uz+1h3E6uz4fB/qNBAeAfL1plqXsKQThthsG7u6VnOVeGAIiEFsrLfnWiM5FkGKvuCH2d4HR4omp9uhLa1vpkSFuTqNuJdxJyYtUQFzMmOTbl/AnVaHwoTZ3JJtrtNmcBDC2kT7QucX3hHmj20DTU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763457714; c=relaxed/simple;
	bh=YRBvD/QVlKumfl/zUd8l8XjBZxyiM/xOmqAvH1QNrdI=;
	h=To:Subject:From:Message-Id:Date; b=J3lOeOlqXKuITprcLURRfWajKMiluf9sR/Dr1SEPdv02Xjlr385wYU+KJi1Iw7ZZirjTp4hVf9qWcTGRZbzb3mHTzuS5X4btucVJBbEhgAYa8vkSKTmLWQ9/xHgTVx0qDSU7WCymxYyh/x1PH4M9G2lN2HO3pbZSQP1LnocMj+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcjKl0Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcjKl0Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD11C116D0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763457713;
	bh=YRBvD/QVlKumfl/zUd8l8XjBZxyiM/xOmqAvH1QNrdI=;
	h=To:Subject:From:Date:From;
	b=HcjKl0YfR2OPS1g8T/2x0ExvF1So6K/s6JdVwcbLWF+/gwE39XjVDPL9yVHaZ7FQ1
	 wm72g490ANu4JSjAV17vmgVJvkkWHvUZdWnQVUMpovam8vgXgWaDp9H65sZOyy8KYQ
	 6NrIPKoDAKWFtxq1P0wIslNhr0VDqMtY4qvnKEkmS9nVVVQcIDXk2JECKPm0xM4amo
	 d1jEf9l9WXAdHDNaXgFcMrXtRaSVKE2CMyEltL85rDOrqfrD2CJU95TlOJbknOlArY
	 dgmBNazclMa+PX3JNEdpKl9sCz1BTSWfvMzAoYWiiQYEUeyxe/E1sV4d0WQKZsEc4C
	 Ei4Gt+17q5inQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9080ECED24D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345771358.2875.9557236131812561072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf6f0eb1eedfc10e0b59cf52b6a791980d52093cd1c25ed8b4fb5a7d69c0692
Date: Tue, 18 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763457713

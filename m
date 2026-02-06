Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE152FFF98
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770370434; cv=none; b=hNJl7R93s3fkwFskAkCv8zxIoi4sq72IY8js6ILpjuFfOxT1IqKsxv6s5dxWkFh8UIv7993WJHvf79ehsjA25uWjyVoaaQiS/cDe+y20oyiDd7pxV03TMnGznztjkQTwFPW2D+96s+nYHzelZi5wmTX3zimeYXzZxSGmZP3kPvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770370434; c=relaxed/simple;
	bh=cnzci0AUFyBCpmGUPDiGV9Do5UQyL/U7dpwIpYloZks=;
	h=To:Subject:From:Message-Id:Date; b=P2+oDM+IusMLegpbPK8Afkmr1MVgvk1UM/GVdqkwjcqt0o+8TwWOOaycEDHiV4A9QlsllF8ZRhHwTdGc8yc1PhX/ck3qCWg3PyYhf5zqmXuVXfVV0s/qjTC/89wXJbSH5lEAoKenZZRO060yS5P5r+ZLt1yvrVo9xyy/Aayv/9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNd1hzTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNd1hzTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBE4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770370433;
	bh=cnzci0AUFyBCpmGUPDiGV9Do5UQyL/U7dpwIpYloZks=;
	h=To:Subject:From:Date:From;
	b=KNd1hzTkY3w4JOMLlsrWASCn4c+W8fuksFFoUSx717T+1t/F586qA5xMbuFxQgLdd
	 kvoGY96/NYlrAFiqN2bcp31/NCjehmZK4vy6BZFNawgj0/AibH+A7IoHMnnWnhnFay
	 i/nsK0hnLWGYI0D3tei89Vz22d7KeoCSIc65m3391zxwhSbidxQu/iBOx26wBjd3MP
	 M4lXf8zKYdIawyMPsfvuMCFri5lG6pVb41SUtL7BCwzN777l7dtJQ/WnMniTzi8FA7
	 B3OhuTQO8wu59Io3rm5/+ffDQj1G2TpTakuD81lfno81cqP05v2b7Gw8UMS7Zj7smN
	 ieH5xQVGgKIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98124EB28FA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037043361.4776.15486041884637520399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62f64c0c483f26d750ddcf1dcbc162f8bceef7e5e10d58db9d21314f45c6a0b
Date: Fri, 06 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770370433

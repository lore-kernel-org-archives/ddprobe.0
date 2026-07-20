Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5708119049B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784508514; cv=none; b=exR3xQ5BXDrzXJtTBLExrL+kQWV4x1kaXssOuV2pXPimZ+FCQ9npKzG6d9DODn3nReL4+1yN7znoGay9tKhQr52v1xfzIjVGfhBivyAjq9CX+S6B6UrYX6nNqQp8ar51rOekBESF1d6o21GTfn5/NntvQPzXgP0YJHkcxIG3hXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784508514; c=relaxed/simple;
	bh=/mJWpazaHgatQrUPASQCo2Z043ETkpv88Ugom4Uf/pA=;
	h=To:Subject:From:Message-Id:Date; b=fqejpp3utn6ZAzaFRwvyp5bitiVaLxW5Y0CK1NoTY5Ecyx+lOQ5V+/0eOpU43fqNC2JOYqIvkmomnMZp5rLoE2lDwCiwtB/8jII3/7mEPfnRvT4K3x1xQvCJDuzgLosTlPBg6bvmgk2Kf37mIOpNovnuDfjnbFo5SYJq89MuE/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRSohIWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRSohIWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D915AC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784508513;
	bh=/mJWpazaHgatQrUPASQCo2Z043ETkpv88Ugom4Uf/pA=;
	h=To:Subject:From:Date:From;
	b=IRSohIWkPpMWg8EV1lrLTH1wB0DFVt5kB+NP/QS6i+4lHbcmyEqE1oxsjA8yjBarr
	 KkhgFNRPDPv40V94fV26Mm33iCkb6jafgezaSHk0r+JxYLQG6veHAxBuZMDvYAGH3u
	 PX6wDlH3I/Imha5YGKvIMwdN5r0r58xP8ocGUvZCEs8C9KoDYHkuek52rURClUt6VK
	 zSq7h55ehjV2k4c1o97F/3ukXOLiDV+TFjwg9AtxN5XH6SZ7tCDcAOmhFSAuinwpPF
	 /qfrWk3Skx25b2GX/KhgksyUeFOauv9cvmM560JWRhUqQHirpZvX3sT3o5FGh3O35X
	 9DmriYoNBTVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B065EC44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450851369.3027.1501195969872790702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e0b1e50ececd79035897a5caa12ec5c902c3954c695a106796aa9fba9ce750
Date: Mon, 20 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784508513

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB681E1C36
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756856394; cv=none; b=WjEORr81CYxMlFtnzmELHi+hdx8pzHcjFxFxYuazYMYaMmyE+eMulVTvNfWIPj55efrsMda1XK/SnqSlQBt+KaSesJrdPqmEPeUrhRcTCLTXbP7sW7EAcgGLAcfLiCg2348oOkVHuAlChHttBBqdPuJEKJnCouKwvNmZXwby8Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756856394; c=relaxed/simple;
	bh=wtJ/v3o96Zf/Vc0Muchv9ug26pnagIdrLxfOUxgbec8=;
	h=To:Subject:From:Message-Id:Date; b=GFEm3bLiUgOImBrZH/uwXhKaCccNly6ETCshHMhSdGK2L00qoCTiTJBACW4uIZ86qJaTRsoV+eJNmIwgy0VXA7VR1E3nTSpmH+SK8MdgR/rcbCsX6vy3Kh6q+JOK6Cz5tjHrQex4QwY3Hp1al3c2xP0V6NnIaPH8J4ETCnIOqkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDA9jP3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDA9jP3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756856393;
	bh=wtJ/v3o96Zf/Vc0Muchv9ug26pnagIdrLxfOUxgbec8=;
	h=To:Subject:From:Date:From;
	b=vDA9jP3czHN7QaXABUHbsgOryTlTaL/yIzT2gr6/rJH/gIuQW2KvFZBU1tUk/6e+H
	 8shTSeVPzaPorkLjZSTdt2d4DaUe82z6Dbd4cNXewgTrQp9Rz4Fe31hMJwiVjipPXq
	 wFubZYozDfosAkLwqf6ESN+wWU8a7Amj21MF4yOKcp/2ztzI4m7SlwNEht8YT9QaqO
	 BLfgJDji3jN7mg2n5r2ZberiMuazCWO0BBl04N88Auc0W4MN0y0LtQB3AebcFydaSU
	 JW4rN5i5HN9bQ2knt9vdXv0HCsS2s0npkg89RwpNJlYfyXTthf53GMEPBHIKMWkRK7
	 Naah9o81combg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A88CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685639357.1371.888803695150600570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94543bfaed62991410eeb4cf1f0c7bce6d43f0c97f3be74bff2d070d0e22deb
Date: Tue, 02 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756856393

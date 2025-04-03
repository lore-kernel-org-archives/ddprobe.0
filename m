Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583C019CC39
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743698994; cv=none; b=QHE0/47zgwXOFN1Q2/6jwhFM2oknxL0mf12+yDMmWKUbFqGkqtbs/fl6mv/Y/XRAFjPeQre0Cnbeam6xBEV+xUZZOwmk1CopjBq3nIeLv3bsXxJ1F2hwfi6G9WUbJv2PGYv867Ce9d0EjO9QKIHiJj2VwKd1n2haso9K4qZZmog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743698994; c=relaxed/simple;
	bh=02IU6jY8gmQvDhegmAW6gjSW0+AEVaAMXSP7IF1H6dU=;
	h=To:Subject:From:Message-Id:Date; b=NMZDC76Pm8IbK1A/ITLhaH6tZxoJXQlr4KFB3C7sdKPw+IlPYDRVQPNWppbDcUBVyd5VyvbNoKdE8mFjY8n70BNVrjeaZy0sDV6pKYWXi82v3C4oOPxRJJPzxph40mNwUvElJFfaf0YLJBwj3qkYxOr+Sq7oIxrhhzE/NSD4nBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDlFPScp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDlFPScp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1791C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743698993;
	bh=02IU6jY8gmQvDhegmAW6gjSW0+AEVaAMXSP7IF1H6dU=;
	h=To:Subject:From:Date:From;
	b=dDlFPScpvT6jN7EK3AKTP1QAi9p0EHIlyR3yDxCAbkowUKufvCocXrkGh06M7hskq
	 kAmm6/QmCGn44LyDBDoiBLXX2zjcjvn75VwEa1Rzrzbrv1zH6jfNyWRIqnU8UGMjME
	 0lBq1v6rM1noYs53tA475fuRDN9GMYYEogCCDF9qMYDIjFqGW0zafHDB81L3SK5JJt
	 Mm8bkpP/Qt1H1T89wx0fpnxr0aUbLs1X7zOUyvWKHmqMsAvhEhNj8bsMHnNUFdm/q/
	 Njilnp1BWa/ifsFzYiQM11TYD3tCWLKj55wXJVHoVpSWYZwDmYzJkN7ZTM8R3oP12w
	 GN6Z2aD6hXnZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94270C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369899359.30270.10064579833788638889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f3d7107bb8c7a07c035f1f85aec12ab7b3ef8e4f6c31f812a8ddc352615f36
Date: Thu, 03 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743698993

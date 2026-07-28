Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B6B25EF9C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785268834; cv=none; b=NxL+qwW6aO8Z0XtUPnZnBMfuphczjoVvuPZk3yBgl/AQ/xkTfVQGny1umx/Z5vd4zR/KO586ikyvV90BnyaEoCqnD1kBuS5KS3SuUVsOufE4Ief5MmdgUi6sZkrxA8pa561J/eJUtixI3z/e3AY+4KXAmlYC66/tUF6CEZ3TncM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785268834; c=relaxed/simple;
	bh=SPCGJtdzXO+cI5Ib6IZ5qyUAPYebwyiYbDW0UJf5Brg=;
	h=To:Subject:From:Message-Id:Date; b=EuTJJjpJ+I4U2LsEZ3ZITqg18oRP6kIzv9nf57a78iL19al3hDMpvLQdOVyuN1eICYNQt58FqAQO8y4kKOJ4Vtfve0pfEwumTdqYWpqJ9bPbFfvlmdcevRLcH29yX67Tol0uZXrfq3cR10wbMFbbKHin3510LnRjeYzyPqVuPgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhkMaiXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhkMaiXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D89C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785268833;
	bh=SPCGJtdzXO+cI5Ib6IZ5qyUAPYebwyiYbDW0UJf5Brg=;
	h=To:Subject:From:Date:From;
	b=YhkMaiXOYVUmTMpziTR4zj4xbHyqkIAjlUsqoo9ok7kKOaUHDQUk51TsKPXxmk/nb
	 8KSTWHw3SEEPAzmHTH/todmyMUZjZVLBolxfycT8Q9ZIEfBYXylIErLDdpzIC76aJo
	 XcgFo67eNIPgD2VfgG3VLHMY6I/8+3xefPb+Z4Xn5SBD3GTf0vxdt73TAwXpws3Mtf
	 ibWsMsO2H10CQylUzXSVK8zyodRr3REeS8Fx+ZCO2kCX3wpL8mU2wYWHjIfiUbLeRN
	 4PLioJt8nCNUdeROdqVc8KPlhx+cAJcYNvJF0J34cm8qrDYhoqcUBoNXDDNo3HGsZZ
	 Ubg9+CvCBNVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC478C54F52
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526883369.19636.3646364222253593578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a6786972ac62625e66de5803257eb7eaf0269f8ea624e880c62611e1f8180c
Date: Tue, 28 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785268833

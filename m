Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA3A23909C
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778721034; cv=none; b=Oyh4GKlMDat1GdTmFna6wjQuuFB8oCCuihUrqnHRMOW/AJVpwDiidwJrVW1Gz5nPlR51Y/GSjcBMQOGzUTYY3PNzKnjDzgRD/vScnh16xKslWTSOYnZWWS2eaJkdDkCmd2eADP4xyNbYO0HXmcJkAhoSOxPq6iXJEV6oIYcmBr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778721034; c=relaxed/simple;
	bh=zjWjR7D3lDRthhQzABpQFTkL7QcFQKWL5TwbsgbuO2I=;
	h=To:Subject:From:Message-Id:Date; b=hi4p3ZW1+rSiMJST1RTBpeNiz3t/279ZAYjWJqSB7djFUXOIQ+xu57iEw5RsK/NOlRhRGGvZoo50G8Lyzjr8Wp2h9Nhm3HZdfjkSYO7YBqqruM9MDaruX6sSsmGAndhwy+wg2BOyzzVyNFgJAaOjw8OA7mhjYu0LE3kp5DaU5cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLiDgpYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLiDgpYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C402BC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778721033;
	bh=zjWjR7D3lDRthhQzABpQFTkL7QcFQKWL5TwbsgbuO2I=;
	h=To:Subject:From:Date:From;
	b=SLiDgpYBrsI86GQ0IwL9FED9cnXXEWAzhWli0t2KWiSsp8mVSSqgxqnEoy3eMKe6l
	 n3uKzfwRRbHxD0X25hJdFgkDX0auR9OT7tHyZmuV2dPgqNCeqdJX+GRGnzZOPGrPrf
	 tzj3KA2K9yqOTTzgokghxL/rM9c1earR8j2+VEz23AGvcYx/ii70iUlGjK9ub1JE1V
	 t9e2SaUgfyNgHkgAAp5AdN71sr6i2Wrf+qx8kaNH3nYWPrO+9tFUZM6fKcq8l5jpkS
	 8xO701MrT9AXfCnJgTVDxK0CuI0YY0BtGHvnbx2n1wGni9YkeXUe2Rnj/qAo9G9FOx
	 87xk/dKoTNoSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FEDCD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872103369.14968.2335714089170374068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b54868952cec656b4d2fa9a433fcd0720d7613aca148daf1f1aee736de5d8a8
Date: Thu, 14 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778721033

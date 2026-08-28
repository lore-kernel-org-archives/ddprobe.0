Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5663919046E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787958034; cv=none; b=a3gY2d0S4BguToryDHy1RKO7+fP9ekEf0jU8e7LhG41Ap3ScslTkgkNIOiUaDv90p40keo562IZXGfb1vRQUW0SUzsJSOhlOW/7g+JvXAIofjh3jFH+TnJA3/ttuAD5HdX9fVdjKHtEDYj0gnclE3tQ+48EJ0j7Wy+HqKk6kW3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787958034; c=relaxed/simple;
	bh=GiyjRzIzVKaSUL0pcBq5q20yRuCULTz9tsrMiXdh+hc=;
	h=To:Subject:From:Message-Id:Date; b=j3YhUHwGD9eNC5fiMgAdqVwSCSOsAxnHITczThmZlNDPtvk74sR1vqCcUOTA2n5HoHuiN12RAO6GV2gZQsW9l80lZVT8GuWAh9Q91YJRf1CUkRtVvwbT9BfhTiiMVFqmwIJVipRr7whCFdmS2U7TefBkvB7beVWepEsiUWBefXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/CY5uO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/CY5uO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBABC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787958033;
	bh=GiyjRzIzVKaSUL0pcBq5q20yRuCULTz9tsrMiXdh+hc=;
	h=To:Subject:From:Date:From;
	b=Z/CY5uO4nn/+NCaQUGx+iFkRY0b0d9JufCwkIetfdfL5x0S/hhPhA3nIyvKWOHeDv
	 kZ2bqngAksTbeZDhfz2Q2oRGojxAGZ+hf8ec8ZztbdmCj1kuyfHUVV+QBHSBvy9QsX
	 w3DCk3R5BiaGHfFq7PZA1BntpW38ntUFaqh7CKROuVG/8ibAabeObZmn3P2dX9kG+Q
	 BM5tVlNQgiwC/whnpRY7D9spPnRPUxHXPPYcjlgdrZocAffRMDOnvUifKZRY3tEHJG
	 R+wzZi5rsnaTLUGUcKlXa1CBFmFuxGuUrv0J6YIo4y5UgNpY4Ab3/qqIPe4TyV9aCJ
	 NeElYKOiQHOGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7673C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795803374.25835.15293931794408532856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70a0991a75f0cb6b0f2aee496f732335905653acebf595cb7fc23c9a6859c4a
Date: Fri, 28 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787958033

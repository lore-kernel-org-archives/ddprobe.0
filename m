Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA81D63C4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744142394; cv=none; b=QsMbP7rMarFX5R3FmgoPElKzUHzgZ4JZ45o2vflcfTZU3n1/v68W/UTmRtThgmDzMTifSpEsXGJTkz8EkfbjJZuop/sXQa0s3hrD4dY7bwjRVOise/4XimC85cAG+ZPEZHn4GA4754d9Lf9nz3b1Kj1DYxmT+zMjf28e6nHrqgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744142394; c=relaxed/simple;
	bh=xPz9KKBfdkqtaysAqHoosfaXQw0hvVCTtAIsU1fYOyw=;
	h=To:Subject:From:Message-Id:Date; b=kKgMtHe/z3TR55vQW1Nns0P9WDsqVuIHwCzYLoyQ0QHE0tH00IA4V4f/TOm+30k+BRMTAhNloNSH3rlhvYax9IxOX7xFZDr0LhUvRp0N9HkGplAyCHRPF8d37XAqOkRVf6+DNA5U2KS84tEwApRK6zDhdYuvOiLccT78OUDyJ2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjhl6Bsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjhl6Bsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A16C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744142393;
	bh=xPz9KKBfdkqtaysAqHoosfaXQw0hvVCTtAIsU1fYOyw=;
	h=To:Subject:From:Date:From;
	b=kjhl6BsxynJsB3s2JXZDszxv8FdtiGYeFGQcKFbgR04Cqj4U35qDoH6H80GYqPayo
	 L1mxB2JrRk0ogTdI7SPY1fX3WzAT1DIbgbKqj71jJnoO8SrGKhtnX0JN4y0J/0dWHc
	 scTFGIphWpHRyH2vXPDGjBDKvg/Rs1Q8Bp9igx/DMnLcAXiFMrLlZNp0BQpbH6AbTp
	 bAI7SjIavkXi4AIeSm5ma2OIyw5yUWuzXe7R1rUkuGha8oMvKYunJ6qeWvXcFvTyD4
	 bAnvIpLPoiUHrKaL2XJyNY96KoAvIw2YmmbnKojYtrtDaKALK0EnCKQAq8kMY86xJa
	 Zq9RajSSzF/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB8FC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414239358.16446.11314689901377354128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2f23131668d0466a46f2e6aca66655113f2f3531f2fdfb28c818acbbcc0bd2
Date: Tue, 08 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744142393

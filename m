Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1531C2594B7
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752599994; cv=none; b=AXJWQ6IS8MU1HTGPeHg/uplwlA7VoyQqxIahoIZsrJ5qW6MCXVGzHIv3SPzlaUnNy5iHvuXItPe4VHIpCexgIHmEw4Kkq/GOK91Xyt9XwOlBPuxVFPGR9I85VgtQEJFJMjMl09oh8EWK74zfM4oW7xYRkSsp4+NGpQx+1N5THIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752599994; c=relaxed/simple;
	bh=mM9CXbdJA+US0aKkIbSHGUBxbvJteZOFFC5hQCxw1lQ=;
	h=To:Subject:From:Message-Id:Date; b=X717tzv5LUJEzu43G2DiftP/y+23YSbvbMFZ6fLXcyUneTgun5alimpOkf80Nv10jPK2/uWDuD41NbMqoGRQM5vn/xH11yUwlPXLieNZDnpnPerWibnGCkChgCg9JHyBbXLwJ4UjRUQcKV2DwXblcPK6q4IlYuVbFal+9jBhwlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRfB6IqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRfB6IqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1895C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752599993;
	bh=mM9CXbdJA+US0aKkIbSHGUBxbvJteZOFFC5hQCxw1lQ=;
	h=To:Subject:From:Date:From;
	b=vRfB6IqHhkHqt6ppLuaTVNZzjHsfKr5C4tahsAuCJ2PNJ9PGSSelSxJWfR6liDPG5
	 Zce7NKFpwKzSvqFmGgz15C2d+btbbSCfMhrqYR/OXxNp2CC7+Sptt8Dg9SRDL3Zf+7
	 M0BSGz5WBLEuPshAU+X1fk4j8MFpkcXCpiIVxC7z+6bzUca60oxxsUXfLCExqbbPQ0
	 GCRS4X1wAM82EdslqZWz7oX8iefeynRQ6vqPyje0HMXZkbczgMf5lInnGSrSTc8lZV
	 drwdKFeZQfgID3XkUBuDD2FpQTXb7sjerJ3idvyBQiVhdv++JzouzdllAn95WA2HSI
	 Cojjko5GCpwcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53CC83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259999357.19342.7520105062437400415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c707b5bb82c9eca93b29cd6c55023590f3c8bdf4e674538eec33847d18f23762
Date: Tue, 15 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752599993

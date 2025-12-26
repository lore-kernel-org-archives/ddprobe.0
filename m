Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F458298CB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766790234; cv=none; b=KeKIy9aRNCErT6MsmGx5K0fjCYj/9rAY8lKbrYX5HGe5sytqGW9gvzIjo0Q1bzHA2PruJuhC7KSCA4IKyBS/zya2RgbMFPi1HUnmzjS5c+/ozSSQyPMwuSC65pfqgeYcMl8mCJ5wSdqpCbMoc/SOLtvNf0VFsrq5KpB+d7nmi7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766790234; c=relaxed/simple;
	bh=45zujyJHgOeT9lY2PzPu3YUaJdgVDyeNUWG9UurqtVo=;
	h=To:Subject:From:Message-Id:Date; b=hcdJZyXSzBck6LYYBmWe20j6zrukbypooCeshSp9CtGuXYPBx5ycOCQhi8QlsJUe0D7kg1v9Mfr6kTbYZih/DJF+AXRTej9IMkn5g85URhzmmNTM0lJvvPDLro40eCvX8m+nkViq0Vsh236WUXsIF7E1ik61up8XzBabg94i+bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imvrkkeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imvrkkeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEB6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766790233;
	bh=45zujyJHgOeT9lY2PzPu3YUaJdgVDyeNUWG9UurqtVo=;
	h=To:Subject:From:Date:From;
	b=imvrkkeDyU+d6I8YrkqmhcMZdN/oZKcEZMh5dDXk8pUXhfmOeePoA3czAVPHIfnR5
	 otFY9Kn2Ez4D0cw5pwQ4ZUpfYaIf1Ho/VO+Cy4pn6zbliOXCy0JFuENBM51WZc1XVA
	 6pySoRO6VrRnYKPr5qW04CPbzn/FJ0hClbBKrlMJ807g2ADK755c2ZcgO7tVZCiGQH
	 9ovpmysUTCqQtywfcqr+4776HTnGwhMVUQCDq/ValI+cfFrnV+bVle3X29RrUh5Y6S
	 GNJDJn9fxW2OYlcao0zCxaruioYhShZYNdxeHzbFHUckr2EEw+1P/By8+3hyqWRl+6
	 pW0uoVrz5ZRhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9714DE8FDBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679023360.22352.4800786642141282068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b869031c08d9c62a7e17e32cf9c80a45a3329aa52ecc14eecda657e28e7b977c
Date: Fri, 26 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766790233

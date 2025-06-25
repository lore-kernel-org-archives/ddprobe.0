Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C3426158C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750859995; cv=none; b=G53VzNyrrubRA8ySYhso1qB3obdwH7MbqqK2oK1wUmbqQq3FcPxOOwa/rGfuQ1mnFBBJDViaitEpboItflQf/eP59sVUz60DMPUow8HO3rGDlFaD0u7dcfAdYpMYqnCLS/dQYo9efV+KsPU15efzLebRT3tcvrFDgIVTVap6/l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750859995; c=relaxed/simple;
	bh=ahX+/5H0K/L/Y18+Kyoheye/8na04yhQRGf1FI0FN1Y=;
	h=To:Subject:From:Message-Id:Date; b=D9W3zY56BbuZNHJCWV8O2VtFJeWLQTAUD/jKRPgplhpnrq4WV8FOJu5LRb9p5f63Gq30HcwJHiNCQ9MNktErV5PtXa6uv+hG9QK/qjiOlNd1lNIhReH90RuymYTu2QrbOUigijujtgZ7QsJ/xFwonibe96/46JLr7d3OTxfe7/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQtbmyuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQtbmyuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C763C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750859993;
	bh=ahX+/5H0K/L/Y18+Kyoheye/8na04yhQRGf1FI0FN1Y=;
	h=To:Subject:From:Date:From;
	b=sQtbmyuS9OXB1pFiVk0EnBtMpFVAhO2zSsaDBhitGuMMCsNVZa+mlEEwlzibBHrEc
	 Wt+4CsS7wcY5S1o4H6vHUBgdY4fabVNtSiAmUtv+7lejbOwzr6qpsGizfVZgGm6HkL
	 NDLv18+A0f2+8XSD26P9EgauS8szkNsQ6JYturRZl36L97y0/EtXZrypETbG4IFYH6
	 hLnFIJriOK/sqjbrsEKkpW2X7zxEe1Wc2RU7EmHiR6OP508KBVPGVTvrjqlhwNTm+Y
	 Wi7SJIdQPHwNe1xZ1+ddAgZnA4NtKPPb+k+e0wvwNQTw2WQGZ/Wuv9ZZxJl7zGYEDR
	 69uhEOq0v/Jqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F367C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085999357.31475.10099470311991053827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76c54353dde3951a122de020070c061cf826cf089bd95d883859e30bc83ad25
Date: Wed, 25 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750859993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEA831E853
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424494; cv=none; b=Rgh8PXVPhGYkpSlbORtQs9zuXI8+BnhfHY03x5UVXeTa+1VB6oRYZZYyID65pywFbLAN54JyckgyXv9X8kDN5y81wQxZEjXTYnj8PxFoa9xDF/hvnUbaL1Tx5Ir9Az0oNrIYtpJmVYA8xFhqm7rlYstCtOGK2P1S16+dCvPBKoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424494; c=relaxed/simple;
	bh=VLJgemN4DOgHepcUilNXvUqr45fWNtIqNihL044H/zw=;
	h=To:Subject:From:Message-Id:Date; b=qmaAweKixCz2RI8HH1hAuFhGpbKJIUW/9QfkhatBKcnXBNmEeyKlX5zrDUfLZnAnm0h6Vurihy5/r8OZvVdJdgRhS9VBKtExTngVtHlOVGE/Ts+tb7UpWc0geYYQ+xW9DdJlNArmslbRhSh3yYQAoHn1nPKOO3WFPoZ95wNOjK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpPvfXdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpPvfXdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D7C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773424493;
	bh=VLJgemN4DOgHepcUilNXvUqr45fWNtIqNihL044H/zw=;
	h=To:Subject:From:Date:From;
	b=jpPvfXdYWvC7h5IFuttnrnJy7aMRSXjpW0dmusqDmKKFeH3Jc2iWo0GHRqZXF7dK2
	 DzcBORjbBjkHlsKB+KFGONwSLSEUYUXMCB9PNeiZzn6d373n6zb4j9XtgzNy9aCJyu
	 QvZO7Wu9OhQZOek9FDak//yipz8ysLtmGzMaoxdqvuZ60DJPBkUACJGgfNnwhRJrnc
	 NLCf/8/+LtUCl4d3VgZ9FlF3uNr7QBIbs39flMr1U1xlW7hcar5L6gEqePAkLC1LI3
	 7vMVvYRpm8AFDcSPL4i4ZJx3CFCxjAbLk0ZX7DWmIyCjHzx6aP/ICHO7YHXu41aVZS
	 4J1IdBLC3+cxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E16107BCD0
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342449358.5802.1332554635309917118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9290c9700d0df55734fbe876cbb2a3e142cfb0051d37abba9f2fd068ca76f2a4
Date: Fri, 13 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773424493

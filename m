Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6B938F230
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786908034; cv=none; b=fmrZbo7xiZH14Z7w6KiDrQ9cjrMMFDBoTk1a1HpaMVzyvSMyWJo5XDF1Ag37H24gR8hOYRMMwSxiiUPQ6XA5x22Wl/GZ9hnyuKSa8cRz0EWQGENwmnEM44/wslfH5UcELABc1UbC9c96BQb4231rAnJ6DrSstUZuUj9wF3p49zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786908034; c=relaxed/simple;
	bh=a9jY5pfcxeZinpSWMcFe9tcgCUm13/PM6LwHhjb6Vms=;
	h=To:Subject:From:Message-Id:Date; b=LlxaXFMBbSI1axevH0T8nLXoiX917q8QlD0MGYsm1sIH1drNYY/1ZA/oXr8JuHchwHV9kWIceButdUK62Ckwv7VTOEGeh5YEAfwdzfu3HkkosVJT4jX2rkkg6sIRyJwOEnjUWw3RlhjQiSljWfADPRJAcDeGlXnyp0R6W9IWjdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbZbzq/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbZbzq/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC579C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786908033;
	bh=a9jY5pfcxeZinpSWMcFe9tcgCUm13/PM6LwHhjb6Vms=;
	h=To:Subject:From:Date:From;
	b=qbZbzq/zwsiKCo3V92HCmtQvnXxJd6bK6l/RQf7vNduzYVgj3nDFfr5ypQnCIEQiv
	 2JfCpfoC72ISSOjWUWZaBSV60I92L3i3ceHNy7Y7oBjIp48qhP5MB7gexocaHw/9CX
	 RXCPeFKoy7rUsjMv7tuY5FZ0NX6lu2/lm+KP/lQObYFU1vnD58DmMXEcCYXavhODe1
	 NtMhpBJYTnlndyzHktMQhv1JY4lNcOA2fnWmyowXMa6qMzeM89EQi6yDA/dT68MKSf
	 CZ+ZCBhu6MOpTUs02rkLjQyy0GdTk71mkm+pM68bnLf0U4vbHmlpnVUfAEgt8ndYdN
	 yS9b9Mg2nHY2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46DC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690803368.31648.5328026330137159560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b3c708c6fc22f99d40b7262861fa2b8c27659ac2c215f4eda96bfc69c93b12
Date: Sun, 16 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786908033

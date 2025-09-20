Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323C7266581
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758406794; cv=none; b=kA6PGJeQHRuBqP9S6N8qeYKoMGVqMpzmZ7o6LX10wpTmKsTYQTTI0MRcvVAXWqnt+dJzp22zl7hEVqZsF1CGH5yWWHtNiyG8+bclQqwykwFD9X6tu9s0Ij4zkd+3k2jTwgxrw2Z14OSPCmFMEtS5g5h02DXseJyxCG7U7pVIC+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758406794; c=relaxed/simple;
	bh=ufGqog3PHkA6TC2pcwc1tEcpgqLgwhvh1irEAI0TeFg=;
	h=To:Subject:From:Message-Id:Date; b=Xec1XbJHx3kqAAk2LOMkAxIaCJHQTKCv2kEuu3TpQtJHePzmAZN6+HFN4E3nIkygeMILZ7dfKoNv93xPaKMiR69XwVYSlj41qHt4Xj0iNqppaQcoTBeWAxShqSuLLegzBV+LCHuCARo9a8miFPikhxIMwtibPrrhKi3/azEiE3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mxgou6w8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mxgou6w8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79EAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758406793;
	bh=ufGqog3PHkA6TC2pcwc1tEcpgqLgwhvh1irEAI0TeFg=;
	h=To:Subject:From:Date:From;
	b=Mxgou6w8c1ZIXfO59pL2TKo8Z5wBG++BsnoJbFo/cq7NLX56biQEQuw3MDJ0vYuTg
	 jfnSu4qXlQueGJJRxIzPcvg6zYmsjUEvnLqoJkjIYGHrktjsAi94SjcFkofNdd+mGz
	 LMa1WNU3tUPE0W+v5tMgS00c9RXpNqsinJZvjJ3iXuMGBwo/y98Lnc3oOHvWQ5XJNH
	 OsWj2+u+oaymQJ/pVxseTrRjRFn96NHCNIbKLeG5UW/EDaJbf0BE1T/pdJOW+l9Cz0
	 VuuKY2U4EKtbwhP7m24aJQZqoGuZHud2Ey2RtIlrmijJfej/uPEbiWTCttbHxvADPK
	 GsfbIj3K644lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942CFCAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840679358.15158.9422340957583091106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb732cd73de3bd216a293e545b6ca48018f52381256a5fda738e0c36111d02e
Date: Sat, 20 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758406793

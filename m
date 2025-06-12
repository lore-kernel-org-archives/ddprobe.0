Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D18223327
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749763194; cv=none; b=G7nTK2vBEgSyLyRkH/3Ir2t/mVQ73NsJksKGhTZaBRI5hZeEOkI4PpTKfPl0FU5inf4dTkMF/fbSnX1OOgG0eR9ykf5oOwVbbMZfvETGAkxIUZYKU47CTQiyIx2NO8DkDc3FLBhLZA6t2v7xaXLzbVmlVWLrVJ1nwLHjMCjbfWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749763194; c=relaxed/simple;
	bh=ZCPXCgMvjV0Lmv3n63qL3ORqmyFLiIIxMX5SBBWMJ9Q=;
	h=To:Subject:From:Message-Id:Date; b=C4vkgqHt39fwDyiWZnvPeidnDYW5aEm5MFs9pB6e0Y+moEprEjcQQCSernB/Kd62v4k9zqSDUlLB2da1PAqVcfgmAM8IuLbMF/NiedzSM0sf9k1Dj/A+JfR26U+2m7r1mt7wPPYuuhlrXQd0uNywWcXFDBb0PPG8AXdWV6rrnr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RphWBcwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RphWBcwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBBEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749763193;
	bh=ZCPXCgMvjV0Lmv3n63qL3ORqmyFLiIIxMX5SBBWMJ9Q=;
	h=To:Subject:From:Date:From;
	b=RphWBcwu+4IS15XPkDRc9PJkYK6sQ1rGN+bg55eM1ymKIa8CGn4UUXHx76F8MdiOQ
	 Ai1z7cTBKjK6CWR/wA9xrFzfCYaV6XmYNsOZiU/1bav9Pzpb3MUsDdYQ8fbrpv2ptP
	 JnFLUUcW9frZabOfJlISScnU/A/+8IC8Elo67M4+yPxhzCQYGCLTHr7ZxXHIagKqS8
	 0k8YF5vtwjX+B+h+0bkuBIbuEKTznL7bAdL7EXXba40f04h5sFHwu6LRCN+FktUax/
	 gFVSoLQ1eUS2iPGiVB9XdeW8wIuKTjLSexl28jlC8Pr65I96mh6BuYUnvbU/l7WI2h
	 Zu2TBzbteZZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE95C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976319357.4600.1613770293369353397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bec6133363f811f4021bae30075ef30fad8f1073be0192613ff116639905ac8
Date: Thu, 12 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749763193

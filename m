Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAEE3CF1FB
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782893314; cv=none; b=Cx+U55Ww3X+KyREgCeYep9Y2PKrSlG5KquPHM36KPJOyVbRuq+vYTD6umSotZoIfGY0lkSi3JY20b0c+w8wWfJgGEObYjB6S64XgW5rl3A/BokUWuVwoEMBupp/FL7OE3+oG0em8/D0IgPxRHMef3A0FBSm6T8C8YNpibwbYPbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782893314; c=relaxed/simple;
	bh=3XrOltrIBxxe+034qWNrJhfmSbNUW0H38njDzANl5pk=;
	h=To:Subject:From:Message-Id:Date; b=UbN3wKRe9Ba1sRvpgM2UOJVM2uHLD2UWGC2ZL3NiwAceHMla2sc8M+iZ0ChsLnwhcapGA97SyooGvFUEPbNgfNxoRh+dMDcKXcIs/7K7lJuTzUTNBqyUWM4yPbmRIwhJFKdzNCLRnq6NyB6XtBlMnwnw/xAQODuUEHFETfbXJm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2F2PPHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2F2PPHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64B5C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782893313;
	bh=3XrOltrIBxxe+034qWNrJhfmSbNUW0H38njDzANl5pk=;
	h=To:Subject:From:Date:From;
	b=h2F2PPHWOW+Rve10LwA6t2RJ6ngr5u5Ewco1+BTZOwlWAXgc8+Vh4ECPnuNJVzEaV
	 tBxhglmcghZ1ZlvHcYoUavgYvGZ+dySjZc+hVUk/IY9Cnf4eyTgvANBPpIy1PrJSXD
	 4HGQVgowZEWUSkuUGVCd3jMrW3tHkfWnOkt86u8AetJ2NFEb+ooE1HLJb0oEswR7ao
	 o5ro/gruJ8WbYnBCAt4zObZQNjKERMaKxaFlE7Tn7PrKiG51nl2XiDJuGj1m4KVzYJ
	 2c6azpAPS5g4wx+CHGzQH9QBwKwoE5B/3AuduQiXUlwIge6GNbQv+mGvnUYcr9ViPX
	 LngNW164oELoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4FDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289331368.27084.12124406205718868949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314dca21c8a6d7d025207c666bfbcc8e0016a19f9ed76184ef351decb2ecfd00
Date: Wed, 01 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782893313

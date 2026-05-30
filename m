Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A5339B970
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780133014; cv=none; b=RBk2PT9/9a7Q43gl/Vv12hIUof3DfUxz4K+ZqXDdQpIzWrl8av74FAp6n1fhN4xxdEZ78VKhTQu8yt2ybKfXnTFzVyUApWuJbJDU+hj6qUTZFyrbM9hAvxX9QDnd9QNuXD5YJGtqNNG6xeYFjvtyXdSRi8PaUL09l+NUhGaLqUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780133014; c=relaxed/simple;
	bh=FI3V8DbFrYL80AcpbUeePvP+VUp8JJn6vmBg/t3W8+I=;
	h=To:Subject:From:Message-Id:Date; b=hwtG03ny3lQmE6n1G46hnrc2V7fa+3cqaFGftCPrC1x3+o+FV2SkbKS1bihM6G6+cZL+dF9OGsjScMRCeT3jHk6kw1aBER6DqpQjSdEQrLuqwxOzFWQ6HXiwA5rUjsURliABYEEbE5P2/FbMJgZyYYQVtG0gAXOpjn0cnUneYCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPkjFVvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPkjFVvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF7AC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780133013;
	bh=FI3V8DbFrYL80AcpbUeePvP+VUp8JJn6vmBg/t3W8+I=;
	h=To:Subject:From:Date:From;
	b=lPkjFVvyJCKRKtmzM2r8TSxJZUZZAqPtC8xiwhbBG4g7aShljPADMv3ymOWkqFMWp
	 sU9ZpxwRqmYdPfIxEKbJMyQmIAtWlioTI0/Cw/HG6SlWTitxslpP0dGCkwMGKTDuTF
	 hIeGDE0C8nxAmLU5t8xv5qaF14EBsKflWPQgx1B5AdzmouNYJxo20m0QbjgOls/COL
	 2acrniMuQ8MZ0b2TueDENt+1YL2w/T9TUJosHb+V9OzbcO3fU+KUfKUY5XZ80TG9ZH
	 29KCxlFXgvlB+jrMgY17YDmU5jIWJIvFZRmrgbzb6+PM3iyTR4pLR8IxGsaSKMhgzG
	 /riVIzhn8Kaow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A30CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013301367.932.8157843188701236158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991562e1942741165a98c4e0cc4b8391a07098114749b5d8b0c261ac37d54db1
Date: Sat, 30 May 2026 09:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780133013

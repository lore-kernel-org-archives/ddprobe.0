Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F28B4749C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790803834; cv=none; b=sXWUzcXGOJ2vqdQ65ZX/VM2XY7SFDW1GfGoPIzX8GTl5HUINBKdG1STmctsDrnq//2nuGyX7eipsMY1+5obOvX0EmZyB1+V8GCGMO3VbJPX000gs565kRJ4tQviMtkzWnO3csQUiglisKFAPPwMuJtm0odyERG1EfFW42qKt+lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790803834; c=relaxed/simple;
	bh=9NyQ8UNqL9736mBtlIrVrnRRlKtIV3jLkSYV5hakhQI=;
	h=To:Subject:From:Message-Id:Date; b=k1sQKfC6zyMjcSENnt956CWqDOIpWV5LewmQTg+JM+xQkHQmXXf4okHV3o1rL2uiOErty71SpQQDEqbUvqDiXLtK+7+DUKR8eVSoWinoT+Iqge2XSGrRgTg1f5BNObPNLhI0jgQondjTSkBPlVmkjqj3tNQuGcuzcB5mVCUpThw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOTaxW5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOTaxW5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0775C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790803833;
	bh=9NyQ8UNqL9736mBtlIrVrnRRlKtIV3jLkSYV5hakhQI=;
	h=To:Subject:From:Date:From;
	b=BOTaxW5gm9yPp8bkva6zQoJnUp+z8+3sZ+2aKODWjTUjSt9xNfNoyFpUrsiJ3n/HB
	 AiPdWRrxiw/Zj9RyWuh6W1qJppCEb4qO9vx9eekcfEIZaRdqVdR3X6QXTcTzw/QfhQ
	 q4QCi4vhwWbfkXCiNbOxDEh2Y/JRBD0ymIuxPcAKcnfasGPz6YE4WA6rq/jjhlDL87
	 i8c2B0PlSKge11dCefKlfKkHSqVBtvo2td+jYbacS2fT9AY/tEIpGG4b4dzD7QSwvS
	 6uzhTeXtpqL9BXS02905Qme/MsO4KQNq6pUFSkeyuJJVljuuNe+/M1RnqWoHiUjMD7
	 hao4uc6/vaEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBC3CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080383369.5420.9442864035455032927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964d4d13eb330c01ee6791d2700d4d1d2bb130f10fb6574785d567e88f4d3ca2
Date: Wed, 30 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790803833

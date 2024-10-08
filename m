Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464B4EC4
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728349554; cv=none; b=N+qrR7J7cu7gYBL1TwLL9HGfPzDEZtjIzfK143IzfzyTd6cmw8uPbm3q1B8CtCXy42i9RSSowmjgtXN8phP7JL2Q5kcLbmOlaPU691eCy/VqAPRy8bG3DmWwHXLBJAG/f5+4kiuWhlIDbYhZjS4thhyIzX6eW3sDAOenjCmyfC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728349554; c=relaxed/simple;
	bh=r8N0b5XajAempJ4D3A6tojXCBJP3hew3eU2BBRUhPHk=;
	h=To:Subject:From:Message-Id:Date; b=GNRL0HEnura6BwP3vdmAFEqGn0TPMKkgLgBz3PLHkGNfIt1XzJ1Huvp7nH8PkzCN9UxijkDC0bFQ//eSmWrW3KzxHAxPbZikPMWfbqYFMm7ZC27h/qZ13BMfO1kwlpRg2GtHOK4v0dhccAc04sdDcfOLL3HgsGj1q9lV2aMETp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOil/Nzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOil/Nzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2908C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728349553;
	bh=r8N0b5XajAempJ4D3A6tojXCBJP3hew3eU2BBRUhPHk=;
	h=To:Subject:From:Date:From;
	b=GOil/NzuO6+W+TatayBlbNKR0tJVW0Uqv6wJXdwEhKcGJQIOPNn1XhD12EfCNf5t5
	 yIBPbbYDzDW6kZeaaVAfyr3YoNGYIJ4sVvMXZ2Irv6OW5Rq+JIexzMUlTQzX9HAqEe
	 s2IkoTQP+Ib72/7/hkaZU6RReAdkJgMHwv6XB4Ck133C6u7RzEQmUgD/XF5oRHisxt
	 I002v78mY+tOUZrCqi9txQ/ieBFa0FWwAhixCJ2HRV2caYFJCsWZkJrjzJ7ziVzVLr
	 YZeRm8Er/4AZIpelV65rGLAVc3owGOFJPkPa8Ir4hzHQaAy/M1nBJzhY/wg88v5Iwh
	 9m56dop1zsTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0265CED24D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834955361.28620.11712849923192045590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb6144d4e9f6faafc856c2a68f181cbb795429851dba9b134768d7a669b4f68
Date: Tue, 08 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728349553

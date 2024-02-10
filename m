Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186315C8E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707586697; cv=none; b=RG3Pf4z3E5XKkOoYbc7jnCTXGsQrnQZsE9CFuIvsaP++DX1Tm1H16exlJPVmtrt/x67VvI2rpQRBKn+yT1QN6Az8eLOGUylHmkb8tDU/0P9uIFsjNU2i/TdsIVl3kyczFs8JrJxNPSduVjm0irdArE7Q5xAnEQ1KsVK1X940Dwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707586697; c=relaxed/simple;
	bh=7y8B/tk/i3tvGU/zR9X57+wH3LdJWBYUQkmBus/nDqc=;
	h=To:Subject:From:Message-Id:Date; b=Sz5hps5nzXEeBztXjAyxHd7qImOkOfMt7x8EWiH92nHUnerVdn0g1uQQEwaie09+C9RaFe381fW4ncYP+yfz8Oc4QWzzWiv7UHM0mKrtLkpS2stbjVMeK9dpcrcOlnXgXl/nyj65xd78HwFQ0StnLt7nsRTnqS2NMGiNuPucFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFQtME0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFQtME0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA61C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707586696;
	bh=7y8B/tk/i3tvGU/zR9X57+wH3LdJWBYUQkmBus/nDqc=;
	h=To:Subject:From:Date:From;
	b=QFQtME0JzwJefxX+8+eZXOlLNpX06gb3oBrHztTRtYaYuSCtc2OlyLLKn6md9wfhf
	 5lbrsiqPkEQ73i3X+M9EK0Flyhnyqhd7eQrvg9+qQJNZgSpBf/389Ms6eB1QFqGyw8
	 Utk4eFtu4fEnGC0srVv5+V2GJn2AIllPynX3uevPVyP926ilW5D8GLzlSx7+Ts8qeg
	 fVY+/nSr40lm9meWGG0ms194MIN4QafdQusSWWhFU2bC8NazPl7UX1FpiCAHcjQ/DR
	 qVk6f6qGv93P3uvkkeU7Jx8orWcB3om/aoRuw7kP3FbJ1KLK6in84GGdzTL8fP3YhQ
	 X3Df6gfuc30WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619D3C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170758669637.23202.7094429157091521190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386f246b0c95353e9cbddae3eb30fdcccc51162e95fa554d9ef660086ed7ffdd
Date: Sat, 10 Feb 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707586696

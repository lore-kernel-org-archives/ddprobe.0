Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F93085B2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750350594; cv=none; b=njsA9dQtfZ0zeBD4391yaowagL1jKIYMbkC9TnooNbCh3pOGKh1GaGS+3T56t6tFm1T2+BjkbgQDYui5TOVjibRzG4XfGs1L4q2xV8chiQ9zLNS1HbmUEXTpnZnkOxsfA5COzvqGk1eKb5BJxRwK3anCWHcmThfayj3mHQgx+QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750350594; c=relaxed/simple;
	bh=wvO+owLY01KnU+XCYm+6GL0T9XaMmVKKl6OymnX0Tak=;
	h=To:Subject:From:Message-Id:Date; b=siPGAZlNo9/qo6LNY+pCOCJ208cO6Aa/oSy4Hvo/MthinSoW/UG/fYfmf1jZd4UcmmbsMun3KS1Di7m7cgJ2hY7K/hb9k1mmH/gUv2Uedt1ZNcpPkP/UYmv59FUI7VhYoYM+PUYVtZNSq2kmqvSv+Dpx6pnd1M8tJpJUWc1aaT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LplPlHaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LplPlHaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E503C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750350593;
	bh=wvO+owLY01KnU+XCYm+6GL0T9XaMmVKKl6OymnX0Tak=;
	h=To:Subject:From:Date:From;
	b=LplPlHajXzHHq6OpCr8qLebG0vCqABup+13JCBAr6X5lmROT6k0A0brAIHbOhzyuy
	 6ZVYwNAkavTqAkcNkeYwV+1IQX2B9wYHArQJvN8oxsEtnex2AN1mJOVLmned5CFvYn
	 LSKBzGt44wa9D0ENdYpQZxOB3GJfCTn1tR8aazMZ/IIVqnwFNC3SrwzXYd+NZlmtfN
	 3GVxULHCQ3gcp/5/MrBuD82hyXBFGMO69cnb8IQ30Ft7rD0MZBr2XYCAstRKoNpCYc
	 Dn/p0GskZW2hYuRuwjEIkyXtrUaPPRAolCCjOrdw0OKrCv3QzWbGbnmey2Ka146zwm
	 cvbJj+NOWe/hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F5C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035059357.18790.12422189797051514177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ba48a643890e3b393d8811b77992baba763defcdb18865172325e535810b15
Date: Thu, 19 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750350593

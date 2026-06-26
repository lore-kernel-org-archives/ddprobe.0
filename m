Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD73AA4E4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782464854; cv=none; b=GQi2ogMg+g5R6pTM4nMM8mvH3Zgfa4aySR5akcxV2iW7WuUFhr4eBDGqFgvZuUKq0IrBH+OfjmGbYikAMwfKdGBASVm1B1SzOwtsuI7etBWofQmJKVHrKKNCXg52csw2cbcVKq/TkNs3n8qLlrGHYcc8r6G9k4cdjufAPfKDxLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782464854; c=relaxed/simple;
	bh=3vEfmRL17OUGaZgTG2WXR4Yto2Nc9h2j+g6ztbr/DJk=;
	h=To:Subject:From:Message-Id:Date; b=bjQMICyyecoTRzDkuj+AIU/+xrVdYhmt7hrppD3uwxDzZ25YuPYGM70li9oxdsAkP+A5jW/85PtWlIEXEu5aD2Sh6/mCqX3iienh+yH8Sp5pmLmV91cem1gnQOzo8r82jPVUGPhOa1UIpxzy49Zv13qe6KsjsDmtjUG1VO0HKYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICPyZbaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICPyZbaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55EFC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782464853;
	bh=3vEfmRL17OUGaZgTG2WXR4Yto2Nc9h2j+g6ztbr/DJk=;
	h=To:Subject:From:Date:From;
	b=ICPyZbaO4TyAGJbJYMzpT5nmb6YkXczEVNKnfJJEDoHt/Y86XVumaZD+1VOPt3rTs
	 93oTEpT0/xrUIIbFfdF5B0ek7vLIEe0lGaQRlvNFx+cEjwyHxmsPzpylAFm052bnW2
	 x/4sZb0NTqnpTz/ncH2beKbIN8PAUxHRsMAMZQP0+5oG5yBz5cKc0czru0PZBAD+6y
	 ceZALoStfsdz2M8tRns6ozjGP4gID+6vFNOcWkw3YAIj45KOQ08ItKxrJ2dnaljTm0
	 5C2DLGsVjBbG44vhqqK/qOIQ2vZqYFH1gUCyK4wC/J1EJt5+iq4Igox7e9jl/1YoJo
	 wrlS8gPveU8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B686CCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246485373.18676.13073856179951468980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0097e833a369970bc118019f8aea9df285ece83ccfd25c99fb916d82a10a7ffa
Date: Fri, 26 Jun 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782464853

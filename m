Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3862417FB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769171634; cv=none; b=Pl5Jp3U51+1l0VIM4uGtHzvCwxuFCqT8at+6s4LGtITc9PJ/ztlsuEcYmvwy2ZLO+AXPQDw16zffiwT8QxGiOh0uDI7W9AmzALYktN2DO1AXr1vEi2cptUtAtntMsZ156BrUfeTmaJislsmCtqDjvpRPRLMp+LsWM8bdTbqc4Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769171634; c=relaxed/simple;
	bh=Ee/6BD5hBPOpYOR0XsDKlTkiYhUq06CoWtD3hSJ5zJQ=;
	h=To:Subject:From:Message-Id:Date; b=QSXCOQAj/6xAz3m3m/ZcQt1vcQD5CiUSSedGTXhjeQvZsIUL4vGPXTx5UiCvyjkJDPvjQDMOF+OfjbTGYM7LMPbduw24j6XqpO05+r0Z1CeUlV9Ox13DiLPN9IK97OT6U+7+Yk84j8bh8TX5KfQjICgJO9rCID1gpb2/q8hSQJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLCzN1qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLCzN1qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B14C19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769171633;
	bh=Ee/6BD5hBPOpYOR0XsDKlTkiYhUq06CoWtD3hSJ5zJQ=;
	h=To:Subject:From:Date:From;
	b=CLCzN1qSZPqOXDg0BnetuzgEZ1E4o3FGAkAMDLviYeGuNIYwBj7m3QwpMOuL9xKbk
	 3qwmYLWkqKr5ETNGCIw4ORlFAZQoMMdlpK/wa6XB1w9VNpkQVi5pCczypatliuSs/q
	 xlytGORpex7cKRHT1RPgrF7fKO0eKdZnFhKprfJpWIktPGjIyJdSTG+lcKhiWdZvJ9
	 cBDEkuXfLw89VBaDcg6iN+IcglC38dr/CpKq167461RR+2kUxeMeM+G/F+X3PvtkmR
	 0PEoISkEpQpXmeBCJtDq55/LP6knqz8s4wlqFgumPxJdMTdpYikokw4pzdh0CcXuPQ
	 VROj8aLUJcAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009FD6CFA7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917163358.28181.15489314218751024795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccd96cf972b772c6aa3bce56f3302687c5181ce655daf90d703e2ce3cbaecaa
Date: Fri, 23 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769171633

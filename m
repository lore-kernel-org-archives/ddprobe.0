Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203DB2D9EE4
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762347594; cv=none; b=hcwR0coN4PD3ijqXJaxRtJ/7E4Q6MdEeRHvH9c2xh8Y5XiXPDeeKGXkN/48RQ1ceZ3X4XH7ICl3PEIUNHVDHp7DZ7hqm0ztCD+eqEiFbLnj9IoKcSX28SrGs1s7dH/Ou1X/3C2zZUd8G7qGTSNBDPtaKM30q20cw4DcXqXGpMlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762347594; c=relaxed/simple;
	bh=+UdJKzIrZYlE0XLfA10TcrmwaBQeUyLUwf9b6GkM2yA=;
	h=To:Subject:From:Message-Id:Date; b=tZKv5/mB4EitPC9WTwDvBzvrt2HxBAPtz13LXGKJE7SfPRF97dvsf6AkrlNxAjyzE0z2eyUBu+Ew6xbMP8Cr5dy8nSoT0HQOkqHL5SSmB0GDhiUe4/6+oRPgbDACZ7RacCUmkkv8C7X2kjZ3uQgHBPdxFPTLYAfwk0htjAXpUTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S79ZApyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S79ZApyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFD4C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762347593;
	bh=+UdJKzIrZYlE0XLfA10TcrmwaBQeUyLUwf9b6GkM2yA=;
	h=To:Subject:From:Date:From;
	b=S79ZApyoYo22gZQvZxyRj/Ey0/29S5E931oEYPrsxDw5KKGHTeKWQH7ptnZ8kor3y
	 UJ1pG/WXsUbkYmG48beEptDlRMmBC9mtYO9D4f8O/vQmpH0t+o8aZ2ES2wG2uBEEjK
	 waaLrQ7X7+DJeYxjWSUQpsVNpA8E41yg16PmLISJ0RKDG7aZaREO+4B7nasYg8fxhc
	 U7otQft6k6zVA69oA3yRwNtKOt5OjzgGEsIPxDEGpb9F9doKEVbpGo9UdTpsbKgZPt
	 JHVURqQzV8NdA3wKvCbTgQrtHJfCSuZvznZp/og6XQ9LWtTu7XyUQNeuyEm/tRprC+
	 tCKDZfeOsYVKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981C4CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234759361.15829.4817462869505164140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0263dd4b0f51a74834a9aefa63783031f610db0e45d38940dd54a5edb3351cb7
Date: Wed, 05 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762347593

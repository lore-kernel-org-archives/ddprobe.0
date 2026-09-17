Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6C9394794
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789612234; cv=none; b=U4kaGbRZlCr1+WLxnlSlQM2FzFbcwaTEIwyYQNyXb9fgGZMdHGe+UrShuCtKsOU/6VK7X437D2TtfxNqfvtL1DhxI6+WI0yzY4M+eqsbsPT2AFGhYiMRLducHn6iG2CXP8pHP0sukntDky/kYo1UB3zhyohHEyUzcg1wVyDUGmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789612234; c=relaxed/simple;
	bh=MIDsdDPInRxQVaIpeC7D18+UNjLbCMZv5fh4FugoD7g=;
	h=To:Subject:From:Message-Id:Date; b=HUmGzs5EN68WF4QDLk5v6VmEB28E9kM2BI5wbUIPX7BAmuQlV7h37QjXgyKJ0pOaeVYXLIQOHiPuxVZafbWPqN+nRNsXv0qaQDlu5rRDMt5PosvUAU1SZRK9T5wxeIziaW/ozCVS6pzPapf4b2HoGGP+Fdi5pxcG40L6JZ6P5rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNdY5YE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNdY5YE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E3FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789612233;
	bh=MIDsdDPInRxQVaIpeC7D18+UNjLbCMZv5fh4FugoD7g=;
	h=To:Subject:From:Date:From;
	b=gNdY5YE/cS2baEzNvzqe+Xe10yLbelpJxxpYzlIMFJ0WYSMsANds1L5JMrFjaJqbd
	 hbSQpmgiauL73DWMQfJbYdNmiQc8/qdJQHJJSTbYQPOTIZ4agsqJZgejmoIjbV45Ts
	 fgTMWL+yQjebuSAkvFgbXtcJBjaJxWjP5DZTWwZgcnskqo8eigOrj7qI3xVLPY+oQj
	 e3ks+qtsDgNxbVa26Avj7POb59p+wqGg7u/NVs1G4glQ+2TjrchwkLDpHFgbuBtmEG
	 xtCu9sov41DNU4G+SwIgfGnjY6l+C/gFSJ9l+iTXG6vj13KHMfTIhd7+IWQVUqET3r
	 PLxReMnIradaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F58C982CC
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961223371.23026.16900959124104541977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387e8c92773b778ad036fda95b314c52e56bdec6f1dc161f9a0a18cda4e2a3a0
Date: Thu, 17 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789612233

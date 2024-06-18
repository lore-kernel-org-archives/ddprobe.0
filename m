Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1FA482DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718691563; cv=none; b=VZNkIsCinSBsJroR60xXJcYpdEv3Ye/UWw2r0he89GHgaJGAHCfjN9/CQVXmv8ujS/eDb4+vwEhIQnpQNKvvU9/2p3NHgGUatUbc+LPLS3KQAarE/XVj/7hLMoI/Ihyk4V8WbhXvYH+gloTpRpBk4r0nPkrTMPV5812ctwd4GhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718691563; c=relaxed/simple;
	bh=nxLimupi79gd9EVtN8AVErxzxhSztImLWJYCmJ8lx9s=;
	h=To:Subject:From:Message-Id:Date; b=cr5l4jCx4cH+Fox1hiKa4kuqSsGckXTa1PjHfu6qoloQ/ZBAfkrKI6n92360qecguNFaBo3SCtBo/4lCvVGb/cUoHBgHHD4JOLnOXUGUhT/DBbgcpgvoWK50fjOle4D75zdghw+tIVJtZFJ10TCByRR54UfXbH/lCrgHc2c967A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byCtnQVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byCtnQVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CF5C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718691562;
	bh=nxLimupi79gd9EVtN8AVErxzxhSztImLWJYCmJ8lx9s=;
	h=To:Subject:From:Date:From;
	b=byCtnQVsjkEeSo1WH1GkqH40hbDfawSrGeTv2fTGdZTnEOpDVFcI1X60+IVblYGxA
	 0nLZScf1xZ6chZ2dhHKz+OFrSctJdzzuOZk4nd5SA4xWX7ZJXe3Pi+6LeKIEa3oPnU
	 yYH4YDtTbs5NBLNZ4jT2c15rIwxHHoDrDY4fB3FCJZUg4FysEhrwxC2E0dNgKVyRNL
	 Ikz75N3XtfqpNAmM/f3fLjVIxv2srZN7ZMhd6k2ObaFy31UfuTg9xx8fBzxPS+dZgl
	 068oPEyunze+++anw3SrB2+1neBSLVK0tts2yFH5GjuselTF5VBtU07towuqPQ3/og
	 EnDwe3ZxGYq6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF2CC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869156277.19597.6851698945396780770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1024ea188131946e3084c608a6df37eadd9fae99c71d5357cb87d05c832d30
Date: Tue, 18 Jun 2024 06:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718691562

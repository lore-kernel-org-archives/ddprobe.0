Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357AB1339B1
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778607034; cv=none; b=UrNMFvXLcJpkYhncLWc/x/kOKqNLuB4UUUpVBUY0PC1brZoPXOMPUyeY2p1U7h0zUUZ/gQCKil2gMpt5RSrGiO5Se02HGp5vBGYI5DDMZeeaZQ55tHCfpaedZqpPTVhxOEdE51TeuNAjIAfhC6vGgpgvtEyuPyGvTxmPr1QVpp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778607034; c=relaxed/simple;
	bh=/kv2W5T+2uPEWcHS3ijlcSulwKBMfZWVp6v4xB7qaII=;
	h=To:Subject:From:Message-Id:Date; b=KV+j2DI8mI032hyc9bswBn+EcTb5A42rK2YFJtJDzvmZpIi6j4cyZZdqz8mkYukWPL0MGlrTcbMSeB2aaBhraqvdHfZBdKCVRPLyFSB+v4mB8CWbyNYO22tDT1y2xXSP42cAkSrfJbBS/+0NnrrQ6SOWEbiwRsFslYERqBzE+yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwrndBUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwrndBUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FBFC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778607033;
	bh=/kv2W5T+2uPEWcHS3ijlcSulwKBMfZWVp6v4xB7qaII=;
	h=To:Subject:From:Date:From;
	b=iwrndBUboEDI0RcWOGBtCAU+Z2LOyOfaSPebSmZ0Sghy6euX9061hN/oVtXGQGm2j
	 3BERMh9OlLvhAcnBzLeLUXKlOd6C7Lb8iEmtJLg5nIy14CH6gIFq0aKl4HQl95BdZK
	 JxVOYgliEZYb0wm5+oxB7z81jqKkkYhZFeR6E3wZxV5ozSr00BDw3zPGvfABwyR759
	 1t5VpOuljLac1e7emqJ1M75ht3fo03BJAFDdJWsM4XKm27mtDSA52GY59iGqmeg0CH
	 ISTLHrYsz1cOwebJGFWPKrr+MFYo0igWhM3MHSgUvK7ZOjkXMxUuiz8LhdKbmuSMPb
	 Spmw6AXNChKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF2CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860703368.7987.16706720198393691288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fd36bbc7f925787b939ea4212fe644590e69029ef3557873e9ca675e95263b
Date: Tue, 12 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778607033

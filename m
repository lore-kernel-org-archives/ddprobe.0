Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171231EBFFC
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733232954; cv=none; b=H4KjyeuC8vxGMMoWHQhVBL37eKyOP3sPRf624T0QdvmHMb6nsIl/lzau6gJVUMp06QxuZzwwRu4Q/hDoFgJBD5ON86u4gBO6wmmDVsb2gdvzy8NyxV+/R3pj41NihKGdLDITQvHKzTuUBsQLb6m8swksbI9p5xgtRuxJhUYr+ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733232954; c=relaxed/simple;
	bh=XrdpXgm1RjhMd6pph7EMk1qUg5liLftSSujCU7OuejY=;
	h=To:Subject:From:Message-Id:Date; b=H6NQWvUBBzQAx0pXgmyA2ffa4wBktPOKpdsC80TcxtW2hIkNQOvWGW5dobefDMamSMJcEYds6gFY3eZsHOmZpBZfxL/Y+JIRcXNrk3qqT96DTAQgruLRCNxqRfE96eSmhv4IjznOJhyT/ZgHWAU4yjCJsQTRPMvQdvpj5GY3dcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxN45dvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxN45dvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42DFC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733232953;
	bh=XrdpXgm1RjhMd6pph7EMk1qUg5liLftSSujCU7OuejY=;
	h=To:Subject:From:Date:From;
	b=LxN45dvEkOMomYlpmllIC8b4XwnwiQbYCXgzNYpsiRSjSPrE4E+cJsfLLgCk5/Iel
	 1Vgz0jxWf1eVE7JNXbP7E5pay6KA2VXSwvjIu/NI4l7JqkLckSh09oIQDfO75XQpz3
	 pwBkXTQX7bL041XPqL7LbvYK1HIas3lyy/g0YamE0OsX+GHINcV7EnYt+bfVXLsvU0
	 CEegBC+FNm7yM+bIlwfDLBYKLdpXPYbt51qMV4RJ5Us7lfk3tWVgeBUujA51CP3La/
	 iZ/BFl+uivA89CdDTJ30GRHaz8jnfmXNrL3R/4+92JNn6sMYcZgCIszmXbtF0avBMO
	 TacW2sHxxYt+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7EE64A8F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173323295359.28834.1792149732771654126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a524eb6d41840f0d40e55aeb51f974b480c3f1e498fe23bb74ea913e2c1f7a
Date: Tue, 03 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733232953

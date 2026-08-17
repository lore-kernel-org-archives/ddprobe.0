Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3A4B0497
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787000434; cv=none; b=MnKh2rxR4GaAO2sULi5L4vucrNPJMOLgA92aB2GB81+j+U1kL9iHCDiWthEV4IoHr8kI4PeK1lgyIf3njUz4EZSD46zOrIyzb5pg9RGq5/C2QnMNpsu8lBZykvOAsZdRkmw1NeB6Vd2nkzpmd7BH8ciWe1hE8w7Nv+9DH6bVAis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787000434; c=relaxed/simple;
	bh=AjHPibFz9VYpLCgX9udm6sllS4o9EsaGkdC1kXt7xcQ=;
	h=To:Subject:From:Message-Id:Date; b=e4+hBcOqErVz0FOAdDtNHhUg1pZ8fZNJfNCPzOxnRxLDJgOhapstWK8sWsV4jMmbewnbrrIy0p9ubuawRhyh3Va/Z9GrRH3cCxANAYKZJ2nYaqeitG7lgmQoHrE56P6o4p4h9bkB7gTdvZGxGWrx6/WKfz+mk0FaUKq6SDTqg6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2DcFp35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2DcFp35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB3EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787000433;
	bh=AjHPibFz9VYpLCgX9udm6sllS4o9EsaGkdC1kXt7xcQ=;
	h=To:Subject:From:Date:From;
	b=J2DcFp35ITJhm4bxZqodwCwKEtX7i9P/8eBAXBeyQf4Ul/694ruCNWCGMHRTw0RA8
	 DPyxzEB9LZRSiQ6SWpBv8VXPWg2bEYb17+UgQmwBebLCJx2+zKVkNtnNEmNJAyWPr+
	 gikr+7xpp8yNJLMhhT0H+XSneq4BxhzAHb7paQWk7a6G8U0VkhhpvZVIlrVFz5R3ZC
	 8Xqi6M55oLyyLhfLUZe6dizwvEZWdwSPRMltXIXfjAMg+M3M1UlEKyLlnDhvSI5Dck
	 9lS1W2gv2o++SIazhDY/Sf+jN4VeZ+VMZE0Hnn3bbRh8VGDnOQIQjEcdJox3IemPWc
	 l/m+51PCbk0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35FCC5DF7D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700043372.24164.18206117727554020175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02b5e7335ff7cf91460886bdfbd8f3887da220de054696edb2fec7f4456a030
Date: Mon, 17 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787000433

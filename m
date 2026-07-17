Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669D926A08F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784257714; cv=none; b=DPslxRLC5yDa9ZCQSnIQmzhKoJ00M60wFoJ1NBGevtBH/Gf+JmxtI+U2brN5v3OKhjtr+nObhBifplDpk1iL3R5YoPrDEvPqUM7Q5rjQ/y/ZMbx1wOy5UXxQB6QFbCBUwYgzJtvBkiJOG4Ea3whXrc7SOMNJzVymh1UBilWToIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784257714; c=relaxed/simple;
	bh=xZ8xtbuRnRPxsMCsaI8sRLwbxDmjwOVxyEw2kazN/hk=;
	h=To:Subject:From:Message-Id:Date; b=E9UyVxz4j+EXPQGamp+yaA3Yp6JgzTfonuxZvJuZu7U6JuX2Z2/MfQpGQU+mvyzJM7iptg1Wp80gfBOL8u0/0sdQS70hdRWOosgL2cqn3idtp2TJhkM7UMntohmUyL7z7Kn7rFUweitKwycsPha9WSlm+2ifchHiGe4PGqkMXaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tagJo6O4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tagJo6O4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E8EC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784257713;
	bh=xZ8xtbuRnRPxsMCsaI8sRLwbxDmjwOVxyEw2kazN/hk=;
	h=To:Subject:From:Date:From;
	b=tagJo6O4eNhMXBSX1aHm46ihKsZHQyhZkJnU2k6UdDZFsx6+VEsrJ8h8oECN2VeQf
	 kUxJI12U10LPzolwE48cv2qdgQikWX2w0OBFT1FBgv0h7ufm+XETbgGQfPu/zJxttP
	 NIOeZmTMczwWlMCfKYkPerSdXyfqq0WVJQkRyZv7//BDHZ0C01oAhKRX4c9CuJZUKZ
	 AMS7MjQkW3MFspNE8b0qMaoOsfaJRh+DLL/oevC328kidf9mfHC1gWMfn0A2IS6h/i
	 ociiB6LAHGQ6B5gSjfcIwQiRvw/8kaLcyMyg3hP3L6/CINYq+GzB6L3DeaUAj+0+KP
	 KKVFQSn0Ww1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2E6C44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425771368.14412.4784367420801844471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5af81fdaabeb337ceb9f4d386c47310f2b07e55d9f7f7bdfabc93ad4427ebc6
Date: Fri, 17 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784257713

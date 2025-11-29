Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556822B8D0
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764439974; cv=none; b=VXUhxSRiRcK96Q9okcNbXsamW2fGIutI7kMGtkq2at/+UdJATQSs6Kjo+btI4KVu6yezo4nJlDblOJUzhuCT9npZUu0R8wiq9WHmQCN63gMAmwYIzu0O74FaGy6FLOGUNIxXmBPdEIWnb6FkugWwqCUNmr0BVYHGxLQDF2a/y+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764439974; c=relaxed/simple;
	bh=y9ICpdhGggTUlW2P2ZLLtgrsRQ+4+LNgBipK36GWZa4=;
	h=To:Subject:From:Message-Id:Date; b=sDQFHheTFUMoUS1e2HeuTKUq7XLk1GXocsMAJbHEcUIOVIYsczO9P/699xfjPpnUEKCwGvN3f+MfUDgi3vR+C7XJf8sMV91/csac/C7rdEXUZDkAhB8hUot0ehJkmkYTN6JgTmn3LBzheaoW5qW8BpVj+J5r0mES3fw9iyEOauw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz1IZ8YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz1IZ8YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC227C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764439973;
	bh=y9ICpdhGggTUlW2P2ZLLtgrsRQ+4+LNgBipK36GWZa4=;
	h=To:Subject:From:Date:From;
	b=Kz1IZ8YJ8g2/IkiI7TeZoX5xNiexLYcSo7AwZV4aZj8u81bQZH583xHRLgrwYiBq3
	 Mk6Cunj+YTAzeYylXRQRgNMvqonRbY9NI8w4I7CIxCQP64k5cl0f0r2/LczPG3hGew
	 9H5HziIffQMcY44cOUWjXXuQwHdp/5Pmi8+3YoDbrJiSSwZmSl7g9dVt8JKyt9ePrH
	 wwukEhEjgB/WTYn+W3TstHwr/69MjlVuJTvVry5mBnn+49+sz1o8YdlQgTl8LFNuX5
	 3MD2xywG28zc+B+nF1Oez/3LFr2XU0bWRv0+IrBUTLKBc9qOy7OtmJ1fInxsMhAPuy
	 6TI9oxP4WnNyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F1ACFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443997359.32433.13899405506857285751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f8ae46aa6a8c0d723d24f8d9637dba7b8f233c6c19fd20c2d08021098eab6f
Date: Sat, 29 Nov 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764439973

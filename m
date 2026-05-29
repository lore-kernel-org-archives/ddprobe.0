Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD4922425B
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780062154; cv=none; b=lYTYibtpKII2puazHQ3Q00VQvajmspV5DdIkGbWnDzaHNMr8YNq5H6LUT6JJiH6o0JUJUg+4x9d4HQx70jeJiDgg5BcGzZ19lFly39tAsfwDZWYH1ao6HoRG4d/fwKznlj5mCb16c9t7xmMcLqx7G5cWCA+uE3OTPRsIUmy71Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780062154; c=relaxed/simple;
	bh=ef9gP206ZqU7NakXXxCqghMnf9pzXDVbCqvpjStc9Qc=;
	h=To:Subject:From:Message-Id:Date; b=I/j96X+lLZD8ZykI7aMJOlsYO64/1IyPvEPRAPMAD/rdhehfdr5EsLwznINbiBXC0hIEgntlRbDHg3Wg8cRsibqcjtSHd8ZKGivwd7oUmi2YZ2f36VNBPLAE+LQQdmUIOwKo6N3Pq3EOEi1lDg7IyMoJO58rQhiJ3o38736nPis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5vEmqVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5vEmqVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA404C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780062153;
	bh=ef9gP206ZqU7NakXXxCqghMnf9pzXDVbCqvpjStc9Qc=;
	h=To:Subject:From:Date:From;
	b=D5vEmqVytlrabif3k0B35IIUgeuaINRquYZxfQB6e6rBG33EOB5vPL9rpQ/KNe2ga
	 zlyTmNXalhKUcNXyyzXtwrqslOxUfjuXvbcX/yhIiwO/E7OPoHNdNvzNWCguFxbwzd
	 owBpXVHpnUCaGKjhU8ULkctEkvcX0DOdv00pI0hGcuppI7zcJBOuig1IY2M5oMQ595
	 5myhkz2Ec7nSVioLMDxVI+YuDVMZ/iG4+HPiYDnWrZR8wi1GWeiwWSS7OtjsDV/XQk
	 ++lrpf+Y1TcQTMDqq429UUVAOjszYAdQCWDfEg7cm/QdpiLRgRNUrtnP1XTRxFbl6d
	 Mh6j8U0mpuOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF897CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006215370.21154.9449691515510782054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459dbe5f63e31cc10cc2b44906cd2b9aa43b67890c5e33083319ee856e01ede9
Date: Fri, 29 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780062153

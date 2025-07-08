Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3511612F5A5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751936394; cv=none; b=AetL79loXj2ZV2WkX2kFukCPjLIoo3oIJN7dYjftuTPqSR6CuoODUQmL1+NHNe4ZRHQWW9q/RGwULVq/x/hHzzf3T9Rejuu7AAGLpzhAgTfNk2R+GWWYS33y2aNtHIg0WN0Q0bgskEHP0NgO6YtIQO5Z8w3WENY7YFFBLkR6HRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751936394; c=relaxed/simple;
	bh=bpCjkRQSzJpLRqVCQ7dSQoBGfDRigM1VYviXzpESod8=;
	h=To:Subject:From:Message-Id:Date; b=qjTmBjZST4sCeU14naJSL3tYZ6xywY7MN7Qpfy1kvSbEnXvNFKOWLekp5c/V1UR8kjZ0RqRVzceovqMoXYFwdIvIK5xuyq2WeL3CnfIWBAmPNYiFkobd76tlSau4XeaFpFDFJ2GzHklDjFNqSLHAOTZsguQ1MC/7TcvfcctXWKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1HrWnbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1HrWnbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4323C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751936393;
	bh=bpCjkRQSzJpLRqVCQ7dSQoBGfDRigM1VYviXzpESod8=;
	h=To:Subject:From:Date:From;
	b=o1HrWnbudYl7lAad5RaqHOpLtJHFYry2FscTGSKp1kMDLU2WXrICaJESStmxDMSea
	 wNWxU+XLZI7TCR0HGZWyUiwmXQjdaNBlPgY9rgxyfbr848D2EnJz5FoqMckwR4JYuz
	 a+h7LhCpUFMGC4ao8rd0IYKo/03NYVaOGFQEXc2Oe4TTWtwUR3qzsYd9Xn4oGovhCA
	 +wHGs/uwBWQfQGC12wqHGyDnWYhd4dzS4oRLBlX2zEFdq5yeCeNbkDAXkOR+w8MGLS
	 fcriX0M7D2nEv7ckv92sP/aIqiOvgmGthyEyysvUPMmQVoJY9vGrJeIa9n80ql093H
	 iktJJj44bqD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A48C83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193639359.29777.17377595945822638111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a56c5d08d6028e72d3baf29fb9ef8e5b7293934a0928ebdea2a04a2c46ec0d4
Date: Tue, 08 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751936393

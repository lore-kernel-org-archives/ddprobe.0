Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231713C465
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762018194; cv=none; b=D2NGuI+22qM6FJibeFLqtzRihTxk7ki3ng/78SvPz983wAoDCDi1k/qwAgWQ7iBiHqMEy+QwgtMejJ+0vdqc7kmbp6rprVosxGLMreWKKcAjuRmjS5dWTsinS/trGcFWizkS7CS5kCuTlELGC680IihRvZSyyP1h91LqO+yZo/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762018194; c=relaxed/simple;
	bh=7h02ZwWACmZutQy52H4fa2r6pnMw/UgreWWQ6wyWcC8=;
	h=To:Subject:From:Message-Id:Date; b=uEmcZX3+7vgN2exbYERqsnseNOm8bCPiOCXtaGhzKEwPlMolTTdvoHXuZs7Dl+OqeZVP4fAsWMK43g5UPe+TlH5Ce+HbkhyWhtsry0yBvBiA4PBSL8no1JSOTnCQXTtziKJoP2E+iLS9/PqLJAO+KkcB3A1RP+ODX10wQVpGOxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFSPB4Vj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFSPB4Vj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88E0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762018193;
	bh=7h02ZwWACmZutQy52H4fa2r6pnMw/UgreWWQ6wyWcC8=;
	h=To:Subject:From:Date:From;
	b=RFSPB4Vjo9rEnnHfML9TkwqPsWj7hP9N6mtnZeUN/JPkLDmsyfx5HnN7GZyw5vEzN
	 FXfdC7Rso2rmNLSKaJ3WB3rMsHCItoVPNBb/lqfYwKHgU+6mPaFmiK475IwWVL7Df8
	 ATWPuFBm2G0O3oPq2cGgQD37yOTPjf8EkEABREbWaydRTXtmszlS+WQkufER2pGLKc
	 48Z0x1CEj7NhEmienimAH0zYvbxlNJ3Lhz5d1zD+kX9z4Aef+Kt2m5FW93Bqf7mSQb
	 EDkDzh0502XKCaCmG9AIjNSainKdK0sgi5EnhByq37MnKit58fWk6VyeJyg6HpH7x0
	 dkdnQHw/R0xuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91579CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201819358.13397.9658996924290077655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22674aa6a6f6c84c6d8e1ae0780e0b5ca8ffe7b1104627ac1acbb28de8b4667a
Date: Sat, 01 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762018193

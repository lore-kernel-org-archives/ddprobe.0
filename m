Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519F84A1DE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790344234; cv=none; b=jEMRvHs3zbLwJsw1r4KG02FEQqu9ATWvk94mK2HShgW1c1NdQT/dCNFIRwdthyzJLbG7qf108hKm0N50aNBh8Y2+y6ef0MfwGuK5PwtT7oe1Tnu8uf5/jhFpr3SV642ziVgBbCBQO4vwc8gz0Mv0TsHqh4vi3fiybanZDdf7cfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790344234; c=relaxed/simple;
	bh=MG0R834OdDzO+zrkiiYfDwbUmnDI/VzEx2ixOvvUuDI=;
	h=To:Subject:From:Message-Id:Date; b=NEV4qrjWYGx0F3/AHNSzMuzuAfTy2vN2tooQk2AuwSQmXn1cOKV2PjC2zYxctwV3vF7pA5atrKtN2lKiKbTIA1T1f0fTVq2nlGHvbQJGYk4KA2FY9czpBFkci20xafk26wIEcm9EX/hfX0CIu4CCPEAOgxpIV/uc7qRYF8Moq6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOrL9mlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOrL9mlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B23C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790344233;
	bh=MG0R834OdDzO+zrkiiYfDwbUmnDI/VzEx2ixOvvUuDI=;
	h=To:Subject:From:Date:From;
	b=tOrL9mlQo8Ee/6dL3vvtjqwHMC28SV6FVezFMAaQRiBE8J0CHTRia6ZE9JCPD2C4n
	 ZjxfjQbr5L81GvxO7SDcDEyIxYKme+r5N6m3wawmjIC64RXRr2ACtzxrPFNC968LCu
	 c7LI20kOFjMtadXif9tRwRUZnRy3Vh3XOKymstx6xCo6rJbhebijffMNSMo/XnUomn
	 40cqXvBEc9PZggtrI12uhc8U0mpMevIuCsciiR+McrecFj/oD+bcP4hMW2lo6FyolH
	 6rgKVKRDukRe++PaHWZvsIha6maa28vmc1kIRc/uMlhBb4ISFddjU8KWjOH0jBpEYD
	 jBAULQVnka0Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CBC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034423369.20601.335722804155622688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27099b061ce67987dfa4e9fb97403001e7f9dfee5e636e793ecc086fb761e5f7
Date: Fri, 25 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790344233

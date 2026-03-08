Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1240F265621
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773006894; cv=none; b=Y5NvK9CUlqkEyAPErGWiCNBFHeXiEobClwt4uor+hu5wTOYY76e8FcdaCFaV+MKgysr5i2Nq0Tlk1ettDONPbYW62ely3XCqiVhjVV5RKtSvAj3Yx7D2GjbxWbsiumJjR968OyFSiu87souLx6rg0d3ZTxKwJm5yc8KPT6N/RmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773006894; c=relaxed/simple;
	bh=9ojWtVgio4GlkBoyvYQAaSeOrRAUKDYRfER+u1YGNEo=;
	h=To:Subject:From:Message-Id:Date; b=n+6h6f/O7GoUa+b4EPAJVggZZ/OX2S9cI1Zcxuts0ru36IEE859WY2+PYrVgvYimLviy91ZU6R8OeZlw//tFdFCBMCIBgfSMnvXbmO6RPHsFpkA9RaW2+YsFDcTf7RLp93WrwDPfyKMFxdvFN3rG7o1aFWUzkCVYzw7mnFwa/gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNxKqofU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNxKqofU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8DCC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773006893;
	bh=9ojWtVgio4GlkBoyvYQAaSeOrRAUKDYRfER+u1YGNEo=;
	h=To:Subject:From:Date:From;
	b=FNxKqofUVfVMV7ENaH6wMiwx9reLQbOs71Vyi+dUgyslROU//BQ9S5ti4IJpUD7wz
	 UQBNeIC25vMbYSpnYiRqswTdl+l9euhjgWKJgfk2+nRs3iUCYCCbHetYURUsl3Kw+n
	 62XF70A2DDGdZpieLKQfu+xyah+br0SVkkFi/luL6ietpgDCLCZh8kVvD6NKmOAtLE
	 RRC96lGCk6kBAn9+Xfl7UK63vgZgLQyjkfQB7lCAIMTcswS0uezh1TeNMwihw5ODEb
	 tL78L4STRzyDNo2nHOo3b4A0YBQR/gaDW7ucYtNgBOIaeozAul72+NyIENFHq0PPOw
	 5WiyFYtb2l00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E80EA8543
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300689359.2191.17246125138856929273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23944e9e0c1df4237722d1614d21c85609b61d0b0f5692a93ca0a4100dccf9e6
Date: Sun, 08 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773006893

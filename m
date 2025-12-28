Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219BF26290
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766930034; cv=none; b=QH+Dxq8z0HVAi2HIDFIGIkXkdiRdl7/Nd78KpQmckspVYYAgFu+c4uqP5igwZzNGpEZOo/wF/G9RK5wJtHkp0VTXHn9CjXbCWJuXiRUzKYEOgDaVBZVjXM2r6SnpN+fMYY7s+7YNB77Pu0lcB3gycSaMQ5R2KdS0d4SLm0iEWAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766930034; c=relaxed/simple;
	bh=+QYbKHKZHxqnONDqS0BO/2I2IzCX8kJgjYO185LTTqU=;
	h=To:Subject:From:Message-Id:Date; b=YOsLNRCop2uI7wJiencpqX3jbSc3Ybaqf6FPKe7kEMtG8AKZEVew2xJbVR8/jXh0gOFMIRX+p9Hvg/81b6iwq37/9ixu5v/MQp5Xa6GYuVhUhvCRAfWpbzXwd6oXssBAeXZapQKaZGD1Gxuhqf9TxAFZV/MJQpju5D+DfzCTQ9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRhSpzHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRhSpzHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE210C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766930033;
	bh=+QYbKHKZHxqnONDqS0BO/2I2IzCX8kJgjYO185LTTqU=;
	h=To:Subject:From:Date:From;
	b=lRhSpzHCm6cnqLEgUdusmB4IsnWpNopVmmHTXgTdHm9mv+1PKkItOmdVG4Hlop3SX
	 C0SBWk7UcxiipAL+p+ipJdmtjJuLekFIb1txURENx16Ws2cLOS8NntFKn3EnxB7Los
	 UklsAr+B4y9FXCeljHkgeBGSLiJn1xKGin7Bad3nPZX8v6c0jklPwn+f5eOS/Aq9YB
	 Ak6wfPTCQRirVI9A7ZdJQJ1aj1MyBB0EO673ROBziRJS/nlWRtSQUGfP87UU/aNVNQ
	 xtWcrKP7UlDXGdB5csxXWLyTpDD13cP7l9KCsTP5VN5pr5YW7UZjqkRG9ZjPLU00Ov
	 cpL9thwtcuKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975BAD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693003359.25954.172356777655716540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9263175a1fe62f03819dc5709e3f0db239c71a96226cd5df04749551065f9544
Date: Sun, 28 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766930033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8652423D2A1
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777870654; cv=none; b=Ttk8CQmUrv+b/3zWm+rnSfe4y8OKNSEWG/UyECLy5+VRV+dE4fkv555Munz/nAX1d3+LDWW3twe3pvPzX+IvQz5d3Sv+bP2C8/j1eNhXJ1Iwqw+YjsfkhO7nq4bzCwUg40KlKk66SFGlnMk4GruY6Sg8ofzeQOUrinDGn9FSsBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777870654; c=relaxed/simple;
	bh=553zh9ERrE9D+VWRjFn1iE/7x5cqhIzwT74EO3RWTyo=;
	h=To:Subject:From:Message-Id:Date; b=U2QigHxFJiBbgIhUcCq2Gpe0u9gReNmwPiHkCoqMxElYHgxqIDWGuEqSW7umTMFH6F3cD+1w4oXNsC3ySbP6Ns9Y/auDf5r8fgmM6WjtI/tE4CmoHO1gYZQuIoAetamV4VR3mX0LtA/9CNYvFcdW4jN1gcZQ6SkGio698BuFfEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnxXJcpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnxXJcpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7522C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777870653;
	bh=553zh9ERrE9D+VWRjFn1iE/7x5cqhIzwT74EO3RWTyo=;
	h=To:Subject:From:Date:From;
	b=XnxXJcpXFtgZCjc4QS4Iq4YSQNavyslwvyyeZU9FbprdtDNxiyjzAV0saZtuai1sX
	 34Xa0AuZLq1Yvr47kOvTqflYGgpCbGq2Unlc9mzv/2Q6vUaXS+Al06OmxSG0/CknJJ
	 GbkCa1+MYkYJBlqnLZZFyQw6ZPn1kHmxAEbWDFv1QdE2+Oq0Umy8zTnlLZdPikOI0X
	 Wvhb0+lSLRSZtF+FdfVyasPmK3al+orX4C4hQJW+9fkqpMqT3UBSk6Ad5++yxzzTw7
	 bOcNy2ImHnqU2gK9b1Alx3Z8KbHipRb3R2I1X8d0BMZpz7Wb43esSyilhc4EENDMQT
	 FEWpgwitF6egg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EEFFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787065368.17004.10621528533504701885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c96e4d8e88aee632ed9d754e1ebe119c11fdcca8412f306dfec131e678a4641
Date: Mon, 04 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777870653

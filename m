Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4904D156C40
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741904334; cv=none; b=SWjWfNuc1e7+VIOP5pRZQdTe4dAJwoeh7Dlq2I+kDPtzQu4cTHgI6M/t11imbxoaLnAafWDhQxzZ92nk9iEvuoh4jaFKjtcMeebVajIl1mkhzsEWUH48NMQIi2NjSXLxhMi9e1zvd8FI+HDMZ1VV3GEwWllzHTn6ZQnDKmH+KRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741904334; c=relaxed/simple;
	bh=CeHIqLutiL22QodEZsyVna28wNbZaxvsDQod4baup00=;
	h=To:Subject:From:Message-Id:Date; b=HbUI+zsF8SzZZQ1THRZBzB5gY60m2qNiibJYk6K95GxATdrUHFGKDLHiBQ0LI1Mn5pVcGOPFoD0PSqMNPWWisFwtD2w6lAxbyTWFqfV9Yd7JKxJyNLK41c46RAh3JN5Zx12+YttqNl2Biu9Dqf25Ovg648hsF1b0bCViDvobFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNSvkiYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNSvkiYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5117C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741904333;
	bh=CeHIqLutiL22QodEZsyVna28wNbZaxvsDQod4baup00=;
	h=To:Subject:From:Date:From;
	b=rNSvkiYCCWsZtfuYDiW9EG2ALwqH1quMn7X9EuFCHVMmUnvbI1Pyf0c8Z70UhEWy3
	 8vn9XnNGW0VvPUBwabh3CuBGfAbRJhavpDHxzE32tg6mM987QQ/UV7BbQRSLpS4WSH
	 dxv2Wvq6TNbX1PueOJg0Et+Z0H356ZNeDZF2Ca3ZA8yprWLcxMxDDWXqSa9MALrw1L
	 r8e0uOODnuKHptkr4S/II+R2Wr8+u26b+yCI/UlSBe0mPnswVTTMBbpjj1RvNO2JUq
	 hqu/dav9i9JrNWiDtfs8AoHc9Y+M/aY0dilJ9xlJz4cIm5OwThp8H5hIwIrepMhpAi
	 NwycyrrtbuCWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95104C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190433359.26096.18407294630701642267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fb496d3cdc59f7477a6981641352b0410671339d8f489a98e890c18c509b19
Date: Thu, 13 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741904333

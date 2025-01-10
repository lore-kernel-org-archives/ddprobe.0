Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442D520C028
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736502354; cv=none; b=rM4bl8oS5NWs5RYwiSpRy86iHmhAQKYHikMxChxIhjNNV+XsR4gktZ5fOU4V4JsqikTgt9le8Ec39g//xqmV/jwi5ZNEdCokRYlQe1qxVShSD0oxsPJwgRCpIr5cMA+rdxxXu+uA5E4QB0IpHVGL3ODN4eOaBg60w3wDP4sOGu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736502354; c=relaxed/simple;
	bh=ypjUGNgai9mBkPtckAaBufuSwdSVmKdm5DaZEedZSkc=;
	h=To:Subject:From:Message-Id:Date; b=b7Q2/58Wkl2oyGdYBmpRcD2oSsxefGXaVPrt32uICBgdCn/B6NE+Yz97hR2VTqkgi9lXTK1DGiASS5lTQN9+p6XuIyyawiZqlRxiuRc6fXWVugjc/gX1Nm1iOQY6QZqy96cwH0eWZ38/eiambze00gSR+7ntvkErQSWt2ZULzU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boQMla3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boQMla3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B313EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736502353;
	bh=ypjUGNgai9mBkPtckAaBufuSwdSVmKdm5DaZEedZSkc=;
	h=To:Subject:From:Date:From;
	b=boQMla3IkiimUm6FyjkrhOcoHc+/T27R6XkO70VJ8JH01s+fUO7ETe53O3zJ8PcfV
	 Q+fJpeSzWxXmSNViqGzjfUfKim0JqiBjsvb8nNbN63ikoQT89kuOtuzP4OnL9Xaqab
	 DfDoIsKC+Vw1JTsy/wHZTMeOMYEFA3nBw58Oq8pDsoyTuDGthUZdsyr8O4/IHkyNKi
	 afM9gpfcLAiC8jGrDj0ClAK5QfO6ppPwt7TCQ/G6yodNuPyh05/kyol2dXGhMg3RFE
	 Y7s76gVyitzj6AgFB6+WIN5+AG7+qIgnfqT4w8khP9hkl82N2AtGfLPXDXxg87iRyv
	 4Z9bcFp5cyTpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F24CE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650235364.2815.18281550775102608032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c88676e8f0e608d5571c71cfb7529f412ff723cb65da150fa90e82aa2a2b56
Date: Fri, 10 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736502353

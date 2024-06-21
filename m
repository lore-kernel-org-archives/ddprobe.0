Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AC8382
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718930423; cv=none; b=CPqUnga+Tab1292ysOiNhKoPhD/pJOvgIwLmizuQduDj3xnNp1y8VT3yetOHmm19ysYaZnefqrDpCb6CvaszjpJV6ZM/j8CQq9oWTtR7PMQtdtxGUPUifzhnwISXrkqHGOhPyI3tie6jFkHH1+KE6tMT1U+6QZ2pBssfbGty4zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718930423; c=relaxed/simple;
	bh=XIVcLEf7fCKymn6I70tloi0YmUz9+CwUdIdCXBdJGv8=;
	h=To:Subject:From:Message-Id:Date; b=p6Dg0aSisiihhpblHQUtjAg6T2d/6IWTrfjuumHmvdrdTjIBb44HLP68FwUT2T+5iSXfL/58HEwzbNDkC1wbNSDphpiMRBAVEEXrEcTCK/7rHLNuJVe7sMNKz0sWMpL56OthAc64Wl+O30Vbct9+ErlLHXrHik2L8g++TAxqFzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrnV9cZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrnV9cZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC624C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718930422;
	bh=XIVcLEf7fCKymn6I70tloi0YmUz9+CwUdIdCXBdJGv8=;
	h=To:Subject:From:Date:From;
	b=TrnV9cZNoTnwqszY5XdKYegeKUYW+aubLvrPMjNFXek0Gaue8NPBWy2pHhs5ehxdJ
	 200zR+ygw2qiRlxqA6TWhEynY0unhKKham181kWdLixTYLJSpYAonpjPS/40nVdPg4
	 lNCTi3YkUpVIfE9rXt7GB8iiKCvxGKjyeSRTNormKCzZk3fnxGXqELfbxEbxBlW546
	 UwnwV7CorK+4wb3jCK/wDegIEepT02Q1jKEpS+WKcLy+bXH7DreDjoFmUK3tXV8wE8
	 MNtzWWy22B4gqxGoHpVgn20/8iTEl/TuA4/IKpEciDzVloS7pIlggFv/EwuTfV5+ET
	 /nL97kOxbHukQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9618C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893042281.4179.3644179527684912772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ae4d36542d0584856d0822e0f1a2248b1721c2b3cc62817c39ddb7cf1657b6
Date: Fri, 21 Jun 2024 00:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718930422

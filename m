Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179AA224B1E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767929034; cv=none; b=Qz9LuxHRY/SkzMSroc0xoIH5EpFKRhcijH16TY3A9PjRL0k4KqBG5nlYjxD87PGApYClTFUPWwwXODwP7Xr/AK7HYR3ZLg7w5cgV1r7bS1DA7OQU4ai6LJOsOMj5pvawgi1iaMuPCdGJVShBiWSsqZgdrcoj6sZEAyZ/WDqn2GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767929034; c=relaxed/simple;
	bh=jtwyqYacGXOb61t2M6woPrP0TeteI64jggyBtGq5bwA=;
	h=To:Subject:From:Message-Id:Date; b=pIkBuZyIGVYR6YQdZAZ4Ss6zPQBY3mlwQHZ+IXMi/XjXRxPsiseNztXCuh89QYmX2t49OlCknk62JB94vV35v1LDmJsSjC/VYXDoItB4EVRORiJdfJdC8O7dQc2Uo3LYcydVx8t2XV0NxtujQKU4r+ayXZ16BC7kDvLKRQ6vumI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDdflEr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDdflEr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71EBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767929033;
	bh=jtwyqYacGXOb61t2M6woPrP0TeteI64jggyBtGq5bwA=;
	h=To:Subject:From:Date:From;
	b=jDdflEr/HcQQRRDarIZKn4o180WvrSjzcFi/Y6hCJEYiCqBY3pbDp/cGcEExVIgaf
	 gDOW04C64ZpHZvLc12WI1+TyqBHS8BN7cP997/kd6jn9r07/IUv+tMVH0CG1vhkKvJ
	 Q7q++dJow3rjydBBUf+tru70u+vMMi6AqgHMDOQmCqnGaFjuxXAI7XCNXpsRDNN/1l
	 W+ilQ8oHTciJC3QDcrDsDU1UHuGElo/AhtiV6w0xfDDnRWAmVwtcF/FbPVR5c9BWIQ
	 nhY3hRVwoyhSuRAv1oLx4ICq0vufflZ04JbT0L65mwWR+92bMGGtY6nuDXSx0o88D1
	 jobiC/wH5XQXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B2FD232D1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792903359.22721.2657086701005850947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a4bfb7a2b0b531575fc4f382c6488beee1f9d12dd5edc06b55748a8c715188
Date: Fri, 09 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767929033

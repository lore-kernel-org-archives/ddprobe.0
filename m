Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD13AE71F
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786353034; cv=none; b=S9q1y6IpQtmYXDajwEkoaDOWIu8HVNkyI+G0U8WMx5SAImOMExChVWlNAtQ2gG7SeN6ZvQ68LWiTTpkPeFUA3L8LV8q/iFxXhwBjvOzRUbRSUh99TTn82BMeTgM8GrvhxxZk2SgJzXpR/Cc57/zYgYQW8e6i7SsA7HcSZnqLVsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786353034; c=relaxed/simple;
	bh=p3G0jc0QaIaS3+Gg168LaaeXthTJ05hiXhK99L2FwyI=;
	h=To:Subject:From:Message-Id:Date; b=vDwggJSEfijZb82UuWEFo+S3IYuga+1yZD8BpZ/24caYoFZ1jKiGR91vrkTGFZJcgggeXNGlOpueMR5ySLUN92cwSO3d8TAAiCSihWx50ijPE+gBvgVWaqQ0NgAgIKGxdBHaoEOoO7T6dS8sm4hZmTuXhzyz//b+7nH7ZB7mWpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCATDhPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCATDhPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4D0C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786353033;
	bh=p3G0jc0QaIaS3+Gg168LaaeXthTJ05hiXhK99L2FwyI=;
	h=To:Subject:From:Date:From;
	b=KCATDhPTYD/VXLKsoRL7yJfs6CMLtG8EOum7dbdPKSquUy0iZj3Qw8vSsBnkR/FQ+
	 GkqNAtwYp6tOwqsyXm/jZCw0+9iSEAJh3LEMqDVTM64iqH7KVy4K1Yxz5SWIRL7vaC
	 JCfTUTETv/ZaENNOZTOwUgzmq5VOaPY3PhaJCBKWmwY8rMU4jUQKK8y6BbDOaQ2MdR
	 ydxj8s8LsWuh9zUM5eFz/DzT7lgkDTBbw49KAgWUOIIQ7B36g6rtl0vnGqXBeb4Q/i
	 VUdgAfU2JzL1Az7nxAse/kmsl4gnvtT70QUyilspL2on3dXQa57wSVJplczNFEaoNa
	 QiwMRlOzDpOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88B2C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635303371.19712.11951392339598025714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628a923380a02a109d3a0f889db1e8f6bff099d45bc374f2398670e36556cde2
Date: Mon, 10 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786353033

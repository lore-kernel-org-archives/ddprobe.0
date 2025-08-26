Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BD1276025
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756178994; cv=none; b=Egx/+Dv0h4cxkP7cMj3+XU32HhNlcW4heJPkgJKjfkoUo6rE6pdPbxhH2q7IRaNlv2uzKydFoDDXqnPEm88njZTb5EebyfIytZBZA+NwOIHzfx6PIrRWnLJWJAz5sge3cG+Q1MyJcG4+dFCirc6xdKiyrEeb7zIjWfKiadnsQHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756178994; c=relaxed/simple;
	bh=yrdHYcJZkEHOaQJ71cY7M2symgOC12OVrDv9bSsxyaI=;
	h=To:Subject:From:Message-Id:Date; b=cENMpvRJfil/t9YbnVmzgVy9xSLGFq5i4uYdKI/TQj5vpbsXqGMxPeYoSwX3xpnpyutCTGz0WDG8o7T7Xa9C5hsvOKKPni6LS/qoryPgCG2rkKZYqiA82+3Hj6GQo/5Vu6Amu9ioKDpL4A3Hiw7PKQsjX3dQpFw2S+dHK/8sxuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Woo4rnEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Woo4rnEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FBEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756178993;
	bh=yrdHYcJZkEHOaQJ71cY7M2symgOC12OVrDv9bSsxyaI=;
	h=To:Subject:From:Date:From;
	b=Woo4rnEym6/AjfTPpwFkcKw3m94ystNrdrKfP6IuisFkktvgrBJD5K9HM9EHxw4Cs
	 UYWbvdR86HMnwCS43glOhUehTQkTEMoTPIZewMuJmz/ccqbJDMtfMNHphwHtFWtCx4
	 zMf4FcRFgDiVI5USPUfR2N6+KH1jz/GMvUGqpjBDXhx5qgDy8lV1Sgz4FoeRABhQ7i
	 ju9r5QGjzllYgFaztXFC857yGmXAf22RPNd0QQMvClv+rUdjNIws74705ZsBtfX5bS
	 l1lcOq6t5uk4OtEsH9Jah08fzDqeQND6ZDV90zc0Oo/1RQy0rLAXykoW1JXdFAqBVM
	 VpuqZUvIwyP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D9CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617899357.10091.18189177960603164194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13703b52269b1d4b63de409d7ebbb6799a77309225eee9e6aa808d88e5b2fb4c
Date: Tue, 26 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756178993

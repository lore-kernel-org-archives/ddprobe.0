Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9601F8677
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754420394; cv=none; b=G1r0WTccU6vYecvpWlpkLqMdw5aGu5VkWPEpN3fZ7lM5fvLiLD2+u8flG5RQrs3wDntfrRTBxWDYTJKjx20fYysSWy68YzqFCSiB4SXTncb6biIVbdHxPK7Guc0oZdmXJ8jk2yFt/VMFFJGdxys+Ka7IkQAxsI5ehBW4UOU2pU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754420394; c=relaxed/simple;
	bh=Sjik3kIekMYNli2bjAKIrhnjd/pX/379s/xEhqt4IQ0=;
	h=To:Subject:From:Message-Id:Date; b=E8kzbrUDGJjMWs4H2/5obiQCgMvuFcWz00IdyHFZEBsoNDPe6vtdGpP01YdiWr85v4z2Bi5pqkmmd+DbXVbZSvaJAA6rE/cC3CCHEJE7JLokvaZ5AjzyIOncvpROSOL95Tew81nU7puC8C6I2BNGLHZlqNG3qwcXRZpJqu0JHKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIX6nWo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIX6nWo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6616C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754420393;
	bh=Sjik3kIekMYNli2bjAKIrhnjd/pX/379s/xEhqt4IQ0=;
	h=To:Subject:From:Date:From;
	b=YIX6nWo0kkpyRL1hmsPBsSU/XpJ0kuryokCNys4BZsC/tAhubVmfBQf5GNPwIyYhF
	 pl/X2yaTWu1f7ik9aJNExLVVkpTbGxAf/xOCioP0Qxj4UC0vXnsAoH4z901HTvW8TY
	 NSioQe4FRMaDU2PSHyaRwUS3G6B3ZcQ7MR8kuL+39NECf2Pkf89U45Wk/LS8n57trq
	 pcZDlxcsDFPNMjFBtXbgWyAMS91ldEgj/xyaRucTSVKp2zcO+n3cgz7nhK/ivvZcYQ
	 eqU5NZG4O32qoefz3C+6mzLljc3a7n8NmATwvyrG5xKqHMB9TrW0GTMpYwes2lVbCM
	 rNmwkBux0Li/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93421C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442039359.18636.5710238450195313046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3011f3c177452c1b1406e8eed8fe48ca2f5329e5dc9d5b2596180aa4031da7a2
Date: Tue, 05 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754420393

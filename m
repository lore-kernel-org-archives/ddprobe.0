Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EED421D3CC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775167534; cv=none; b=TbGVMuNOkPtjxunZIfGl5RHDS/ZQGDBj5Sm+XPmVdiY724ff4BXZcG5Wp4TTeq6+SrzgGTVpemriyQTMeXzGfSsQ4lailPfZ8KwzHLYZq8nmP7RsIWgMDXD6hIW6/QoIy2Iv/Y1aSuX37Y7TgqV57WS0IpwMvfDL/jYJuqpdsac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775167534; c=relaxed/simple;
	bh=90rPWsq/7JqQw1XwGZ4718ULAUiDYAkxYS3HiWoRGZM=;
	h=To:Subject:From:Message-Id:Date; b=vDglkijKWFfSjuO0xikBIWQ0rCWWcl3aIlJMXmr4hdWJyQ8O27Yw6Tt3NqTzMoPj2hA+S7ejpHSKtQnHsoIc5LHElotCbyB9AWa4xQ+a8i5AqPYg6nVc7oTr+8418/V6SPOc1fnxacXmICbVn6D8dTaimg85Oc21YveP1jymA4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKiZi4kC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKiZi4kC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCBFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775167533;
	bh=90rPWsq/7JqQw1XwGZ4718ULAUiDYAkxYS3HiWoRGZM=;
	h=To:Subject:From:Date:From;
	b=JKiZi4kCb3v71rEWwBI8GmTR7vrK0kBCxrO+B7TmpVOaT0Wqshhy6oWbkMEuWN1+J
	 dURlten9Pm67tRjLwHfbCaEtUsGStP6Cwi4ksy3jSAxSK0IAT0+0ybMOQUmlWYruBK
	 mlsmV1OkePiyu1JFYyRo5zeKR4MLRHb1jzpKAXTMlOQzSLgGLonfTULP3wI9XnPU7S
	 vemSbwTqWd1gFxoBzubM4Ly8bjHKJZQ1arwM82c1baMayEaIj+RixDktOD+mx5JgwJ
	 Wf6sXhiXwZp2KMC9de0vOsGCO2BEaPHN9WE0aosC3FSsOC/baLZ3jwtBv7stiwgiR/
	 uUapXhXnYzimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB8FD6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516753369.3822.11324575809802691984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd21d26ef03d85d14fb5592297f2c0b9aaadeaa3a98b4aa23c9b2d748ef16ea8
Date: Thu, 02 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775167533

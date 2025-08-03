Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AF42AD25
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754234394; cv=none; b=Ufef5uCqwo5NxpYzEmumkUWnd06AeKbFR6v0AzwaUN5fwbVGhE9+AwzORht/i6mH0E6gLxhQNLnrT9ugxR0k7hUxGgK5C9Aqt5ZQQYYvRtc8EZWfElbtjAfyhx6rg9fi+wW+fV4r4QKghTnj2mNa8irlDmxEDyDM25yrCcvhsv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754234394; c=relaxed/simple;
	bh=axug+ATZmQcKZHhoGmhWusQzoM24W+znsg+7xl7k4m4=;
	h=To:Subject:From:Message-Id:Date; b=lSMl2OCZRsU+mTlwCSPuN0LCgUMRFCfc9qfBSSCQnsXhEmwGlHaQjHURCrUkh4VdrERHUJlMNMuWkW2tohXtK90tfrrnUzMdfNhtqAIbru3hc2a3mkXBmAfVCN9q669wskrzWxOmWWRO17nmA/7C8pdZir349+HrotVoAyD4nRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urI8nj5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urI8nj5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1323C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754234393;
	bh=axug+ATZmQcKZHhoGmhWusQzoM24W+znsg+7xl7k4m4=;
	h=To:Subject:From:Date:From;
	b=urI8nj5Q8AAdxRu3t4es+GcbDKNq4wlZ4Ts4o3fSJrh5LCpSG9DXYV+trR9GBzJTy
	 e+CvYLOqWc+EIC77JIpOulwiFh+lXjAgUcAzcskMOt5+RDfvzsJoQ51poE9Eo7Nq91
	 /JerMw4g9hC4Yi9sWNPv8kfz3UiluPn8A0rqWAQ3jlBvdsQrCcHn2K99VaJ3Yw1SGC
	 74KdOO9PTJcXspbh4OSVZAdWkipQ0yNr3f/iQB2Hhycv/B51w1cdu1/97ofmO+Eyjy
	 ILfDqkKDARBVWZfyvSdLI0SimhAFaOrXrbCmVYnj+nXhYS3gIPAY+DVKj5+0IcXYUr
	 /YpSMzj1a9+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA4C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423439358.8108.1494939666541991202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be5dbc0297853a241785110c21dc1047293b0bd43398f78d9e359b29a9b5125
Date: Sun, 03 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754234393

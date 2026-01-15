Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF2C29ACC6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472634; cv=none; b=tlyPWbzKAznZOQwnLMRtXtZcwmY6v6iRxfnf8nte/vZQJXhx3NR88hQdGZpsqqwIkEF2H1Ldc1dOmDe/hGDyyLhRZsZQMS/rjKecVepHJ7WOvMbLeCv1D77lrmwMDtj4zH4uh8PFZBaagcSkxW+3aD6pnmmitQnHkQBuHn9gpzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472634; c=relaxed/simple;
	bh=a7dZCAvesX3Yqs2UJhUyWsIa7BMi5vzgCNiMKTX0EUM=;
	h=To:Subject:From:Message-Id:Date; b=IoMEb593GaCjh+i5fEuglyjAkQOjQXB6z4Bzf4iNv3Z7XmdukGzUQv0bSUh4XX4syAJb1zWzwA33opN4NutKt8R4l5H9VlhMrSJ6A+LSDkYZX5FHnSafb3k9GKm9prJKhm5iQfFijjH3QisQqTdxYZEU5PZ8retZs4vyae7mZKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idc5g7BP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idc5g7BP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DBDC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768472633;
	bh=a7dZCAvesX3Yqs2UJhUyWsIa7BMi5vzgCNiMKTX0EUM=;
	h=To:Subject:From:Date:From;
	b=idc5g7BP4+cq/gHC4X3fPR3FUiL5LX7+8BvLCb9FIKvMfFt9jNgEyOhFiXV+PG/5E
	 rljDHiEsodDSk34mLJVK5e0jJzubbjszuufV+6jhu/qC9FwTU90ff2glwFfqarfrJq
	 Nj9C6DUoIa/VC8qLOJL7VXY11a2PJkXEgBHSiK1bASLeJg3LH3iy5TBmWePa1ucCMl
	 Y1dnuE/m7ljpXdMfRzI12cX9nOMu1uXGs3C/dsRmZr31DDc1IYaZvExWw4ryJuu1WF
	 Op2r7b0OJKroTw5sKfydbTqz6QqTCESkkNIfsqtt9nJPsMd1vgDdHIWks7IXBhutvd
	 vx+b1qBlOXNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902EBD41161
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847263358.7267.3667467036570380124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31dc09be1974a8ef66f73d8cdf68302d633c2bff9c8e34402ec8cb524bcba16
Date: Thu, 15 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768472633

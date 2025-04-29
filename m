Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B6FBA38
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745888394; cv=none; b=UZBTBBtz69xztO98xGX8dfiy2da0suOQ0WB1InkUfu9X6KpxH5DJtBsSLd+zykchqgRCKPMg78Y3bKRlm+pfl2uQbQF/gRINv6NXGwi6dYJn2saxqkGtJqUxH3sy0JS0l/0texk345TZGEQsR1MzaRYkVUZdz/yQyos6n3GmAkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745888394; c=relaxed/simple;
	bh=tngCQyRMEKE1ZEaSr0Y1vuvaGd5QafGmBdfpWk13mxk=;
	h=To:Subject:From:Message-Id:Date; b=RwhaJtBApjdlm5+tkVas5+VLQTfoViNyHmMJbEHdFxsl1SArm9ZCxRkcfVZyAMoIadz3WV1gh+4KgJ9Mdi9ny0mnm2oHUb0+oWJdXbsA5vcwA6P9BoanZ39YyZu5LgSLeR3P6dvh1xHFRjFrNd8OFODF4mPodMb+Ox7YzTRyc8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPHKOb7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPHKOb7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E48C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745888393;
	bh=tngCQyRMEKE1ZEaSr0Y1vuvaGd5QafGmBdfpWk13mxk=;
	h=To:Subject:From:Date:From;
	b=gPHKOb7tblym1VG5FiVVjvNzuV27ghAug2sQ32s9Y0LXtgNsfoS5YpbfkwQawbV0s
	 iLsqmAmRwyfYogu/QWIC3cCbLWvDiHAAXAe5V9+GMbG9g97ZltNRwxuUXIj0p0zLjg
	 EL/GHqL6/V3MJE9BrObYCDgJvfyicQEdKj6j6wfv+JAxi5lIXE7ObQ3+7shZu43bsU
	 USAUAwY6iNcNrm/VtFOy+XUjLK5ZPihGSGPdh9o0l2BOKMbIBoJTPDJ278cYmbxLAb
	 TCO5gBSrAGC5M6JNlXiVdrRBt+EQsgKDaWH0BayJvthMNG9GoDt2UtZ46yIlk83ltT
	 jVhAKOwHdRpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CE7C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588839358.18659.9173627604037295139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bdf7ea1223a1ce7be850f4d01739fd0e566045a6bc863934d9b72741a4a046
Date: Tue, 29 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745888393

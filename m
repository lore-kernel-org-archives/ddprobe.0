Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FE523E25B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782493114; cv=none; b=SrnoCciYHKhPy7IctR6E0NyYTcwcP8KAk/uuUhPp+F2bs5ZWBOx2uaWYNo1YxKyAU5/6aJ/Y0PPrnnB8BYEmgUoJZcbc/5IBjY07zmAOcH7q0hyN3RLeGyIlXwwSMETVVFd3JRJVrtb84h9IW4aBm6tR8IVsd3qkv6QuO6evW78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782493114; c=relaxed/simple;
	bh=ZOgdQIXQDkBRuzJQ++O0YPisXshxt9OnHeofpxDRKSM=;
	h=To:Subject:From:Message-Id:Date; b=P0qxVif0qIsDrk24N26BCMOwvdr0yURQZKBoTd70l9lnGOl9uaN/t1Z+rJaJX2D+hP2QwTTs3owgsc3HvQkoUvmlg3Xbo8drkEE2b0cq8KvKAerTk+TF5XO1xcCp+Bd3pp3vTXJsWHSYUu0IJ7/VCK/trovHadA5eKVloIXxS0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Re6522tE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Re6522tE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41E0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782493113;
	bh=ZOgdQIXQDkBRuzJQ++O0YPisXshxt9OnHeofpxDRKSM=;
	h=To:Subject:From:Date:From;
	b=Re6522tENo41fr2J2g6syUJJXzvFvom6t7H3u0XpQmM2vRBUsq5wvk896peu148vy
	 0nlTBrLn0DcBUWBN8KTT23XnQ7lGusZCSnScsYDbobJ3uiw3NdPqL+wyyaraI5sJ4m
	 F1raWkK/po8OL6cCCDlQM6fz1/3GjTzQ1yUlhZ0GTsMxVJiPj+hmyJ0ZFMqZYvKk6W
	 wmNbG9JdW/KDZsfvSSMXoQLi5m/zc9oElhxkQ8yeUOqXep/89Ky7oTLWLmfxfLBeb4
	 XQgaiOvcOIaX5M0KhyvKZkCoMhD5zVXP0Lhj/ARyns06g4mFyJeFoskgAGS9OST+hK
	 0PEK0ST0KrLWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA689C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249311375.14021.11118018619250414636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedc4103619d3e365d2aed7cf36a94621225d982b31124ba7db157a5ba8468dc
Date: Fri, 26 Jun 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782493113

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5AB26AF4
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773537294; cv=none; b=HsT6Al6zAmU9mitOhJShfC0UoPTnSXNvdXoQhxJvWmCjX6CDz6LNX+RMNi/DB5wxyAFo9Hl5xZ4VUSOiNfiu9LAeJVMXdNJohHciWy0VIXo1rr/rYT/2XrpUd8dMg8rNPq8kXBQGfsHddbN382p4WsVRpJeJihxFk2muSsuoQrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773537294; c=relaxed/simple;
	bh=pqLFzWeIZCVZOAD5yFucuMWgRWAHdZ2lEtCgj3mD9Jk=;
	h=To:Subject:From:Message-Id:Date; b=qvD+LpZX/Or7arqGJdyZKCVGd0E+LIaBxLyd+yOavZyTZeQRAchy4uFmxD2JRBqjy53myln6Ch7RFhKJsg0uv304KMgkfEQwY+6TvrlRW7pDnGXPDzSbvB8/AIJFc9a/THUlvmuNGjTu3Ef7gdkHyTJfQkkvfxnZDt3adEwWv+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thlR0yzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thlR0yzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F28C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773537293;
	bh=pqLFzWeIZCVZOAD5yFucuMWgRWAHdZ2lEtCgj3mD9Jk=;
	h=To:Subject:From:Date:From;
	b=thlR0yzHZ+/sa8ntwc4+U9+rWColM7LwYD5BvVVxwsztOzgCgcFi1GKTugiwf/RXq
	 lDo7yX3LJfdJrV6LB3QSa/fOpUTa5/7AL9u5kVlt35oVWVVGUpzQZJZL/C0xIDxMV6
	 q5YhOoWfXBZ4nwf1zkf/YJjMAvslXLU/hROgcvlO27/zkD1/RKMZf3y992SayuGRMD
	 yu4vNmPdBYnqExvno/1EmjR7wTcNxQyRfgIqUPkVWP8dcGh99Xhv2MOvS9Wxe/ztUn
	 DHV+TSQqSKg+u92WYJtRe8jXLdvuxYgz2uzt0ZzK4GwKkeY9xv0Ykllpp061NZTIqb
	 HBY5MyPFbmMww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCE10854B8
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353729358.13752.18059449009362315314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91f4179e026d56835f21e79d48b7c9480e02d8dda970f2fa867efcb10a15fc4
Date: Sun, 15 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773537293

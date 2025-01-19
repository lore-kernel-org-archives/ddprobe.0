Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D5DDA8
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737252354; cv=none; b=nOW+B5HfmibN54axB8o00cHU9NfB122cqGNkO9BlknDJQKoCSmhtOmkNVVUOxdh46ZbzSLD4Inm/yWQQzdn/XM9Fduaj/cV9urZL/Td4dJNykxOLSsYFRykb+lPILpKiuNSMXiawAHLy0KtfDbKkMvJt/sdc98yaU6nKApBzxT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737252354; c=relaxed/simple;
	bh=LkcBPgrZzbc+I9AVUUip7P3kmsJjbDNFuW1u6hMonXY=;
	h=To:Subject:From:Message-Id:Date; b=A05DvrZpc9Vhuz6pcBQOL572FT5N6jrJEEkFLY2cpRlPIYtNVXmQ4qLERwXu5abcMdeDTP/5VBpeBGVLQUoqJkKGRPQUOpx5OYeNv1Uz+XRfZdkRTe/LffEK7V2/pDLxBVNcYKi5GdWK1pGcLzaFBe3L8QID2zGYGJ5nGfTWkVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwRi2soh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwRi2soh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB51C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737252353;
	bh=LkcBPgrZzbc+I9AVUUip7P3kmsJjbDNFuW1u6hMonXY=;
	h=To:Subject:From:Date:From;
	b=CwRi2sohEjbnqZw2qYBF81KuDLO2lBAJtf0ZjCmDqWF76GejMLxn9OIhy9T93Y8oV
	 UcsYXDR27pKEgBuHu6vYJhJE3JS8K2nCsM/OOjn5mpeqBHzhzDJeOiBOq7XYauSfJG
	 Q80mbGJ28bMYAYHTsyriZI5SSELqRTJ9b/JUxI8IGN75keqEiGgj4zYA9sCl7rMujQ
	 3dJoTslMxAgciq9KTDhnquOSCe49B3QNeihwDr9Wte5sPgFhNMfqH/fV8JlYwb4H2C
	 /78w6B1j/h3aJ2Jp09W/dg1fALgk5soay+uUryQvHwwfkPbZxvT/ai047jrWx1E9Mo
	 VvoKhYO7GXP4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAC4C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725235360.11589.4395358844222142169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9403ed3d6a968845a294dd1b858bd5a159c80c9ceb2027f7a898c180d172993e
Date: Sun, 19 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737252353

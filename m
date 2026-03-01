Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8E01DE2D3
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772358894; cv=none; b=g7w/n9ozRL5Q3njAL6ecybG8M6FbFKjGuNQTGNmFKzpSCUPPi1aU0LaDxj7o1xCn5CbxRLhQJFobtfz5sQpf3/ET7hJO6fG4Gc4T0zjQlaUUGpQ4i71EsSX8qfyQlaH00ksO5AMXcEq8GyTafnEr0zlDSfxTMT348cj1SGfaPJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772358894; c=relaxed/simple;
	bh=wxyNPt5bSCYQM66Uxw4Ib/6v2eO7Rmem+EQQvdlYcL0=;
	h=To:Subject:From:Message-Id:Date; b=kbPfW9HEjq2CEQrDkqsHK8FAJdaZGFJ3J1L4IzKAhY4EPF8Sh0BbxMUgJb9WYIiZnzzHzrYA8S4ePmYTJk6ai5e9aAMdohthjO8Q47O6pMDDNVjhgQKGhIa51KVi0/ItwFdh2sjRThaIvOA3wilXkeNg10kJTI4EoLKnA+Jw05M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAJEB33O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAJEB33O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CECC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772358893;
	bh=wxyNPt5bSCYQM66Uxw4Ib/6v2eO7Rmem+EQQvdlYcL0=;
	h=To:Subject:From:Date:From;
	b=VAJEB33Oi5o2Xs3Cn4ht+eb7rQx8SU3mWo9u0RGwR3BxhzQrb3tkVGrU9UCrcPe8J
	 7u0KJ5ueas1yTs0lRoc9kf0kFu6pvzsf8K1xVTAnicmZNnrYxWoZbHIjrImosxv+N8
	 d/HpPedVH/QT8j5lVcJGO6EVdR2jWPOpG5AyI0oFZoPBamXe2ZxW6k5j1xXBKJzBrs
	 +8gt04OTQUuSU5+MZdL5rxvT8e1Q2bVm44suf1EiPtkJ5LkUb6WnD5HusVFHjnXJo5
	 kM01+3RcwyXzITf+hYiAxneqkAK/Dj9G4qEQLukREIQpOJDOuOTiVi7JO6W5QtAK7r
	 dcHtyJoYfHErA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E45EFD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235889360.8254.9428416266035110330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620d791403f8f602a0619015c9c3bec2a36a1bdd45055d760de62274f9aee95b
Date: Sun, 01 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772358893

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267CA2F26
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728624954; cv=none; b=AMmc6xdTM8/8qkHULukH/fvHzOIK5VFt30PgKWQ1SfWG8A2kr3H3mSyShuZEM3zy82Zc661HRizGth+zQUX1mxQUzZSAyTsBHtVAKiC+/KSCQ3u2nETxj9qdgTa+4GLdXWDPaSFkFr72E4NZxeFX41EiSE0R4zQmspmrsLWZsIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728624954; c=relaxed/simple;
	bh=IqIJHMl0/EnOcXpLSByma200fea8jK7q+5cxhucL+/0=;
	h=To:Subject:From:Message-Id:Date; b=cgkV0+0fvnFOa4HbpO4dc8ZtXOhkmmdCeubQS1D8xJLHEdx9y9t8hg7tUTs/TveJjf8I8bZRNdquJ/vMOe5obinM128t1ZcUZxLAHtmFcmnAgZoZGV+5B0uvrr2ou4ZpFHAITOn6jLusaQ09xdo1BXXlfiRH2cR8edscm9tGMro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTWi+oC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTWi+oC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3849C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728624953;
	bh=IqIJHMl0/EnOcXpLSByma200fea8jK7q+5cxhucL+/0=;
	h=To:Subject:From:Date:From;
	b=FTWi+oC7C9aT5moZBYWVV/YbABMdbVRWGP4DD0RsMF50XnvJkoLqJckeUp0UNcGVY
	 NELNOChXxfqlc/h59JhKfWhwUJ/mTs5LEqOX0zMxKNMox3kUe9/QjjBAnOCLYIVtp6
	 oB+Sg1c5LlkPwXu2JfKkVlfYKbOR2BGY2BN2mEyxTzMA0qWYjhnSJh6qEwU5MZD7mj
	 kJA3Uyuta+CszwUbkAX9qyF3QLpB+INvcfy2N4hsfOUrtxg1OBZSCn0smpnLjTR4Xi
	 7HcXqviL+AGcXo9r2U6U4pnJbpiYyIUfekvmuA6DZNhDTOtQ1jXVeMxJg5EINu8ktQ
	 LwrnRft8YaxJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B82D24477
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862495359.7423.16921402364135518377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02e3b6d4681d75155c7a80ba2d0fd44994c3f3a9478cb4beebc37917d39dd3f
Date: Fri, 11 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728624953

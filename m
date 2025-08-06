Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BCC13C9C4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754441994; cv=none; b=gAI3ih4J6H/wMDCErONhMFSuq+UES7GFDa1kwPIBLnFklfILWtcNsQUfO+SbdiP1qt7q487vO7+5BAwUHr1GcJixogUuJrbEVYllOUXqG5RHn20MIsjNjiYaCV0rYetts/w7uFGAPXV9L/p74kz8tKsa/Bmca5cwGMdO/adNH/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754441994; c=relaxed/simple;
	bh=npsl8E6R5nHqGgtRdA81wTiK0ZasVwokuuG1HwHkv+o=;
	h=To:Subject:From:Message-Id:Date; b=nq/AFxJPDv8ohuSpX7Nes4gMNcG5+EeLiBJFBZgEf1nUcbs1/+DG5oAgOfpAGYxuiHKMrOHNG6sMymPNw3iZREjWRvc4vGnOjsSoAFpr4R1djildLIq7A5OoZJ7E8LZOeofEya5Ojju5pWy/F8Jcuv5aq1EOhgPkbq1Y5n9+S9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7WuHEUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7WuHEUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D20EC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754441993;
	bh=npsl8E6R5nHqGgtRdA81wTiK0ZasVwokuuG1HwHkv+o=;
	h=To:Subject:From:Date:From;
	b=F7WuHEUI7/u55VashQIZtrPvsUiW2JKf3TvFLtUtdz4H2xAV0aJucD14x5P0zzBAo
	 Gt/NUdG0fIu1Z27wI1yihzARD/WDR18UoVIvF/ZhflR91P4YWjdvdQ9kAJY/EU9saf
	 bcULOyxM79yGqWEbMCEeac3x3gLkVIaHcpiGOZYxofUd6I8g6tdMQxVpvTDBq/8VfC
	 +RAbUk5XMLuFMKGOVO7xmRX+hJfD1k39TY9qYJEo6q9HhzRFqtBk3NEPGCRY+MZGk+
	 WjLgOJUVrTsLF6hjixb09mx7XBDpxolPL5Oi5tIqP9KAMXQPRKb66uokDQZWO+sYw6
	 uyDWifUzznAvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90AC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444199357.26554.342346440469113440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479e7cfd94871b980777b050e0daf14729de29124a21761bd40263d0afadb01f
Date: Wed, 06 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754441993

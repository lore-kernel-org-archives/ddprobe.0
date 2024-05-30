Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F287482ED
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 03:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717039463; cv=none; b=oOOTHMegfgR3qn27pdjqdUDFMJRqSX3cz9UBFdPN1IytqPeWqoMZ10bC63YnlTlEcBBpsLe/MaKUnE8l7VREvK1Y4sCOuaXHW16L1LrAlnOer7T/BAxe10063ucFLI0NkhwuDtwAnF3nTwcbPk91xs9ly9NCXFZvFozjK05pp8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717039463; c=relaxed/simple;
	bh=x1rt6CiDfp6EC7o54C8uaHtFAivFqWdSoggm4+vZ3ts=;
	h=To:Subject:From:Message-Id:Date; b=I4t/tgtG3G3MF8+Tv62vSnDVITBJymFQfqSCW6RlQd9n/NZP/wlNtq91i/+Xl8KWjS3PdR4prD0qZQ9fTWVdh8kemwUvBsE8/J0jCst83dmC5LFdz1C7CBItsG5OFW7fz7sMBjOvO9RTJUjxtSJm4q0lRNjw00+HrtMrLE9LhPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUZpZKLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUZpZKLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0682C116B1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717039462;
	bh=x1rt6CiDfp6EC7o54C8uaHtFAivFqWdSoggm4+vZ3ts=;
	h=To:Subject:From:Date:From;
	b=QUZpZKLMp6EZkoch+lAOAsoGNIF4o5MaQLqcQOYTgzNnGJdwDqoZ4jDUgqeLIYV+w
	 DjzC5V7XPFzWfu1VoheuXVHzEN/5ntwCj6YxnXo3dc9iiFuTNWLNl9LeyKfJivuBXv
	 N9S4o4Vtpdw5JHeDRcI+B8pg4rbcBqioSM6z/1tZeSfE5PA5hp7PCzmvtS76Q0xFm1
	 jJvxS/hpvsffCzWrmhJbe2pAYciTSWE/1wNRZA3Sczsl0N3gewPYyt68eSsroX7ZLG
	 1XuYH2OsN5ZE0LvdHqkXkP6EI0XYu2oYzrmh74mxkm/n+ux4n7pO3sTbvEawNjv9En
	 eIDbWE7FORDRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD3EC25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703946277.10519.15682169148344837442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a40c1dc64fcdd124c895259f9838349b15e5d890a0512d9a4c4ca46528b560
Date: Thu, 30 May 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717039462

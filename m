Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FA91F1315
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767120834; cv=none; b=XKurYbWhXiuQmzEcAs4ppVBAwFkbBkXuRZecbhTCmkurUkTqDIu8KiZDq0XOAEve/AZI/kQnSbwarYySjRtceSbuJVqWBwsnZceNiowBx3bPoMu2vVBRRp2Lua4FATpDuF+P4CVNfEcgi90NGleVnur2DJ6+4W9eJhadx2+2/bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767120834; c=relaxed/simple;
	bh=vsx+BpuQN0XJbxZRNh2jkZAatsyjYQ9fiybKPCmqNNA=;
	h=To:Subject:From:Message-Id:Date; b=eH6Y0W+Szm/CZR65eLgm68cjxjksb0oDP9sMjqzm76OVBXRurFzDyahhJksllNCKES4Hbj6hmDvkjrRLnvvLsDaHOGYcH73uQ0ihHQJKXTnxh85FXMZPSNKWbTOi5UYby3YPTIJC0lu37lDoO0Y+jGkTRfUKb2CpAiboA6s6tuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5ii9k4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5ii9k4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B84BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767120833;
	bh=vsx+BpuQN0XJbxZRNh2jkZAatsyjYQ9fiybKPCmqNNA=;
	h=To:Subject:From:Date:From;
	b=L5ii9k4nDGILM7pNc1XBKFiJcTLXWX+Y56l/dGX7h9cyb6/VJpfm62zty0fNi7FDY
	 sKRuVh9nWpmxHMSxg0sEKhCRrJBlCQ/t/KXMqNZmva1co4kJf1MHfbbgrWZ2xVF3g2
	 BrOHznwyr76641zsr8ZLzDJbIpsiU61V6qQ2as4iubxdZVbpnxoItJbdBTuB5Ocd+n
	 BpytI2Milm2+Ct3epLin52IHRDIMYN9kks9mykqUkolH63d1n7SBrfjxB6CbJ0CHDy
	 SxJjsApVXCRA//7ZTOZciG97vddB+t+/tCsJfQlBxH/PT3US21hRkCrr0EfPAhuEaE
	 dOePZcEqbAkkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF35EE4997
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712083357.11996.16007463963980752280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0b92d9b5659bf3df83fbce2d23962a82e22e362d0eb5f513e26168e6c612ef
Date: Tue, 30 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767120833

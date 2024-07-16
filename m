Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6027A25624
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721115323; cv=none; b=I3yW+O6PNo43tv7AB9mdcdl6l2vwYr0dYtP7NvvOMSFRP1kHVcsI3X6R1ePJXQmEAXYObUyAeeZkR7p2lpLxRCvSgT4XVaMdbqBuSalP3wfq5r957YW5uUfqUu1N8rzZ756levQ5+1aZrh+NXtK4+PCUQYaN2v2gpRFKfYPowqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721115323; c=relaxed/simple;
	bh=z6iKCc5GzMk4mFlJUbbYTvXpi18oSXuFPSwsOhlbxac=;
	h=To:Subject:From:Message-Id:Date; b=d/DYNXBjYYok7OTf1g3VNsxYQDGqdkXRA0byaAX7GwdljHB2K/Lgqs+ub4dKFqKguMkAYkr04X0f4woU/ba4oPakzVJjgTMULZZSHCTHQEw7l9nk1l0kLZgjgTG5AY9PEEXvtz43K2Z2gnQ4/Sbqd5cxQpx+xaC0uZDADBAOJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvVC5dn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvVC5dn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1700C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721115323;
	bh=z6iKCc5GzMk4mFlJUbbYTvXpi18oSXuFPSwsOhlbxac=;
	h=To:Subject:From:Date:From;
	b=DvVC5dn7wdrX5u2iolyWA1yRfbCZUQ9fIMRG9mN9mEaddOAJDFjLGTLJYfqYAfcwk
	 WYzag/ojhkGKWg08IrOhExDbx7WCb2/wTQ5HzJU1RQXwo70RjFiszlRZCoc4NmqO/C
	 B+jwaOEZAKxP2IV0Mbr5Mp9IoK5WlKl0Ex7TiRQMtSR+j4yMYNtbF97/oXNcpqPcNk
	 5tijrQWtDAYOju+ehxdT2GefNQh99cVgscb1Gk/JT2lnyh8AGYYM0grDuFvjHNDHeh
	 8n2N7awcNDCz8HAdRLXj7lxmEF9o5Jf3usX+w5RX2IBlWWmZ3D43jf8LRK1/LRZHMb
	 BXcuTBXhYPn7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D407BC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111532285.4254.8850186518330046525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d2eca81d7217f894e19f6aeeae3943a571908c79c3577512503397678f372c
Date: Tue, 16 Jul 2024 07:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721115322

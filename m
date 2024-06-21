Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5646716EC01
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719013343; cv=none; b=QWfH+VabKQNq5E2Cq9ujDqLGduzqa6Fr5pYFKTWWRLLFzTobZXYMRA23pexf9X7pgk1IvHCjvdgdj1Vk0tAWO3ERg/3KkhEBNNNAnJShXZEqbQtuPVjRbVwTyNoPNGdf4lp0w/78ezKE2Q9H8M9EmGOgZQMjl8IxO8cjNMj0ysY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719013343; c=relaxed/simple;
	bh=oHPbxIdZ9xbmeO51e6sn+gShWsTj2v5es2/LxMTxedM=;
	h=To:Subject:From:Message-Id:Date; b=X1N7Hdc+l3qVZjwz6UJkVjG1IJVdL8NYfUta0g5Q6PrL07LjntNChUPTfwgAH6ZIl43qJpVSB4/Mf80TG4iUezrW7o14/CaEX/baL5/V22J0j9rQJ6kIJ6j5eDKGFQm620w4dY4wfHbKspZuLtzyEwiwtgD57PwECY14W1yu5KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+JlNQPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+JlNQPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE43C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719013342;
	bh=oHPbxIdZ9xbmeO51e6sn+gShWsTj2v5es2/LxMTxedM=;
	h=To:Subject:From:Date:From;
	b=f+JlNQPccUWL8r2Gb7xa6o9zQJaW4FZknqQ5hQ5PhiDFuLBGsTrePy0w8wxDIQLLM
	 Q44gfKZv4Sm3nSyFul96zDgzOzQ+QIhHDrWUURJ96ySTL0OCg2gfjRCw6bkSOpUEis
	 5jnWWRs2AuFxxWV/co7ci3i8KTDRtnmESjqr0ncLUDfCsHHqfx9qcSwlZq1WhMQHKM
	 emM28Hh+Z6Y36i/c05UdZclCbMxgPnkxZs1j05la2DBJRw8WU8a85ALPUi3P7QyR/A
	 8HaXESsW5ZCx1BqrX0uiyTOOhBpWPD6oUpZOj38BN/st/nPR6CZG7LqJmw0sFAGgtW
	 a6TT/Tv+5EuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C572CC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901334279.3622.8805942809812124412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207db401f810609b91acecbfe9994515cc7bbd883bb699dbca191e29643e5c03
Date: Fri, 21 Jun 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719013342

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84BA23A9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744331393; cv=none; b=Eia4LmpM2Zoklc6r5Q2mlMtb2zEeW1/khgfxrL2BJiBt0wAM9I3k+YhaO9HYNouH2lJLyYR0b9lS5nkE/4uDx2dnZnUPSlDg/U3nspHKD1wpBCe41aw/2SsXv82neOrBWs7bHUUDPpOOPPEKsDLImcpJAghX+177mldhp4BJNdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744331393; c=relaxed/simple;
	bh=6ghf2dmQPNPMtPZGK0DKQwLNg31LW6fXAXopkjcTgB4=;
	h=To:Subject:From:Message-Id:Date; b=pnNxw5vgoOEbNk0PkLHrPiMlnV/q0BuJA94dBoXihMjyHAGrKEnlazVa8vr0MUeYo3rBuxMuYU6W0k+efu9BD2a57RUjk0p1BhyHfsrQDojvwdazQ0rmSZveIwVKNqYmqkz/QqZgIxLB2ufyrMIk3bN6+gaAVCWCImGCUZfe05s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=led5K6c4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="led5K6c4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB999C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744331393;
	bh=6ghf2dmQPNPMtPZGK0DKQwLNg31LW6fXAXopkjcTgB4=;
	h=To:Subject:From:Date:From;
	b=led5K6c4I8AKExhR8DjST6yKH+nrcpFFCJ1nFBPtct5tOXLGU3/dQGbIqquzHFsRU
	 ydx4WG/5WLdyXJ2nJPcFVGSBwIQKxv/UB4chQDtFEXxVjWaO+0GrgQ6ghD2Y+KBT8W
	 IL1gygdVTMPhSoEn6IhOAwgW63pOHV3mtMydR+RRfcTePu+7rMYrgC6qHCUbW72SlK
	 P1izZpX9+1CAvSwGWJp3mWIO4/bzej8aOa5dwEcojewqm5YRAfxrpbMAfz7kW3bwcr
	 4nAs+OU3dqJFi5hENrV2P9C6hNEOWEOsRVfaSK7Hy5viKr4oDC/Pskr6m4Hl2szuAC
	 7l85eYy9JHSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8E8C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433139362.18771.8767266604724837359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ac4d06f2987bccf07a3e7528f814c430d44b4f10199f50cbae341186259767
Date: Fri, 11 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744331393

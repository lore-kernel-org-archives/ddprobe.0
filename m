Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E852337BAD
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766585634; cv=none; b=L/19T27nO1CjQkt1QqVDUAvqakl8uXEvGRGuCHg3iGRCrljkWw+LrZfu5ojRM8gVbZ/npVqgw/edp25mvtT3kj48V09XBxjesHjVaSRjrlGmXVPBnk4URjSABg9IkqMzn7+af96EtG2D4FeHPmfR62I3GSQudmO0ap/J/vARO08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766585634; c=relaxed/simple;
	bh=X3bYR/iksjAHiFLirIAFxhDvWYiQ9z9H3BunFl06Itc=;
	h=To:Subject:From:Message-Id:Date; b=BROsarA0n4b8wSPb4ZTN2IWY4nYnFb52wB/CoqgLVSSH9eBPbJhp1c3Wm4Qq8D1j5VocYyc0bA4sYyHkvV0324se7V7bXouCSq+JJCYgAUE7Re7IgigYZw68AcguI+9NtcZyeAIw/pUFcgkMZmjOh6X1l4KzNjHXxFV89n+3EUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXorIbXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXorIbXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A286EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766585633;
	bh=X3bYR/iksjAHiFLirIAFxhDvWYiQ9z9H3BunFl06Itc=;
	h=To:Subject:From:Date:From;
	b=pXorIbXGIpBhVD4ttuwkrvpxRLALbyqkPQn6a0Tu0vuqlgJf/P3kivHqDLwDt9aNC
	 CNxTrIYwDy+AO6ptJUFB7WSBbLJa8O9YIDhNkX29hiaJz3TvSbPXQllCW4N5IPaHCb
	 ES5mjotVrIGYRMHQBKf5OtS0BDAttMcKOuWKY1KxZYPL/bLnnGucuZlna1R0YRmsOM
	 gDL6IkcRFxJmQgB6fYR7sPzCwKC2YMktdrlLcplY1sbEt+AfYY1nldf0rIo6wx0CQQ
	 pArYW784ayM1t0nGIqKloSnAO96BVSVUembZxZozAo17z2p977W2ILwrxtxo7olHUu
	 WhCIFjNY6GmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E1E7545C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658563358.17262.10115938792035485543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73dc5b0378e57caab90e4f976ab1f56d6aaceb20850831e621b59abd08a18755
Date: Wed, 24 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766585633

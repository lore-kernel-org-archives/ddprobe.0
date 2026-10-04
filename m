Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6053D23D291
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791093634; cv=none; b=hnxKOzBeCg20nyTHt0yfql88V1Xi0PpVeK4T5Ehp0YAoIoMDUMbddKKg8GQ+X2xa/2HKVspxGSJ6TPZUQWzsRi/IUpEp3cFBSQlaefTSxKvNwmW8LcgczZpk7wJ6GTffTwwq1BtxR2T/Jey1gbnipwWhuwrtkbg/K7eUDZRTPRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791093634; c=relaxed/simple;
	bh=FtZdCE8YTzic8yEFs2pDVFHH+OZxtjgeDF5WiOjFWig=;
	h=To:Subject:From:Message-Id:Date; b=TOpEyhwx3RFPkHMMxGPImPbLFzXbDqDUvYZhK36VHt9yI81hNLD6UOV+y+YgAqA9+ERZvdk+e8Pg068tiOlQZJkXJsaYg3+TdbAU2/JgWvrOVBm2gYz/52C31z4oMpTJ6D7wduZBlPV0v4au9revf8lmVaknIQpct/AfCgy+PGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUWrji5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUWrji5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8587C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791093633;
	bh=FtZdCE8YTzic8yEFs2pDVFHH+OZxtjgeDF5WiOjFWig=;
	h=To:Subject:From:Date:From;
	b=kUWrji5dfJEU/db2mlZ2NARBXH7uwnvdYHWoyRaYkHUSjCoVeRkwW11AjPF4RNSPj
	 0Em/it6ze8IkfghS4ptL9AWWi/aIWu6Gq6FPkXc+rycTXKw5j9/LPNDXKMyQlSqois
	 W84gsF+TTTVrR7g2bmkR1c7TFAEEPziLs9mzaJo8nlCK7fQoYjZjjWoP4yBD66J8Pp
	 b5Q+Gs/1cajcU1O8ielUdc2wvMsc0ZOxKMMsw/ZThBIHjZqGyhUvlSwHIpKA/2TJOL
	 pvrPjZqRvowdL+cSj0moPzT9L45uy4wie5k8H5fEtK12Yg3MGh14Ne09WIpv7Z0fWr
	 m734F3WIPhFRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3486CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109363369.10566.9941299916484478528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e270989467bfe8e36dbe3ea87ea1e51544fd879caa954f1ef46518b1381a8c53
Date: Sun, 04 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791093633

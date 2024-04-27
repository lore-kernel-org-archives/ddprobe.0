Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CCB8F77
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714233743; cv=none; b=LnQyvyhxHbPXVwIU4weMqvySfOFkr4j3az7OHsVoQ1zREDM4IGWCuSZrDof5T+LOh644JhwUR5beuq4WRwiGa5iyZ9Y+lbsMddmsIf6B58eGYv/loR5ys4z+dmtA3fWWDNWhs4AKlMAHqRZCCCT6F4buOLkareRt7Kv/KeRwh30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714233743; c=relaxed/simple;
	bh=qX+RE4t3LwyvdjCaKUG5kc14rHq47uWHasxsv0J90lE=;
	h=To:Subject:From:Message-Id:Date; b=PV+QHLXJOODbafe+OMnnC1qXFRbVJehuYdcVqPSUEvDjefe/4s6Lj8NQEzTYvg2ERq5FCAZCFWE57aLRhwWQeJ1nY/LNBYM2/s7IW0ba+mWSxJ6EnSC+YdXIPwen7xelnm3qBwV4c9PjNBikzYscDhY/O+dFoaF0EAiqlpksBt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt4+kXet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jt4+kXet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F23C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714233742;
	bh=qX+RE4t3LwyvdjCaKUG5kc14rHq47uWHasxsv0J90lE=;
	h=To:Subject:From:Date:From;
	b=jt4+kXetskub9PWReg09cWCcmYrwkGJ4F3AfCku1s1jRjGkseXK+WpyCiJoa+8kA+
	 BGghgkgUKuQl3ye6QpcUQl4cAO/Dc1FidKaiUySs7dt0VnzsMlIksVY8wledjQDX+p
	 WZCvKbCxOW4O1ZpE+5kxk3gCg5mML4ACJl9E3JmTuU7qhJ5eAR++XJ/9RXFqFW3ved
	 8mXttRBMip+sDFrJeFv4abRlGYN/s6Da5v5/EAtWS2noj5CFCYKGwb3EE+YDwHkOSb
	 +JmEkjXIDzSf4EZ6FFeXcbmxIIP5F6M8ZQctDTK+BPdqC768LNUW9MLSKnG50H0YPy
	 jpVDhvcPf3GTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BD4C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423374277.12662.14404268960463005849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc69ab8189d44d54ea3b5a3c1d144ba24b618c9f6fb51e35c9c1612a5bd0302e
Date: Sat, 27 Apr 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714233742

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D92CCDE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748241594; cv=none; b=G3P1n5Y9H9YtQa0kgADp5h7y/1ihdwTVythU3U3OBgKW4xxmvZGM+AkV7wDdOyYIDaKIdGmWYeduU43gyrsXZcrF+DnmwZ8sDfH1pHDiQl52/SatwvDW37CVB/a+dT+1lItugvofsM7vIvyBuKu54N2xwR7+w/XKjhfSikZ3Vy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748241594; c=relaxed/simple;
	bh=u12L/PCBNv6+En6WCTbwgDHmo25XhTmo9qtVdVaUfWw=;
	h=To:Subject:From:Message-Id:Date; b=r2NE1oMFywAOIsTIn1v2cehoRN0L39iEblmkvGpp44VxDtPPqSnvhknpzIg+/c6jOmHf0SPrArWqQPHvEJbSNOqEbbRMWKectICze5Qf/aI7amis8WdMrBg0I9ZKCbGNHrZLIdI7mtpb+FDNCLSxy+KlbSshTZkmKEvZtqzd+tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcTpDgWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcTpDgWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2004C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748241593;
	bh=u12L/PCBNv6+En6WCTbwgDHmo25XhTmo9qtVdVaUfWw=;
	h=To:Subject:From:Date:From;
	b=tcTpDgWCx+8KHfWJCbCYzMSli1sVrtoAByMMllpjdK+iF5WAwLtLDnzieIBlJddgU
	 vBHLBrGvp0fjEqGcvJVjEozyp6lG05mC1+G69n70ryXg+CYQDSLIn4v0DW8jU4XvgC
	 aMtFsZy3yWshHDA4OwLdYvpeGhOqyJMkYwFOFoD7UhDEV32DKRZBLmGpJ66hzNrz/u
	 /yeujZL23g4tcUYPm7tmKBJ0/VPFFYgRHVyJhchHexLDYR44uYDMnoqDloPBBKpOU+
	 qVuHuSAsJCUz3gG1bTHFtzbyXTMI8xxcFRXhP+ZVKBp6zPEhxwFtfxAMhNgiyRurqI
	 0fl6YF8B8RBXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9107DC5B542
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824159358.17045.4294270686672918132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231d9f289cbcf5103195df43c0bfb209ca69b9f95bbce3f3fefc6f32e3b45b10
Date: Mon, 26 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748241593

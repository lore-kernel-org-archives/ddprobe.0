Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF0C208D0
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772168694; cv=none; b=EIT4Y/Dgt1kjnVFn60bOdd+OklLAveBqCon8t3AcJPvhQ6HCW+BKUrmE+00eN5+UBdWcNCpyG2BWbsFtMpflKVLCZs+eGYzusnReGigilrwE8BXrbcaMpA+cx/mxUVNxEDzP2jdrJsudK2K/mzibcXGhMqepNscfaf/PGN4fGI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772168694; c=relaxed/simple;
	bh=iUEewPJ6zOZpzN/Nw492AIvTnVW4F+spewQY20X3SbQ=;
	h=To:Subject:From:Message-Id:Date; b=dn6dfYr8Tcxy+J1IJtllMwUtbcfYEU2YmWXnBOTH/H/4u8DliPmzfvl2gukU88Xy3CWaPMr3/ViBeB6503mw+tbK+h+Z2sWOfOD7bg/CM+nIg0Fm1VGT5NK3/jcyeJs17eimpwLmO+Ynl4DE29VVsN1OesXd21xRFacyLXAhO3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvKgfMX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvKgfMX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DBBC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772168693;
	bh=iUEewPJ6zOZpzN/Nw492AIvTnVW4F+spewQY20X3SbQ=;
	h=To:Subject:From:Date:From;
	b=EvKgfMX2aw0hV0wLBjDVWvWU+0uaPSZXSawlx785tMNyQHTbD2CQVHxjSfdjVC0Z/
	 dMATAcMlTcv1WaT4uug8RgWWzAZweZins1VM0AU4Su1bx1eRsSmWCRQ7O3OoE9dkFQ
	 bl7QboCU0y6p0qMahCpLwWoGEeGvGV93XfIKwyaiubPzDQSBVWiRjLNnYB3vhPRUmo
	 a+p/7BD+LGmPTOiyl6+IdjlM3wbV2cFw8B3nXj1/yZ7pB9/3pW6YW3D4MN57E8Ioj/
	 /+U60HG5+nUMCMWpuCrc/4ztUaXdlPaMf3QO+BdzqmqXveulco2tvMvrR1bwueI7Yz
	 QqxmQYpik/YkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96270FD9E37
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216869358.24287.6950228934556133728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a42219eef70d1f809a1e8f53ca63b25a8a3c3929afa76d08700eab75562844
Date: Fri, 27 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772168693

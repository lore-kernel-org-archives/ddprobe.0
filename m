Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDEF1A682C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785997834; cv=none; b=lgbWtc/cMwn9jNtzZ9IQmcJJk4gX2K9ujPHpSy3H9AVac7i5NmkKFXQwz9TUcsA8GD064iBh8cplSqlR6VWMuyGBSQ8BpOa0go6RMC3l5+niNqymVciAIkF/cUglnXKBFNp88Eo/aLp1NTLUWZyg7MWqeKbo71DcCZtGTLmqDes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785997834; c=relaxed/simple;
	bh=vtchqsNSCl9MqdOdr4ZLvjkuf87J4ANQ8Plv2aD96zs=;
	h=To:Subject:From:Message-Id:Date; b=kfGwMgOjyPmJJokziZBBOkhTlI/npM1X11MQJz0Oh7a+0z5y8YhHyYCV/eWa6Kwx3o/OFzEV2npL4IAHyHz3AwYi89A1ivYDWg2Oown47er9GpGrTaLE102rORTUjFLxbx2epglypy/yM9USi0ZR+Pkh3dADbHpSfQbBwpDyQoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjFGQuB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjFGQuB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C462FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785997833;
	bh=vtchqsNSCl9MqdOdr4ZLvjkuf87J4ANQ8Plv2aD96zs=;
	h=To:Subject:From:Date:From;
	b=gjFGQuB1d/eqnc84Vi5g92xhTMaScRZhKahmdp7Ff6XF9FvTH8L+26J+0OVJuNptW
	 tRbZeJyim4mPPlQxxvIyAga8/cxuImBhXP71Y9UWYGykM9cmjVyatxM5jtTvo+Qv5U
	 7ibWEOBVZHPNSQCbv+I94j8Mr0kN7xOdZM3sDTI2pB8KCM/MLKMUDRFtCBhwTXyk6V
	 FOZO2rhcAFsMLDRk9N3ACfGZ45am7zaAhbQUySDifuiPZUGUVXH4+Ws2IoBhSV5gY9
	 py9FaojnMKAYaeNWoSuK7h2TDgNxJDUnaxkj9k3ZCyo3iEUkMdCSHUbvGVsv9xGKID
	 UTtJGjd/kTlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD8AC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599783369.7927.2361773732148121552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc39730a93136d80d0a3366d76d22acea4a76c9da0c7e4302311c6e2f31e3611
Date: Thu, 06 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785997833

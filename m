Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D76C2FCC04
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759142994; cv=none; b=HnR+N7htSUs07BfoZdJE5qi1l1rPKrRfRCO/IuJ4nj9Rf3F48gtG2P6OnNaWwE2MqapcJw+qMNFzvLtdsponABAzk96rnhWXUdIVPbGgDTMf2hwWBTWqhKcxd0qHBDoLcOXvA2ifTV0linqtMfB3uOKQi5hEAlDYMM6WUUzOkHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759142994; c=relaxed/simple;
	bh=4OAlvwrc7E0QsCBo6nscxAACckGgB5qK3KStIYaAUQU=;
	h=To:Subject:From:Message-Id:Date; b=qn2QBmY8RFd6ssV+RYrICL/sa2dtmggB0xnZ0o7D/OJHRz/DpSD8iPJkFkloVC5h4RFcpeKIjfpjrnOrP7xXPk+8zqsp/fTMEdCdXkoSglI3bkn14SXZSYOGCRMCZ8I90KNpihQUK999v53Z/Qcmf/o4SOQhfF7f/JQpjtHMsD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcOIoqrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcOIoqrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6FCC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759142993;
	bh=4OAlvwrc7E0QsCBo6nscxAACckGgB5qK3KStIYaAUQU=;
	h=To:Subject:From:Date:From;
	b=XcOIoqrpuWpJddOjT4dyFy7sLguPGBmsuGsdSCyHMX+SZEmilkOj4268FaIo2tZ5O
	 hUzbTvH7g8NgKSw4PnSNo+6XDXmMdn5tOQrhzmEjUbeVpHGh0h5jm+Di2jG+u+DDXR
	 PXjpR7jYVOWQs22j+vD+sc2t3zatxIBu5/I4/vuxerQ0ov1YuIGVecWFMn7Y5YLj8B
	 YkTQSA2G7jk3kUioGzJsr98/jEb6l2X5dKV1wGYjm3zipOOhTyMQgFd2RAExKjdWFh
	 X1Opbi86ei6KXe+WAFenXhx1zabdgOGT5t5JmG/V7G6rxK7J6UEcC7cptI44s2sjHU
	 17+X5uWX2Omew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB68CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914299357.4296.14451468437446841368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15aaed2becbae6b2b7e2e88e0d433a5ed17f55eec7d179099dc0265d22fac0a5
Date: Mon, 29 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759142993

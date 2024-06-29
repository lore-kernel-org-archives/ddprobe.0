Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CAC1DA53
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719635663; cv=none; b=LixOXRi1gBjkIImVXWkqUu6MhCJU+BplLFP0BPihvlfOHFLikssFevOpyYqilPZVYZJjhhAH0wJP9TXxidHb2PYwGiuv6mJMSMk9w6hBZMpl2u43TvbRZsSWXUxuktA/bPry8vL2bbk25DptAd8FEk4/Csjb2EDsWqOcP2W7rbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719635663; c=relaxed/simple;
	bh=CahYshbWRIo5pjvyps5ptUQc7L/L3s5OUn1bjdC2dn8=;
	h=To:Subject:From:Message-Id:Date; b=qFp/G0/SWjjAwKHrNr/y9qbV+XvdsnFWKC0FojUaluquTuAh1wlApkZtzRvOiS5kj0zNnGeIsjOiRkdEeKcYzd+tgVdSvIqSNj4cHfAZI+zAOX/HVSpSsnMPk3CkCErYH5Fb6fqGl+WrdtL5lErEKZN99XbxLJpIzSrhSjbOxQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+LI6JPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+LI6JPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03A5EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719635663;
	bh=CahYshbWRIo5pjvyps5ptUQc7L/L3s5OUn1bjdC2dn8=;
	h=To:Subject:From:Date:From;
	b=T+LI6JPvipBmfq+aJ2+iQceQV/Kknth6Yhqk0vtUEvXRR9wnGGKLHIhauRH3vv1P1
	 gxIixll4a63MWWypVju3Ll9trwN1qR04Vj6kFS6GKczpEz3IKj1coamKX7aJfkf4Mf
	 wHdQ0/SsBz6wf9r+ZGtGstlxhuhQbLodJYm52mCxuvS+irnMO+W7GBXIcTtV4qbO7q
	 sHvoTYf2eeEMOesyHQC22I/i22lcoy88nFJluy+NUrrVBI8onlgFZI8x3dltCiSU9j
	 UK7bTED2bncsaTvZOPs4ohbVGp5o4Eds38DxdP3jbRRXpQ58xhOk6NF0LnDlWOhF3u
	 CWreyIgZJwdaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9CD9C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963566283.27156.15860652718832388056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e572c3368775ef3369be818744ff6300b1d79870508ee6673b80f1c0c28c1cb
Date: Sat, 29 Jun 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719635662

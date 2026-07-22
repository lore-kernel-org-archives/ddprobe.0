Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640E438A72C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784703514; cv=none; b=L/++XII/owJKnM7+0EJEACUAdqIGuRW1B7L3Iywc0AwQI5VRj7M2JYeEEqm3dRD8p9e1lvYy+L5F6pAubdGzGHQRA++oIWWwhENamK1D6P7/Ss/K3JJvZ2unL+lQnT85IoBVoUSjHQbxziu3eMuiPt9o0lwVbMNH0dX/d785VDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784703514; c=relaxed/simple;
	bh=ATrauCJ8Hw6/dmUym3QFVc1Gbsh8AIB1QQhsHaph2xU=;
	h=To:Subject:From:Message-Id:Date; b=uNqk7AAEUjwOchctfKruPW9E+B8jzxc7FR0Itu+8/VVrTSAduJTIKgGgZgGuCR5K0mAIWfZRhHl13Z83Zzid+qseiyz22BL/e8Ipmck7xFgMBGivXpPSbGmj5e8Xynk1Di2cmEtyWe+gr4usLQv9lbM8OYS4iZp/hWxNVNZ3usU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtNtHU+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtNtHU+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC232C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784703513;
	bh=ATrauCJ8Hw6/dmUym3QFVc1Gbsh8AIB1QQhsHaph2xU=;
	h=To:Subject:From:Date:From;
	b=BtNtHU+xOfxjm7kR/o0RfNEBnO3LqRRAclsHwHRzuhJJL87NqWHhJQaz7ZHTDQYhq
	 ltVJ0vZdwtBjrfwF9di/3sLDvwvQse2uZGptaZovVtldXmzMmhgthNH8TOLdqARgzs
	 C0u5ao43rmSQwnyl4WVNVhox3nCyRU3iCU05pKlpxFlFwy7kkqag/U0EWkeupL7Ouf
	 7SR17sl2Rt8VLGvgjJlezvmoEXZPd2hC0b1qoLttsL0j4MPjBOQykZkRppnDIzSocD
	 HgmwOGnuLFAQbKV1SLJWRNEN57+bLJi5Ahlj5ruUywlv9MfG+QVzU6mN5Nc2WmP+MF
	 6a5J7aHox/USw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A983EC44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470351368.22144.9816923348785379045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53beca8cf496aeb1a6353121eddbc2ae6e9cb45c15307e6a4f4bb853eb8a4ff9
Date: Wed, 22 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784703513

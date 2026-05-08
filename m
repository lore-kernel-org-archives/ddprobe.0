Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB14229B38
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778205454; cv=none; b=DULlue7iD7cFiqNb90bqS3wdi9fD3iF1YMvxXcR1hV/uHQaDIw5gv80zbuYD68UfXVFkyXQzqqarU5l4xkRDH04RdJkF/JcNTvr1W43nHHhEYkKSMWCF5zpj/nUXgBKlN0h1AgLXJ8ieFKq9cAAIINgu9u5Kwt/RreNIfrZNBD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778205454; c=relaxed/simple;
	bh=LmuNOsothdC2eEwFzsXuctiodpnIQOv6Ti9GsDUg8x0=;
	h=To:Subject:From:Message-Id:Date; b=XhvkENKaf93eC5rqQFi+s/7w2UM3KADLnfHqBK0zBoFeRz1RHn2uF9qKfeiv7EqKCxj8E8BqR9kwiJhdw+iINMEMKpDarunqxjctBxMVYHn93Em7Cw4XYAWDIOppXYAvdiYWq4Ih64fOmYytSuv+AwlrcGB+xCDOXHvnRIECCB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0Sq+iVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0Sq+iVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2B4C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778205453;
	bh=LmuNOsothdC2eEwFzsXuctiodpnIQOv6Ti9GsDUg8x0=;
	h=To:Subject:From:Date:From;
	b=V0Sq+iVUI88IVLVVo+pAZCnmnQMtw2cvXfHauSVg7VOO1F//EC6DtwydOzsV13P+D
	 qXGl/tladgLiYJZ4H4HbrZ2eCnGYtX0t7iQoeM52mPNMRKNlIJk8CzcXPAxNOi2nQI
	 BZL2raKk2M8j0KJE8Ip4zSB1RDPO/xLPo2h9smcn/mUHyJxzzlttigy8XEcHwCGUaU
	 pbP6oPQSfNIj0lbpLA8o+MRshBAo/GyaY7Z9mbjbfF4pV8jjM5s6nNA3f0dl5XcTG5
	 pqVdNwosQa2xrYI/cIWVM5Rj3ztd4TonVneCH/We8pdF2HxLh4IYrvI0dww5Sd5ebM
	 8sqauKaCqYgVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB376CD3427
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820545369.15676.13762724333591995550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa055b601ebc33d336d327d722decfb31948f89edeba1d5bbb9a5faa83d36b6
Date: Fri, 08 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778205453

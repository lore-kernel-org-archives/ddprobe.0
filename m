Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D35E2609DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762249794; cv=none; b=kxH5AGPRMGSMwzPMvSGAJvKURKb0VIhWfwGXHHHZAFMAG3E35loq9+qB2Mo64CQiVjIlbyuh+JS+ZAXA098sp/a7RpHeM5fzKioK5b1TNljgx8sHJWSTV31uz9nCTdGn28w/bt/xPBleR+Jbn+YEO+sT85pswOc1wG8uvBtPL10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762249794; c=relaxed/simple;
	bh=pGwUeS3MHwHzQx30CvVzrfbnKsp49dFlafw7vXF6nE4=;
	h=To:Subject:From:Message-Id:Date; b=OTxbwR5MJH4+NguH4QL+YlLch/hKV7kKf3kRDyEmdINtnLG/MNlttP6pXRspJ4fBTrcLo0PHb/JdwsKFzMlADWvmiKA7Gcjs74ppLQChYPny2R/t2pTfjQoxtERlmC+jqhUaHuW/HPHdSWOH4D/22JdxKvNJdrZG7O8Sk8wv670=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdalyQe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdalyQe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC08CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762249793;
	bh=pGwUeS3MHwHzQx30CvVzrfbnKsp49dFlafw7vXF6nE4=;
	h=To:Subject:From:Date:From;
	b=KdalyQe+fQbEyI6PsJIbdI4Y/NGQNcfBpXllmsSNBVxNLGtWckR3qO3cM7/Z9U0h+
	 An56rO1x4oorg9hrLA5WdE5OmYe50K0mh+UTkhkhn38n0mT4+UgvZhcriPwvI+2VmG
	 iZ73vzomtjwcs6KffO6scV337ggytzx2dqm797nbjjqFgMLxuWjGuFOYsYD80vf3Cu
	 W5c2SpqyFyr+/6quYoukfdB4nIcBnF5iYrukFZyw0CHxanbv3/cWxogmZgZboX8EvQ
	 NEgADf6gx79RmFw/9eVnfRXF06Zq6k1IbsgXTIovtzZunfYe3EHTdOPoTnMeVEvXvA
	 WmO3srTu+pg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C581CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224979362.2729.4482120684630634577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fdb3b02dbee4d338f5bfad1bfb5efa3cfee465773dce11fcece9037933ef34
Date: Tue, 04 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762249793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A1D199240
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732029954; cv=none; b=kZOyTEQSeGOU17iDPQJqEN0LkQUNghvXNR5KmKWE7UrHhsG6334AWCefkiO3+p7gpTI/fCcDF8CBp8wea4IX1QrDIOB+U/YNGIQxiN0mYuSBztJfKAYDzJcHx332gSFuhEDIl0opaVQzPuBdzOtLrMzaw3nj/OfL7g+EdLtbqA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732029954; c=relaxed/simple;
	bh=e5rqTTaaOyEdZ1cQdOARo3Zu6lr7zoHRxl87UvrB1RI=;
	h=To:Subject:From:Message-Id:Date; b=ak6IWiOIekP9U2WPcjnp+m6Fh+ErIYlEy92mQolWG1Li5TSF8Bh9ivClvbe89ppUZcQO6uMQLlBqes7gEvdyTwxUfae/BacWTGxC+0mj4lheFgtQHK34u95c7EoF70g1OZ7bbUYErxEHEHONYHYIBW1ZGRIYzJgAtDmnPIPWFWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5GslPvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5GslPvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11C4C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732029953;
	bh=e5rqTTaaOyEdZ1cQdOARo3Zu6lr7zoHRxl87UvrB1RI=;
	h=To:Subject:From:Date:From;
	b=g5GslPvQ90s+9QHTqtMBPV/ah8iu354sVaudsdn2qyg9XbvMiQuxsJdp2AtkTw+tn
	 mTzMse3RM/DZJWizCVxWD8Hs1x4cwnhS+z6++smBCicfp6hrSBfsAWvpIOd2rt0cEp
	 ZGAQJQ9SUH310Daz+qYWaCogixBDmbkGfSombQoT2C6QyAYN1bkBr12bwWIYC1IdXr
	 1CAQC68AB8/0j9hd52h+ujZVN4IhibUxS4jJRo6IH8lNesQgUEMeUqPdU4cOW9YA7x
	 4HWgLEL2nFD+r4poPbH1d/kEoQtdyF0SP2lBGboBJiraN2xEtIuRayu5BIiwxgTyyh
	 HWZ8oR51aZ2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98415D44172
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202995361.9613.8075821839042534893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9216d53760977cc87e6f723aa613338b412d70668c00a2621b1bf7c7561b97
Date: Tue, 19 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732029953

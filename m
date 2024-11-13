Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB1418B481
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731531954; cv=none; b=YGvdRV6UzpBvYOncf+54V1TAK95FcVNoJbyN/SEDCV3P5UR8DJ7a3Qe+m5mKpRMSrLWeqoZI8FVAyKa+CBWNRl9hc5Ctpyuh4Z+iX+EwrC7LqO05MiLhZ9+C07A7lIbG4YzgSwMwXPIGnq9l8fP/lOKf5OjRK0mKD4QZv6KnL4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731531954; c=relaxed/simple;
	bh=6z5aBoqtCVvNwN4thH0exK2ATFeH5/qmeE1tpD2hMVA=;
	h=To:Subject:From:Message-Id:Date; b=hEBbTiEa9FclPoa4dckeXI6ZM5AmFMKTRYtYjhtXBX/L3jpD5IhOUb8LEJT/MgX164Rs9+YUmEkWwMlD1bxa36l5gM3f5b3JQLdsc2rjgKSgd8qw3RR536hfTHlMUPXPy7q/dwuH48Y2ZmO0EzmQRNi+HbT3McbAVB+HGtAN5ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOT2wEwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOT2wEwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34C1C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731531953;
	bh=6z5aBoqtCVvNwN4thH0exK2ATFeH5/qmeE1tpD2hMVA=;
	h=To:Subject:From:Date:From;
	b=XOT2wEwWdYDwID/v6Jkntp5U/r0U0GHmNm4q6IpUgSjNinLyThcd5YTn+DGF0xPTN
	 YxOofwarwsZZ6FZHdwQLIO+mieBah2soan+r+XRy8S7dhND78MazBVtiWIq6UA7JLM
	 hT+BYrQL1Ol3lruJ0GKCAb7Mt/655SuVwH/fOj9Scc/aNU+ypuNLtI0aldhKSMfxfu
	 hTL/5jGHX64owXTiuD5kxw+mpYoyjyp5vv4FL446Ygk++BbWlpSnvEDs7dybKg9s1x
	 UDZtpOpQ4C9D8lAXSC2dAf0QQUNWBl4VkHC1IoXsYoIG03rDCSOXt0yFh4tZAoanFE
	 0mWZ+nZSGtN1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF714D637C3
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173153195367.11267.6189129823800547063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad4a797473f6343fda943fb1fec20951459a6b7eec58490ef8976363d13968b
Date: Wed, 13 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731531953

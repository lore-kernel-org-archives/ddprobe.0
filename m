Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37856625
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743812394; cv=none; b=ZYehcdgHcZT2QbW3MqTgyAGq0ssrbyZdwFOWtWXZNAclnFDlk67SvZYEnobhxCiSVE4DOisX7CX4MlRoO+LQ680aR5wbHjY4biiRfxQpxiUD80M20Ff/yfQ1zxWACMkFW9a8VDMX/FwrJgnJVjN6XBAWoiVC7UgRVr6nxqfyGAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743812394; c=relaxed/simple;
	bh=yzbnvsu5eoIXzM2fp5R/8e+6o65JQhsVgyutX/JyBj8=;
	h=To:Subject:From:Message-Id:Date; b=tXCwNvRX0xXwV4zznhubRVIIX3Fa4CuDNXrDERWP2URmXoo2tMG3lFzSJpC4vmHNWsQqVhG9PUyzzeDLIFC3g1GLWteVy0cySyAOK0uopmQMdDQ+DjmXI9oWfPJ5t63u4aWxWSxxBS4bHwcnMYSR+tXhMH8HWtf4q2UCIR/Bems=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ss4bKPf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ss4bKPf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3244C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743812393;
	bh=yzbnvsu5eoIXzM2fp5R/8e+6o65JQhsVgyutX/JyBj8=;
	h=To:Subject:From:Date:From;
	b=Ss4bKPf72Dwc86f8r8hL1ixs+YX7WxolQBlt1hfAC9oRYr4BwRtvu8bKOnAJJ6ciC
	 oafgkS7PccnBdVO4Hs2bIAyaP8Qc2VOBknSgvxUxzpd2hR9arVz8jksG957+cQ2MRB
	 aIxu4d5KBI2wjVBz8l+Nl+3Y6TBF+7+yffqmuK+6yWL34LM+GsMytl0SmC3zNrlYHB
	 rLwf+zrkmV5ZPbTZpwJ+Xlp7F6etC1WEG2p3Toyj8GeIqeO7B1qU6EtTzrPUWUpXjd
	 IkY0MdFDr8XIMp4sVrZK65lACLZbsXZSK+zhbfOY083XGGTePYIqLCuBBnbFgv9W1L
	 cQsas1rb9Y7iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CD8C3601E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381239364.25682.8673125790421299463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fe6e0bb4a054fcf6b5fd4d4fac6c3078d18f2ebbfb886a7490e1a5ed900873
Date: Sat, 05 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743812393

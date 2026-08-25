Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A29F3B5843
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787685634; cv=none; b=ApDMmKHd+fXmw2Ip9SNFxtSaItRnvQsoRvek8hKIMMD7GxiLI0atppYEhv6mpoonFlKRaLBGNYCRSrhDb1Jv4ygsY9MUNBdmnvmpechmJt+2wMxrDn6Wgi+CvHfsMQshyWNBd7iyS+P1WWikAqUyeqjqb3KsI7VGsypzv+/nNOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787685634; c=relaxed/simple;
	bh=13gny5ra4ZlLCC3rLaReRTHL9s/RLOEbKYufBEHE1ag=;
	h=To:Subject:From:Message-Id:Date; b=B9phNolCf4Ps9uU4pRf+fEUgvns3yzed5IzqVVeIPs4D91jwUiNiB5U3E0/W8cye2xiXx78KTTzAg6P2kdiXsUGLKUJ9VtUsPSPdZBicQLZLHcADec7zyN3fgWHlV4nIIzBmWD1rqQEsUUp20c3N4B0Qhwx5Qz7RXgGJuYBNaLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbFoagva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbFoagva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7709C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787685633;
	bh=13gny5ra4ZlLCC3rLaReRTHL9s/RLOEbKYufBEHE1ag=;
	h=To:Subject:From:Date:From;
	b=HbFoagvajhlYOrwbx37hgFipTheHe2FXlhVh0jym7iG05GbEyazzpBnpwt0DvODde
	 gdn3/N3UWu2fJupPuYF/9kwKbfY2/22LUTVBCYKWDIcu5RzhQjbc5VEmmIl8i+28er
	 NGNaqPq40BA4k0Xkvjtq19LY2BtvlJyRw7ZeBrHhUNuwuD+/5Eg9bei7D0TwSyim3x
	 juPLAGjOtlwGNFO5bj8LwKjRInqZgXwctuAUx5Qk1YAQxchRnWyMNFURw3LbA+buEK
	 65/91hiIFl657SgZRtOa3OJ4ObgQm0BmwmcUFiXsAkRaOxs5a+G/UgD+NLYboiqMjP
	 J3nqxlKgoTudg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B263EC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768563371.30658.4298314163806320506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13670d8db582bca48e0edd616169335f8276efb66243dda2975ca8052a543580
Date: Tue, 25 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787685633

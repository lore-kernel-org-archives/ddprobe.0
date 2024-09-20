Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B1021105
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726853754; cv=none; b=Ui55mQpa86CHFlHnh1wA3BFgN/A80akz3tCVkxndGBP3MfpciBCJQo7DhQitf27c5fuyZxRhNHtQGuJJc+uzmJozItMusyd40WphvA+NmIadEfFAtNl5J4YxjyQdvV/BhLzrMhxcvDXaaKrTDaFQiXfJeCU9jEZS492qu8W+KY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726853754; c=relaxed/simple;
	bh=SWMxE400TOJ0MuwTAov+iMjkFKl3fFI7fZ5+laZUtEI=;
	h=To:Subject:From:Message-Id:Date; b=bkP+S+V8Qo6Nfm8B2U5T9+Xug2iCn4uyqJ2asctEl4C9mBl2d2SECvArWC7NUx0l+Itdv4iitIZmpp0z6rrHcnqWui+JWG7b8cPelzE+pGTzg8DEphqd4RqeU+5Q1zadAKWHat6x/OMkB6bjvfPAd2kalXOKo+nXwVtPfXKR8fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsclZ2Ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsclZ2Ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8316C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726853753;
	bh=SWMxE400TOJ0MuwTAov+iMjkFKl3fFI7fZ5+laZUtEI=;
	h=To:Subject:From:Date:From;
	b=MsclZ2UrbZmqI4DBSGNR1W6MstQoJHuHkK237qo4z0sSFHN1laqwfuH+Ec9Hwolli
	 9gB2IyjIhwANM2ccRYPHwC6MCLMHGCS6hYzyfJ+7HugW+hcF6hJic70vVFFf8Jn8bx
	 a1wuZiHL6d+GflXI8lO3SAis+JhROfOvCtAzBV/HXKKnjcLRu0ihbdC6LyiDSqz9Je
	 XTQnxUq+92cy4YsTgc8SvNEDuiL8r910pgljVHvQ3Ttejip5M22fwur7OsvskUre/6
	 aJsBC/msfk1zTun/yyNPUG6QEFANVBjMXK4TVQYufjAVo1N6ku62y1CvW+e6R7uuWy
	 tO/mfGZg49YNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFBCF9C5E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685375358.27066.17543777513362234378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2a2dc590accd5fd87685cebf54f68b92644119963c41fbab3095abcaf9ad4d
Date: Fri, 20 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726853753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6638F2CA5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720584383; cv=none; b=uawzVioUhuMw/osQy8chgSCf6otrCKHCVY7XCTGlFY7mNcYmOMRZl9+yd0yZBnuxyqPwkTMhe/ZjkMs6ZyEisVrOHslUQTZPHAScSfi1RFwpceaWaRw61tsez04vQbI1tyuiT+6fyRP8nhcr+IiBxGFdx5lxluYAjy2lhh3Cd58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720584383; c=relaxed/simple;
	bh=9w/1p8GM/ZKNv/amM9PxevHfhV+s2zspoc9wa1oqxTs=;
	h=To:Subject:From:Message-Id:Date; b=Gn1zccoXo7YPwDg3uymPj+0Tyco/owO6mqjdh9aDe5/k7ZoUARGXEGimk2hGHnJN8D3HcPtCGmqEX903kOpLDKEIkta29mmYTK7BnP565lIGGVpvR/S/9oOy3WHFHviIyEYLUxDtt2GrQBR8jr8HoX5JsM+Imi0A0xbRsQ6qqtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXsLonqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXsLonqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5431C32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720584382;
	bh=9w/1p8GM/ZKNv/amM9PxevHfhV+s2zspoc9wa1oqxTs=;
	h=To:Subject:From:Date:From;
	b=NXsLonqP0XFnFCrG2ZzOh+4E7nTJ0/VBDIjrCWSNlAkPxoVOUiGD7KH6/IXFU51yN
	 Oc8KUDl6mrutT2bI/ZTcYomq6icmu1z3sgDI16S+modWssO4XtGKPTnlH2xPb2/nap
	 rukkcxTdHjBrbBKtPeWM+J5tfMuhTTY58J385qkt59NqKHtLjtlJ60hcX66vUvsefq
	 wxly9Oxmbq8nAX3UXW22FzKuHid9bNMiifypD8OyJ/EmV9sBKxYIW5LyaYVli/7iia
	 WKGWdHdGD2YLk3U0C821upEX6FQIB74Vc0Nc8VSEDpkFDG9fBTPu8oyjh+dBzenCpE
	 IOHH3R9KumhMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF2EC3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058438276.3359.10783572217018795483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b43b6e8807f484293dd529d2a08ed9d5b0b56692f9fa8c17b3df0695f4c2fc
Date: Wed, 10 Jul 2024 04:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720584382

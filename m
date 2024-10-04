Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ED850A63
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728063954; cv=none; b=s+vvXOrKOM54YxK09eiyqz/mk2w5ZpkZlO3skzbRINYBKIR1q/UM7l3onGnb4WCDaPs+kdxarC9IwD1JpAq9mcphV3Ba82SVUapN+wj0Qtr3YwffcBdAH7ifZ0yqNqEqyAsxOYqOu5N1wyR9su/4QxGj546LR+zIaMgvM2UNK8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728063954; c=relaxed/simple;
	bh=Rt9RGcnZ5GE92mM/PJtYKndlgq1vRghO0XFstahuesE=;
	h=To:Subject:From:Message-Id:Date; b=JCILl6swy9g5wYgTtSYbytacNtF7R2OLNJcDFLPeVIoxBo6FFqQc6i0jAWgw/CEsgQHMVD8acPGRJJfjv2lWLlK03fzdSqCzRxUFojepYSUrFkIyv5arpdzwFtpUzY+URaLaDvcZQk+x8Qc15ikcNPuLcVBMVhIm0SJZhjoCyRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snDyPG7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snDyPG7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3639C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728063953;
	bh=Rt9RGcnZ5GE92mM/PJtYKndlgq1vRghO0XFstahuesE=;
	h=To:Subject:From:Date:From;
	b=snDyPG7Qvjq93Y4nuj0OVguEr0aISmiLINl+2LE34i3BUfP4AV1gz7hxa5OuDmDD0
	 Z+NvzQfpWCwXBJQwStZv1C2VxsqG9VaN1K9UPxKh/Zn3PCwYAo95XI59OMLfYp/4im
	 QcxeMyBJcgZ3V8Ip1ZbBrtAqkQ7x9mq7bzRP6uuM1vduzaGNGE/m12cXwcquSbch+O
	 dKU50YGAAnx6/7Df1WhwFwPpPFOSl1PBcLCMnDXdIQElkhsy85EkIHe0P3jvcRZis1
	 sRLclHYrd1B/TIc37s2A8Hs0dkmhyRcGOXxT2NIfimhu5EhUacRfW4NGLDwIkUTDVg
	 8WKDfEcZG2Daw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D37ACF8854
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806395363.27232.5183135984429927455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dc595b5a356f806001c257022cf2f9de906dab83f4121d95bcf81a42ab7de3
Date: Fri, 04 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728063953

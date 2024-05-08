Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514CC28387
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715211143; cv=none; b=GsQ6x+azRf1q9Ec86N1kWJERl4kgLty2wxPWqI3rO+NPc9QfU2h1K9hY4XtaTCn4cUv4aPq69+LiEGlKhcvxprXvcrHxXPBQuLw3lXTBm7v0BydTZfAvxQMZyVsgjOwo9Eclu+Z8yT+49010MBc/RkzMgtaay1kfnDp8RCGDiQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715211143; c=relaxed/simple;
	bh=HLeGcHQpksZl4hoibc+xn5kmSxP1I1yi4EZcZRz9d+E=;
	h=To:Subject:From:Message-Id:Date; b=bOqkaXQ/lefo3JShlnNLnei22eJrFStnM0mHMLoFNjrXLf/u31AIGEsCfAbSzDB9rsHe28KgheRtwo+Y51IwbGO8Th/Vssubr4Z1wSFcpke+shaO7AnTPUpPYTYY3QsOOWHPwEJhKNYljbtj7mI7zYPVR74ieb4giqgLPOH+ieg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piQiXKDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piQiXKDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84DCC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715211142;
	bh=HLeGcHQpksZl4hoibc+xn5kmSxP1I1yi4EZcZRz9d+E=;
	h=To:Subject:From:Date:From;
	b=piQiXKDdhQZoGXwql4PFYAkUL/+bkMj8DDDkY5yr4X9b5OohXASTV/znVifxBefap
	 wkNvRMlN134TlF+EUIRIKPejzse1CjYVDNNo8NFM+ki1cHdf7tGONCeyHikrKnIVTm
	 j0llf4eo7H0H5JXxtWC1U1VP8Nm/EX5W9FKYNBCBaThDGVTD8nPtpA4+N1lrZQiGwG
	 eynnT5d3dC4RX1tTQpfXgwtJfKUwp35Dalh5nepmV7rlQQCN9fXcP3V4wvObot8TqG
	 LWY5L2NdJESpdO3hROJ3LpDPYQu8OKWtuDcUEWQnrr5RMEcUmHIToyMsBRLAOEnY13
	 Oq1pN3HtmDn6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8044C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521114278.28942.5602784071792033649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a40739ad21a3f2c9871864c02c7830221fa8e28f1e390ebec9f7d27e7d6d428
Date: Wed, 08 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715211142

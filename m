Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE3319342A
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727704554; cv=none; b=Ts/MONd2p0vhFGN9wX00cEJTUcufEMCoMY5pFZmLWIKTO7N0jH8cL6AqlmmwgWt7L+uJhIqioPtltpkDZC12W49vp0PxPWmK5oZROyrUxP3zKoh4KdO+ql48HZ228FZSsODuYJ6+eI/1JIdgJxNSZc5aSdJV13WLm5B6sUjOOQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727704554; c=relaxed/simple;
	bh=R8c2OG19vuRRfO9roA1D8vtWscWbEL5V7fzwk+dt6XY=;
	h=To:Subject:From:Message-Id:Date; b=A2J5O/gN75CrLh2m1T+Yeq34REcdp4q3lNxl/yfoJgUdqEktACXcKgsdYw/R9W4CNLy4vShgEPTjLsFENGCcb3BZJxrNA8DtVLvXBIRrODjTrxAm9n2YjnehQJT2mFAoFQSn+ejimY+LL6lOcH81cxWkgxA3By/RPX1cdb/HltE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoJHfUAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoJHfUAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2021C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727704553;
	bh=R8c2OG19vuRRfO9roA1D8vtWscWbEL5V7fzwk+dt6XY=;
	h=To:Subject:From:Date:From;
	b=hoJHfUAfsFt/0+cXlGg9EKZW1AN7jizzK1PB2aGqT0sUyBOpoQugrTO3kr0OdZewp
	 oKl4HHREL/qG2+aJhtFrags0Ac+cBanZLAerhXF/iSsEcOWXalhvMP4sgC1C5Gx9Gs
	 J+I2suLO4Inoo/pIRaGKs6uA4QKNkJqfilYzmX1EG45YP3ANr7MAd4xWNAcsWOehYY
	 bKrvcUr9kDa9yzhA7EekdGABxIRA9r0jiiWHS33TsWaQv94bnstDWOjrZxjeBMzDBc
	 +UtELP0Ztz6so0cfw4gU8uJXKpHz0tWHF4yp9wkDCejoQx2cw0M1rvfowi19lCjW/y
	 /QxyXs7oSNUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04FACE8349
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770455364.22398.95269993992770269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f5e0e8512ead7bf7b1c74224b18b58427e54690001243aa1b0b6d11955c472
Date: Mon, 30 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727704553

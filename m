Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0C8225762
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761873594; cv=none; b=GysgW1P+3DcIrcH9nmoThTLG9H/Wr8clHXL1OZSMMEIG90eJ702+Dq6gFjPVZOOxA0Hrc6xUjZxWm4Y9H3YInGjrF6cloq6lyWTFpuMQMIwjIxhc33KAPlKtoiOnjBoFW63KIEClb9bcJXcYEray5Qdu2kkXhJwQA1uk+mvlWR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761873594; c=relaxed/simple;
	bh=TICIq5ElkTHO0sVhcIfWyRkGrysTS4UFjMBHZwiFdYo=;
	h=To:Subject:From:Message-Id:Date; b=dfbaL4/LmOtdyWEL4eltgZ//v9u0M45rIP27kijITRdtQc9vw9drO0bUyHXqIYgW0Vrdg2071KWhnW+IKgGyP+DA9r1HrAr/r10KYyTtQfmX5UERAgqdI8JpSCTq3mkVGoLhdcxpgBlsdvYDvP9xYjsoiqukYhRbGogMHh4slBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTit+CSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTit+CSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC2C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761873593;
	bh=TICIq5ElkTHO0sVhcIfWyRkGrysTS4UFjMBHZwiFdYo=;
	h=To:Subject:From:Date:From;
	b=WTit+CSLsIrUFzuhGyhJLq2PIWO/wNjI1ymYNiG5T8GgGQY+yDSy5rYeAJZfyEyyQ
	 tk7cTdLJ34QJSabq7xqfEps0AAHhiB+w2290bsEexugGcMGiH76uigwIG9dF7aq9li
	 KeomYgWEpU6NsVG1iW2+9oC1f8GqX9rtS5y2otqt313MamC694WoBaf4rF++IkLhXD
	 5y//knQUMq0KSHlZnXS43eFGj09zgpJ+EJAh5/ZZIqlexz3mBGxWDRxH2PtSrH3pJn
	 gWU1Wl5CxfIrxTHw5nhoVoIW4Xd2rOUQ82oijnfzjRg3xeuGCcUhh6HlIN+MK3Cz1s
	 5B8/9s5WzblSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92042CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187359358.14170.3452540085170075354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1069facc8fc65febb1537806330fc368b03e12986184bb03aebbc742015fccea
Date: Fri, 31 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761873593

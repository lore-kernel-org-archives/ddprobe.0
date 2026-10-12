Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C20A334C39
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791822034; cv=none; b=MblBBRvG5sjqPuS8j57FLzParFBTCObU+8V92wgjzW4BiGwM9dloQvC9Er1/sr3fXGj5/DGS23Ba+0vkHTeNr+YFa/gZWshDL/hBINUnXnTEDXZR8tsgOrLxucuMXgsxMGGac6Y470caZLFi/6a0glC7gVxHVapbWFU5FdCjiDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791822034; c=relaxed/simple;
	bh=Wvm9/foQ/Mt4V7g8Fd/u5umOam7Sbn7ogry9hlU8Bp0=;
	h=To:Subject:From:Message-Id:Date; b=fj2BaoMu/k2jVkVHJBALn8VO05ns95XdsoOjUQHZUg76aNZLjW2ESmvgbRMdA/DnnQn/Svrek7NGkA4g62bsWiF3gsDOi2U9Gr5kNZnhLZd2KRorI0iHqxf3TDjVkkPS4BYo0KKWHYU5WRcVbVHFARXmWhqxVRuix2EbEq3cyyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2sxdeT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2sxdeT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE019C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791822033;
	bh=Wvm9/foQ/Mt4V7g8Fd/u5umOam7Sbn7ogry9hlU8Bp0=;
	h=To:Subject:From:Date:From;
	b=G2sxdeT0rL0B8tP/drv5ziGR/weCcPxUHOeODPAsTG0ymsJfORw73HI1YO4goIlnr
	 S/SBB0CO0SS2eOgPbw0y1HeAs8KAdHZZAB2NUaRuwFaNEKGigEOyD8VuTgJcKJHtqY
	 4WrugPJKvG1ijBtM/YRWM0itC+CL1hPEC4ftUQ4lR/hiNnpi48PAZ9mOJf6gx7/1xU
	 c7TQrIujp8XDa8VeuaQp9rhQZ1wXxLO4Nfbmxjzu6EMVq5s3E2MEmWTUWdZ8Ug/JOD
	 zvvIHIg2Ni0FN6AQjB7Jdcp/xlJdvJwELg8dfKpB1sLVxt0gZzR3uK3/hT0JzbdM+A
	 UzkmjsaFGWkHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AF9CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182203372.21434.902789410260766288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027824d366d4da5fe66c73eb60b6257361e245f6c709b2f6e1806037bbf313ea
Date: Mon, 12 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791822033

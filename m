Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8894749629
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720174523; cv=none; b=WXJr6f5ISTzC2Bh2VJioSNEo/91s231VERDcxlNPfpDHGgTK3exPWIDeTdKaJ+aJE0jQXC0SEOYM3hl06+5b+4WHqto90W6fr10VepZUWCnm3yHRwcaaRNyWiAf70bQgsxSFcfHzZL6ceaxFRlV3WU016kmyO5oeD3BCD8Zd5xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720174523; c=relaxed/simple;
	bh=5f2q5n4IiTbyVwqj322qNyUgEDJlafZ8m4dO1rJZCFk=;
	h=To:Subject:From:Message-Id:Date; b=djqp/EtH70MfxfWEDqOVlXYczBWoUZ0G/I60dLfeIr/JA6UoZEDhHTgUXgZTEFgBV8WoaSo35cj5CvhWETlXWiJ7Nw4FjiNSwqP5cKspthuL3DuF6pIEGDKnCOZvcaFlSXgCq8ToPTqGDd+XawOpvUruvDWHfWXv5LlZJHTsx30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcpS/lYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcpS/lYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6923C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720174522;
	bh=5f2q5n4IiTbyVwqj322qNyUgEDJlafZ8m4dO1rJZCFk=;
	h=To:Subject:From:Date:From;
	b=HcpS/lYZt3IHAxZgZyaQE2aBx1dr2jp4aOxryp1GBFned959gjD+8bf8wlkdIKFBk
	 AX6NLn2h0U0Y+eZTRe57ToXWs5qFrJ75MjyzwOp5yKKRTIqMb2r9l9ZeyT+5cwxlgO
	 EqLPdy6tC4WHUVFgGSBg3P7vczFg/SFry4pMimzTtTmhXBJGqMDMaQPpVBHld8Rke7
	 iew90FpqMsgLjCoLfw43WAmC4UZW56Fzoa0tVfQwFlGfjDiH2C2gr/8++H7wkWMAs7
	 BHPSovOCoTzPRtDyXqFtsWK03/qnwNtp1H+xHpYGwYjK/3kYJ4E1/XtScV7UU73bWz
	 vzarIIrnI+bFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C417CC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017452279.30348.12140019073152673967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ac93168191d8cf00f2512a545c728e693815a6d544c5fca281e24921c498c2
Date: Fri, 05 Jul 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720174522

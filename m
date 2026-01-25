Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2C8F4A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769324034; cv=none; b=h+WlbsYJPFXskfnbloDm89Wq/HIkyfeZHv54JS1P+VlZlW1xg4CLXMUn+Zhh4NT8tBb38pGHJtvzaaMzdhlu938DFCVc2iV9mMgG1PBUXl2cLNr7OGJQLChLCvlYchkdA75coGcHN/cvopa0VdTqLzrYTAhCaiefud+SlzjLlFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769324034; c=relaxed/simple;
	bh=CeBkKTbNKhIuw2IJFW8nF30FQZUFAhyLDWAb3a2LXSg=;
	h=To:Subject:From:Message-Id:Date; b=NlSGEgOTxw4FdJ1MA66A1INZJ08IsNHWeU0gh4B83ILadYe5JpjMxuv+yrou3rCEbElobZpxAjUTTSmWyOVDmbwGD/7jy4+8DdCPRvynujRhXU/0TBSn/X6BquHvIP5thGJy/EwM43VEYSzIZI4ZIbMaxkRLI2+Y8fWsyj81/6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9g/KBNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9g/KBNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EBBC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769324033;
	bh=CeBkKTbNKhIuw2IJFW8nF30FQZUFAhyLDWAb3a2LXSg=;
	h=To:Subject:From:Date:From;
	b=D9g/KBNjaEc519RXcvV+fXTEfEC5N2hqSuF3emMJkFVe9TqJqoyt3oYftFHs8A8/r
	 RIvihQ/q3XChDfpCHHZ8vjnEiIFAXmst2kh5Y8LqBXvxDdltX78gebj+CCO6wxJ53j
	 8yp5m0RDZXkEwFYmomT7+JYcVxNW8AFmOxmyf8X6p06prcElqny3M5fv6r+9HDUKMH
	 TkshiwgzOVReZQqDCVw6PxlVINIw0LJ0GOpzeAk2Fz50R4hSzGVfgFeDu4pjhsuksw
	 y5bL2gJFjaY0sAooyhWSKrKbc0HmQ7wE4wTUJFnXStk2jPIdUN2a2FTxyxUs9GO4h5
	 vA+mIzgh0sZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9890DE63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932403359.16904.546803419439691928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b850e3dc52d6925a721218c0ba6c93c23bcf6ca4ed68fada0f0502acf84c219
Date: Sun, 25 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769324033

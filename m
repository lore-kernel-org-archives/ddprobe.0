Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4462A15C0
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738973755; cv=none; b=Q0HcOU5ejzLbT+kZWE+Afbzvxgs4dEHq1Oqi8E+BQfITCF1DIBNKUr3YNFP1P763gBDUYD726pk8ahV4dikyg9kr4rAhfw6raCZRiZg2jQ5IQL9gtHYZR0OV+abBwxLG32xrR7Y79xuNaHsczFoCB1/b3b7w7mizQEVdYTmTxWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738973755; c=relaxed/simple;
	bh=fnlwx/sAdcsu/ACqFSORnM+bKFnNhm9LC0NfFO0mWoM=;
	h=To:Subject:From:Message-Id:Date; b=FLBqt/2qS0wS81lCaldlBdBbSTNVG80s3uLykiPdj/gxM0lS/xVBgg1Alc6qZxUP9DEa0b94xUdSu52ryrWb/j3A74d/hm9B6vg1W8WsXWCslm/EN9Q+Bq38X3KcQ9hypblBm/yYqNAmvN0yAOHC5GGnEmM7/5X0O7OYCIjTiw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJsIU0/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJsIU0/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF0CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738973753;
	bh=fnlwx/sAdcsu/ACqFSORnM+bKFnNhm9LC0NfFO0mWoM=;
	h=To:Subject:From:Date:From;
	b=qJsIU0/nyWmWMo6zAe6E10QTCydh6AWcb5UzPL0gDE2VALNstEuaPG9McscFkNB46
	 tgSMx6cpxmIqgh2z0LkPkWqaCmhRJYk74NGjN81QBVGsT86knZAOB936Ll7KiBTplD
	 m5qMyNQGDAH2S/tkVEgLiazb0nEF3BMYjSdCiPM67CiurUGQyLtXnd9SNdX0kXqoAY
	 Lym4Gx58hI8CwxnTGEd1ShNeo0DecxuUQGre9lfU7X+9ecb8ToVg8EMy5Mlqw1Xn+A
	 S365RYBD8mI2ECBP6N4Pi+fqcUHP8zlJ4T4TEueePue/lgWEZye4RJREoFEUXPZa+l
	 MhZtrgrQuHGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00BFC02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897375362.15143.9205560512688041962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72830a92f2e0716852e376007c692225d0d0b7c2f58033822d81787df8dfb349
Date: Sat, 08 Feb 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738973753

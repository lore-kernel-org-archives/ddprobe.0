Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385E718B0A
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786917034; cv=none; b=hRmm8UM5uOyi1jf2s2egW/699NQ7FNQuJVf5rQIp/UgvdaRJpGRQh9u9SqeXTYkrBcFKvZbIhhG58Z3gIgSba6EosXfWLrbUbbb8vyDuuga+EmdPfp6GJNXUkBjJCzGIIR2K86ZLmNAB13q2Kyxwuhmv+uzvi83njOmvfMyAn9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786917034; c=relaxed/simple;
	bh=pnP8jlZrk0+YCX6N4l6FHZuqcpc9YVoNptfrfOUj06M=;
	h=To:Subject:From:Message-Id:Date; b=g32w5BQrA+MsiCfoKxy69nfP5rssGq5y4WklvkHoI2T7kPdiDgziKsdBEyS9FADhbIncmEWbTn6pjHJFZodBkYX3/ZJqERH2PPjGwfswALmNFz8d3WU58uayhqP0pqeTSu+DEnExDnl4/VVFmu5NyWPVUrv83+bBP0mlUenzO+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCM815eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCM815eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7878C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786917033;
	bh=pnP8jlZrk0+YCX6N4l6FHZuqcpc9YVoNptfrfOUj06M=;
	h=To:Subject:From:Date:From;
	b=SCM815eQiKEhmTfuouTLtCkyUUDVprppPde0O40nZjVCCmWcY80yj5o4G9Unae3tC
	 Ku4bn+Egb2cz06PMICgcJ5ep4N2ONvPG3GE4q76u5FUQM+MVBw1HU8EeVqCnkRdjMp
	 0dHQZ0MjNfHcIorK+p3254lvdstlvVRe9X8eIkAwublWSqRI7CVFFh9rzhQ37R5uEp
	 w5kSE7gg5PvtZf4FIVjRNTfaObyx7ya2hklx9f7tydFu/MJ1rq+FVlwe0Vu8dsmI9S
	 aBb0vNqCf1mu9JfhPemOGlfmixJCAF7Xa9T7Gaa+KP3V0/1Iivq92awv8k9dG/QK6H
	 THRIA/oJeihvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C017CC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691703374.27390.12390785408535136364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194ee27d0018cf6216311c1d22426b80d948c6d797677dbc58898b748ff0a0f9
Date: Sun, 16 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786917033

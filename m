Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CE713118A
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711642097; cv=none; b=HGJmmdfTo/xDqchOHJtotl8KAiF6+Skn94NgkNy0FftPKsFpk0gtRiP5tOLYrK/l+iYcdrK5ggJOyI/5uinkopPCPvtf2HwbSiiP8/8iuSf+4cchBbcQbRwm+1LkFfrdnoZ+VVcB7PH5+T06fIuiuiNuy9OFMNpJZJ73cXM1vnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711642097; c=relaxed/simple;
	bh=BUWwG87l5rnSXf9OwBm3yJ5tiX8yegLTbap9cjOOiQo=;
	h=To:Subject:From:Message-Id:Date; b=b37vgysE6KwlmCrz4pI/LMtske5KUEcLJjj0dHK7QnPlfeWHvqgdY2D+XagYpimaEodyv99E8l2VbMk0WJmtczjGo5AYR6n6ZMCHH9FD5e3vsrbGaZRbr7RTGgmgLnrhszA/caVG//cUgpmiMhe7AKV7MOCZsKiDId1/YenKIEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpdOvIoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpdOvIoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DDAC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711642096;
	bh=BUWwG87l5rnSXf9OwBm3yJ5tiX8yegLTbap9cjOOiQo=;
	h=To:Subject:From:Date:From;
	b=fpdOvIoDeY2/49XOFqT+NjB26bQZPw+1q/qltZfoLZOBhIG9s+1Spkbsad9KNX49s
	 E8UBdbfm2C3paP1g/Y56/CmI/Zy7DwgQEYStYPO9nLDqfg4xvEcnne9Md3ealJjLiJ
	 04v7Fv9dCt9wKa4+RJgyuvve2mOzeH7yBP8aKT/QCtdKk1iTlIM4/fZWwQCjgL+qn+
	 VYa5GkU8mQaWSk1IPU1zCsCXAwWq/JUPQu4CyunFdmJ5Ok/fOX1ou67iiFPE4S+drt
	 eOZWlxXe5kbwTAHMiPDbUa5FXSKbbiHpvilMOnxy6DZWl6a1oKVqDqwbXaq3F93rQZ
	 NhKPg4FCf0FSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92529CD1283
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164209657.5405.11202558593683502087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d399f1027988ce7eec4d75e1b54c0a0659bcab2428a16aaea799a4f61d152328
Date: Thu, 28 Mar 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711642096

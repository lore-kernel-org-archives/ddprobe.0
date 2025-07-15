Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262304C83
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752601795; cv=none; b=VwQh1EyeBAlFAGx1cHUMG+hRWUq2rEiftujtgxcViAWrRaG1p+c/kWSFTApIxxl1QzYOHmAKnh9Bxw5zkWRgygM1HQqNuOtEyR1KlWuF0cE/HipYWqAKRbcN3h8kzEaYysZiklOTCmgZdKF1/m+gjbhc08vTu7Cm343/WuQtJtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752601795; c=relaxed/simple;
	bh=Vun4O6box+YxP1EG8Mm883ypT9WQ8TRMJ0itRV7HK7o=;
	h=To:Subject:From:Message-Id:Date; b=cDBx/W9YjgHm5w3gOHOb5f/OTC27DsyDu1+h9Xh7y9sNwzojbjnvhjRzH0dNkB0SKC85xfKB1TopwBGPr0tRPt1BEhU8E6casfsmKkaw4UhUm+4Eq+ZRtQBt6c+BOuUeFGFzbEm/EBzawrrSVPsnS+4PLG5j7YYlAmhD/D2oFHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piD9LfV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piD9LfV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D4C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752601793;
	bh=Vun4O6box+YxP1EG8Mm883ypT9WQ8TRMJ0itRV7HK7o=;
	h=To:Subject:From:Date:From;
	b=piD9LfV2u5ZueFUV9AHDLz7FjLZsk43a7G5PqtbMGRTfXc9ABCy/Xpwi3ttNBnv6O
	 48vYIlt9/9U4lQbmHT9zcbnuYPLt2aaS0km0tEf067SNY8S+tvDV7oabIMpfkQkNNC
	 Qmb8fm3k+97F7CuXuIUanstxen8h2zpIN1CsUS4yU1ONaKyPLr+fyrghfk2nOEUCZ0
	 ZzpbCoLInHWjAj5+Kw1A6bJ3kVKaoBZP2o19lqnmOv+a4cCxz5x6ubFjVouqgBO1bi
	 13L2+W9FE71P8kkCHbzrjcgHSZIfcbd9VQ/qMULnt/hYtY4p7fjz07b2KmgsEmizP3
	 53TeJM7FFgjkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F10C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260179359.19201.3787879300825241982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4d351e8af7eef2472677e8b8874698388d37c08ae2a8783a02ada0a49a3939
Date: Tue, 15 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752601793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3163F41C6A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780275874; cv=none; b=TXlKQe8MKarFWv8XGnx8FP06TdB6041qOvLlzBDuwssQItKZQGxriLR/mAiugy2c/AVxXb0NmA4i44CRHPhxufnEvcY55QN2YHmwteJ+CYnlgRhdNEKt+gqYtJ8r5uILrdyhnLLuEeSkO8WcjOAt2GlM9gl8gbL4/Q4cqhmS8YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780275874; c=relaxed/simple;
	bh=mdxGo4sX0cZhElU/zUQnJP2Yc1GFX2jfb9XElIPMz8E=;
	h=To:Subject:From:Message-Id:Date; b=DoT6hxQrTKddrwQyD/pF5fuv+wxwaxLhEwksleOkJMfQeOTgvz4IJptK3APYYD+dQ40kL6exBGygaFYH+7vpVU7Q0XGewzIU1DVwTaY+2gOaL3q4tZSiPcG1hsR1rhzi0XESejksD2YvyReQpxd9ql7jGZxp7G+bepbXOJHNqR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLtJzony; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLtJzony"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF369C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780275873;
	bh=mdxGo4sX0cZhElU/zUQnJP2Yc1GFX2jfb9XElIPMz8E=;
	h=To:Subject:From:Date:From;
	b=uLtJzonyAJqgwPbQufnj0wxcI1aS0vhKiGCFg2lDvCSG4mbZ/VGL67oeujYbzThjn
	 0PEIevDOiALQCnOtHSSL+t9NRbwkBtcPwoD5eUir8CFRSrFX69w+FdNV73Ti9avaVy
	 fvDci8iTsGzaixHknc5cMB6glOyD8kTGMSLfxUAyiE6RAfay4YEp9JotFBQWmqs8ru
	 yqHRAznVQaGxjPmyZvcp+7OSnLAoQ9toMzyKhaAWPlIDRbRNoXvDELqxkQOjuW92pL
	 3TUzaYs9lqCOjtJYhp94Cf9pCOMRmVKeyQ+wj9F/J1p0LkdL630glBx8wKRVKNLeoi
	 65KR647k8K/zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B797ECD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027587372.11258.6186849330611038270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b0a17b3852f16d6778f182ed8d2ee339ef0aa1a0bbf063211a582abbbe5054
Date: Mon, 01 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780275873

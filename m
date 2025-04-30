Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F9024677C
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745972394; cv=none; b=Lt+LJKSM6os3nrdLhKpZ0kGVFG6RNiGm2AFecv5ANGfHTUwy834lX8mn3PnHZp2bEUoHo0+eCZ9BZ0PbHRBGWt9ku31bIjMc1fgyTrh+pxI+lqy4T2LkXwbR5r2OVKgxvz+jrdM6HuOX50O1qm0INUF9Ov5VLGPtOtX7myzZPc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745972394; c=relaxed/simple;
	bh=nSYZiwnXR0WmlSfA3QigIu70bHT2WzEjIKF5Na/8Jjg=;
	h=To:Subject:From:Message-Id:Date; b=sDKj6F413Rx3a0zojqDyGx+wh2KXVQ0WS14uqg3W6bS1th3i4y22l7VwujfuM7YpLv+Ku+xf8ZePYGeIh4IFMI+H8vyIoX3XOCG3vr3mth71iLzxWnkS6IzheVhySxB9OlCTr724KxAcljXn7OXeFGsBDeulSnRrWZZ0LrM0GBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCzJwXYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCzJwXYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FFDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745972393;
	bh=nSYZiwnXR0WmlSfA3QigIu70bHT2WzEjIKF5Na/8Jjg=;
	h=To:Subject:From:Date:From;
	b=CCzJwXYEGM7ENbHJyLk4PEL6Fwi5BQ7i1AiOT56yGEhzBbkkhb4mIxMq+xnaPcCPX
	 Jyuv9B41yWLeA4rMgUzq8DAEGZRu1MivLFx91eo5JcrXA7uqs8iZ8KB1XkWaDwBoT7
	 ogWnJo32vQwzWH8tLrEfnnSGFgRWtooljKzzyFKdpi5ZcduaSrcu0kvoubRZAY8mHQ
	 JioWeB6YG6Oe3lS4qAz6FLjHURGYPumerOtpjnhER9cc8RoMmj1MOCRXUnSrd4ghI0
	 7utP3I1n5rvGMBjVsb5hyRcgGTL7FItHpOYk7pMBLvTFQ+nI7pJ1YJF4/igsFwNV0a
	 ShyojsDPNrcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F63C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597239357.23899.4412562888503481384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083f2e374bb44f988e58b113d02934591b30c37acffc089f3cca4364c566e871
Date: Wed, 30 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745972393

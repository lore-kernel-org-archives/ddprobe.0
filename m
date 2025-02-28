Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F3E1C3BE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740728334; cv=none; b=R2o/bF3uXmOdoPHFe0s4HOMmiThwFLFn+ucEX/RsRx1InMNqHJLraYbxqQ+DiEW+BjXErXmLyLlo5NGXyF2ar6i9h5NGojDxx22DQt32GGYpqaISCzojWNzBfoPA1U/mWjonHEJ3H+uuyEEXYx5CL6/v8Aqa+fSXJneqjSJYBPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740728334; c=relaxed/simple;
	bh=y8yUQMFsECyOIOqwlwYxJHmL82+IP/Q3CEmtY6/8+Ew=;
	h=To:Subject:From:Message-Id:Date; b=Rixr7Uh6VzvEllglhqrDhqLq5oUiFimOTb/cDYVrpFO1A22TwqHtNZDBSKQl1Ni5EwI5AXcTfP/RPvB0sQBQVKpDsMXhC1atFkG/GRtCbN8vFhMlFLXCvR9SWJZ7wWT7IL8J5FBwr4HzKs0v3U2+vr9PJImMiAKKeQGf/Z4GxT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTgBOoaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTgBOoaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7978C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740728333;
	bh=y8yUQMFsECyOIOqwlwYxJHmL82+IP/Q3CEmtY6/8+Ew=;
	h=To:Subject:From:Date:From;
	b=VTgBOoaVWX4CEiYBJUIyLSybefD4G3nyt4OaydJMTQ/PzpnWIns1s+4kslq1nIY2c
	 ZPhsitLXyR9JYAf3leRaaunTlozJ1KK+mqYgm0DpTXXsLmxl7Rjx5mEmsD+kq/4fxP
	 kkp7nW3FdFTqiQg1j2uDNKeicmXwMxeD/ra+eWAcWlnKC6TQx7GdtN8wCpQWUtNkTm
	 6QylWTskKV7reUTrguxdjEtuYWV6YRqRuYCPyMYsP8fU+OUMgKatthrjAYPqlGQYHd
	 moUBgUHvLEEOTQGn/aaS2+Pr9IsMATktsxE4ZIZ5JWlwyNO3Qx3/iDaDrahEM6FWDg
	 ZodexbvYyjHag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBCC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174072833359.23445.14698440917040392150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44fa191748c93b238faff4c6a16db43d3ca6e472a260945df85e35da15fcfda
Date: Fri, 28 Feb 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740728333

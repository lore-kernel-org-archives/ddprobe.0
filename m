Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A59F2D0C71
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755299994; cv=none; b=RZ/3uuGQ4sj2/3Qn0yL7zxax2mCrEUCIrwJd44fdDAHxXChWSdM6pMbmB4CaULW8X/nC7F0w5IZCR9VyXhDO3YNc3t7m84Wyk1KENeP4VvHwZi5Q6dM2amKrTMpTQqmO9HGIjsholGg6l+yhcDw4DD3LMXavV2WIHtKqmSMz+qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755299994; c=relaxed/simple;
	bh=cYqvwW9fG7FRfkF1DpOKAu7VPK6EzOeGuCiIogr8JIg=;
	h=To:Subject:From:Message-Id:Date; b=PgikMI53809MdKo+hZUp/W/lL3kyOUtPdNcQv+LeFBD+oVaVIYLZSmJB7Cj7LpasW87GKsHANL/1c3461wpUVUf4cyB2jR7qwmyxq0kjeFoB3O5vA/kSN/Zn3dDQbHFuyTPo/LN5Q0qY6iEATXe/UwTbpi4gL2+cFR2j7/cTViU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1UhI5Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1UhI5Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64FAC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755299993;
	bh=cYqvwW9fG7FRfkF1DpOKAu7VPK6EzOeGuCiIogr8JIg=;
	h=To:Subject:From:Date:From;
	b=H1UhI5Z1U7JqjFPyZaSvaPMwMn6CM9iAZXrHzt8mhHO7TujGIUCSi/O5i/NTfFavg
	 TQh0sSuUSDVZl0yRgaCPwFOtsH/HMsLUaEjFLRmRgSyxwg0bYvm/LMcp5+iOdH01xd
	 dc3J0KIp3MOIYy4A7nWN+y9r1I6NYbuPPMI+/tpVt9HZC/LKxumjHpfyibvXbxbTmF
	 X/zW8dRV+UOLEzU96vTrhi0hgC9wm7uhgwuX8Pbzh2RkEAj72Co30dMJsfjkJ2eErD
	 kZ6XcaXZHxxRo2WS5jsfYHAn+5jJ4QIDCHHBttDASO4AvXEVhQ7LU8tMAud4fYZEID
	 oGXb0y9KKhVxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C58CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529999357.12137.17436636245281733645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b8c0daf2b337c91e8f169340340322d5945ac25eda0b00dcb656a7bbbacf65
Date: Fri, 15 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755299993

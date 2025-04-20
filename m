Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532C31E4A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745146794; cv=none; b=phEgwDNdxS3LbTiR+6pJ5pId7/2ZNJ1aTm6bDdCPtpSaU8NvHp1gyNqrKFEOzgK7OGX6ZgB42g5pQ6xASw7DQukS8ddGX26/29JyGAL/EGEJLDvrVSdxDfDjGGIsZtDelRum5c2kNIfNTSQlMsrljI+CXjfnK+5xGjtp/M9ACQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745146794; c=relaxed/simple;
	bh=Q5kq1o4+sDrYHjmWIeIPb2wtkcHxVL/BtMeQDK6U1cU=;
	h=To:Subject:From:Message-Id:Date; b=QOHcM6wTd1JipPxVCByGoUDwLr2TL7wNyN4y1lBW7rJwvmx0/Um8kfxBNmhClEpacUDiyg0Dmg7HnOGzt3ig8hdLAwaZB5m77BiyeEEkD+qAJx2CiG4ejSUvkDZc3X9YSRm37/h06quDobpIlrK0ptqxZ4cQs/RmvM2La+Uwt2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIdj9prz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIdj9prz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A774BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745146793;
	bh=Q5kq1o4+sDrYHjmWIeIPb2wtkcHxVL/BtMeQDK6U1cU=;
	h=To:Subject:From:Date:From;
	b=QIdj9przkDdwyMdRh0JSgui+pJ+vTjT9M83H+aOB+Oma30O2KcJwarA1Bsfz9NTza
	 fBZ+JYK+usSdAMJqimGmNVnz3im6++1D+4RYTrZ6uBvUThkc1DC9UwWIP8lHsYlY/H
	 inAJ2u5X2gUNjGTmlyvX4p8eJBV7KMzruRqfP5az2PShfOwbQpXS9dTH6vAEDgWM5Q
	 byU48BbokBtByW0SR2BDd7gWa5c8VxApi/NSMsdOcVstlE0kJ0i6wbrTpoHNbN7Ufg
	 iFBboDM/s4ONY2hHyfNYemt/IHdie36Yq/q7QJu7CFsV6Amuxy5gv8kCjs+hcBhEBo
	 hjkwPD62o0/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EBC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514679357.10667.17884811166167598557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fcd0b336dbcaa2ff2bc11b18487079c16457dbce8104d679f4b9cd9a1b490b2
Date: Sun, 20 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745146793

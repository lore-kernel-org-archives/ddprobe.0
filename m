Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB582DCBE6
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748039994; cv=none; b=BMP4MD3AxMo38VUHYTEMbUYzARDB8PkfBwuLJxGM6mDYVacdDq+Ryd5xwd8Esgf7YD2YM0iBiBZv1dQyntR6YvcqwXiVPGyHFLvycn/Nl7EhxZrHDsL7+NNpFnx5uzgzproOJXnWQptyUZHHswHhb9rp0EJKOR1XBtX3X9KPg/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748039994; c=relaxed/simple;
	bh=fpYXPCJG5jooZ06q4xo04gkWbJgYx2cGuW8B3TadtLw=;
	h=To:Subject:From:Message-Id:Date; b=ZAQyOeWVYwlaJYqtUgAi8Z12GMrmY2595GShHJ5e39zXCehw4/GT4JB2+1uFokZUABsbRK439YlUQlqDqig8xV1+AV7axhQj99EPXS5TggkTXQwO54xhWP9h2VaA/AFurHs/BRsCRGXUYB24T2hl3O0+JtySPcRJya9c3FGLqpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6Vjtqoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6Vjtqoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B118BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748039993;
	bh=fpYXPCJG5jooZ06q4xo04gkWbJgYx2cGuW8B3TadtLw=;
	h=To:Subject:From:Date:From;
	b=t6VjtqohBxWPUNeYz2H2QKpmOvn0c9SMulUpq5cg1gMX7qjU7sKEYa2GyVctUfV7a
	 ephRN1uCrwtC8G5nw9xzVA413xxeNrFCnrT5i82hZwrsA4lnSqOUiANC2Wth1ZwQde
	 OM9xaJNnVKBeHLER4FVjLDa7lS/krDjoutp2qxO8D8rTUyA313q6YJW3wz6WMg72sY
	 YLj2aLEHfEVyUnmgijAISlZElk/4tayV8dpsDGGKaKZmCOzzKJcBLqo/itvbvcYZSv
	 0jk/wrKEUuiwpdBqTfO9eG6yoXRlZ/mEGCVZ7tw2U69iPFuLAOW458hrQjtZ+ZtfzO
	 J451mJ7+cCtLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F66C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803999358.28130.1064872919673894925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6817e6dc79ce462be2e74cca6ec710aaf3c16c0c1f11e24cdebe93ba948a16c0
Date: Fri, 23 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748039993

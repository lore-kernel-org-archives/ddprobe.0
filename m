Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B7E4502C
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718868563; cv=none; b=g9jIcw7HFVdarAXfON0mU17IRkLo4cTzPirsU+CLdcQrj/gQ4yIN5tubUzIB72eeDAYkDDW1J6bXWmus/NrLBOw+IeBZqL9kbVivZ1mbK74x5nzttFkEJFjXYWlgMRElp8nydXdA6lvVL/166FlnYU0sMiTr1KmY2nQXRQg3SII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718868563; c=relaxed/simple;
	bh=xFAGdaHAGpLYT/2r6JAPcnHqeESL1zjUTKvCq2xN5DY=;
	h=To:Subject:From:Message-Id:Date; b=H9QgBa9PoZrRPJPpS05aBd1fN1NK7d8ZT3meBKMdKvED3nLl00KPp/FsGRvad5JOhWGlAdsDrrizhrY4V7gwESTifXEjddVc1RZcwAdX4pQ7kEv/DD6GHWwqUHCUFhC0tmJj53NV/g1JTEYdzh0Iq7nkAUwQaVBuYv4HuHmjKMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myOROkRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myOROkRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E8EC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718868562;
	bh=xFAGdaHAGpLYT/2r6JAPcnHqeESL1zjUTKvCq2xN5DY=;
	h=To:Subject:From:Date:From;
	b=myOROkRB4mTBfS7UoJOO/MyBRnHCTp2bcj7Nsm3gplX+DReZBOHyHaL80v9kbFGkB
	 2FYjQsvXLuWNqA3Qr56mGRq0clw9c8F2ifK5Yqg77P70nO+HeJVqUUbutDpE+Zt9mZ
	 vElNIMmHsnJR6thaxjX12a6Ijl2qd0OG0YoCB2r8MPhiqmxOerWDmr2FdW+xtOJtsk
	 kuZEJrgqJfY/rxO6++U7jGHMCQnMW4HoU3ZO92BXyOdpTQ8MfwO6kM8VfmOLmQg2jy
	 PjgeL2zXwK4KLyg11rQKZS4lUfJXUbtNu1wynBnLoNzb3lQ75Mlf5OFW4/+QOXsMCa
	 kAx+bNwC95KkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1783C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886856278.15483.13047947912273105541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b27414b47772adad3dcfe602f50e011b5a853a1700702b21a297976f2ff4bf1
Date: Thu, 20 Jun 2024 07:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718868562

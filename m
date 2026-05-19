Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C8F49250B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779194434; cv=none; b=kNze4EARivV8HRvJ4g3vHuK9V8WOkC9Amr5xzQ7zlVDIapzWyUhWcIJhXBXoA0ZK09WBLyYyQ1TINGkOE48dzqw44Bcz5UvMVh1FU5CkwBH4AwclI0FSM4/UhdvD5uTulRb6LSwGBmZcAo4NDsMvQmHZ+esnHCEtHD3Is/ybhzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779194434; c=relaxed/simple;
	bh=zfmAymCdh8F2rUDySwV+ckCjb+47JzmktQQLCGyTwEU=;
	h=To:Subject:From:Message-Id:Date; b=n5H2zlI5NJjzhFc8wAUyIdwjmQeW5tf5F/8h9vFDs0N5rbFi3RHLASmrizdTQEpt1oJdp1SGFu1MHtxvtYS0BGzXseIAcYxXpl5e5NZXdftUSR1+YDW13LGZeF5lw1Eh8w5+znI59q5WDiv1BbSdCnWkEI40xWpshGGpf6rmqkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq+FFuVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq+FFuVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21DCC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779194433;
	bh=zfmAymCdh8F2rUDySwV+ckCjb+47JzmktQQLCGyTwEU=;
	h=To:Subject:From:Date:From;
	b=lq+FFuVFjJjNHOyDORwKzrNqQIHQ8eDZ0xbhHI/K8R/pqQR8Rr579wVhUWq0RC/P1
	 R8Q+2ShcjrrfZj8cDGDcElANT71TjHw7XNv+6DtLQuCpz2Wj/Wx38NxKOP2hiLtIJ9
	 6RinW+w37kYjOP9qZqmDOQNtQkDzG6TWavYN+P7SdKHn7QMlxc/HIquAQ0PWuGjCY/
	 iaEY6c1VHSGub5f2wA/PhxMOBPokVr3RP4BGeJ8kQ5lyJR2s+7utJkTt1ae9JtN7vN
	 DLlTBTDYD/K23c6SoIFDIu1tPO98KjxQInqJnb3AfGM4mnRUC2S3WjLNdYGqc1VRZf
	 qQ9fgAkWAcDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E9FCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919443371.2737.2645839125507243333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6b5c5c7502de8cc3ef594ec918c50a3ec3de94ac1be5c6ef44b346b74c0c25
Date: Tue, 19 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779194433

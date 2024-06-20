Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC613A1DB
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718862563; cv=none; b=cVp44B/GS/DSR7vRycZK00goLQDFc9RVKu6u5F67Ami2BnuXrMS7ZN5MmiBa6rejOMlGWhuF1eKTwzWYdVAgEIv49gXpCggyALGPRxwnhWJrUsqGBlbemUMvRR6WhdBZ24ymtSRJuWVQU8VFlz+caxUhBIPocsTzFz5GPqwBHec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718862563; c=relaxed/simple;
	bh=I26qOQq3+n7Ma6fTVtamDb7jWKdelP3O6GoJk0TPK5A=;
	h=To:Subject:From:Message-Id:Date; b=U6nf8+S0E40TUA+XeBigQ2nCr9bknrwQD+fLhoRXttoCSKxdBrcbMg5Qn9/JrNWXTrPwd0229Yac7PF7PB/IJWol9xwbIkVB0aaf50bF8vwzfj4IdxiHyppPXBBcBcHhAIpeNdEUMGZgoOwfrqBw2JgCSd+dLhLn8rNlPk0+9j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLLG9JUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLLG9JUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED55C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718862562;
	bh=I26qOQq3+n7Ma6fTVtamDb7jWKdelP3O6GoJk0TPK5A=;
	h=To:Subject:From:Date:From;
	b=RLLG9JUuMdip33MQFO/Vf6skYFxXPyJgYEnyF2BjHbWNrZ/YV9xflh/LV4s7Shmrw
	 vYohtEk4uLSDJ1SM5cK/YzHxJayw8GCso55KQTLKsQxxnDiuMzyfglzgQdQQOxkqYu
	 rdxnBPOy/LvhxtxmoHRHpIKdJrG7/ta/GYO+yVY8oRPr/evxVLtrvHXO+RJqhxpBXC
	 CZ9Z9xQdeME/yXAuE+qs0SmRLxMwEVN4n9nV0TVxKZIOBYixHjanfhCivhM7Ur0E1p
	 sabd2im0sRZCI2P1pV+FZ/srHMJGarV38Px1GdXN5c0nI1QFDwzrvuu5O5vjybKuX6
	 piV7CzuZzrIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B40C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886256280.7274.412415108916868550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb6b91384ebeb04065ae6e026c22b1ab1864f1dbdc26005d87a4786ddd599a1
Date: Thu, 20 Jun 2024 05:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718862562

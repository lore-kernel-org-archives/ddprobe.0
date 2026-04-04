Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E1523C512
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775286934; cv=none; b=NS+lVllAMhKKl6Q8nZEIcLr1kSNRJR5BLqnIcA++rggGbqDNr9tF9QVfN9hgfzSl77kPj8py57kC3REluh/joKgQPZbK9jN9qeviB0dNWnNroCozd16AxdMw3eW/V9GZ9ovjK0bMIlWQsWgAkuWW+i/dVB24sphV35zRCcqXVw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775286934; c=relaxed/simple;
	bh=IcyrAHPEQxDq/4gQ4/p9jHf5UbWFqhRoy+YYcmMPQ0k=;
	h=To:Subject:From:Message-Id:Date; b=K1cSf2OCjrrNr7zkTMoxxbqdJkucODMrL7/S9dQN6Tqyl3YYvt5d8ZCDHHKfTnEgDKQuuTzBsGD7O3fMPB62ESmvKPivmyhuQbX0RfF0FNSha5Zt/kZAIhVUMNeYiLInhNN8A6iqsYwXyVDaOfaPDQoGn+Mppe3lZh/RuqpL/Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNLMmUcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNLMmUcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00A6C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775286933;
	bh=IcyrAHPEQxDq/4gQ4/p9jHf5UbWFqhRoy+YYcmMPQ0k=;
	h=To:Subject:From:Date:From;
	b=vNLMmUcSskiTrHtNZnhUgZdVvGKJkNjcQhbTEvGDhuzZCcPN+tQjkFRWUDUkwcXKm
	 JxoTha2iSqvZrU445CvFD9GMO/h8EF+v70Usxggpe9EY5DBMWgNbCNxcAHMvANQBiK
	 swqWAMHMQ6kiFhx3BRejDg1xjcEQkNRHpHv4yNBDi1tdaU9aji29VvArmvaVu1hOBO
	 7T3CplXXSYGhXH6dtA3pGrie11S7Jt3NSkB5qW20Rp+p53PDFE+PBu8akaVKzSkv+S
	 Laf8vRBGtcv+SoV2qOQ/0rmqB8CCmFo0qlwO0WVO1/AEL/0CCqcSx5U44q2rPT4bqb
	 MhvQPbccOutYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB96DE88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528693368.3173.4105121490327148565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364bcb4e2e264bb7f59689031239ec1aaa66ce16141a0167d3b4476c4a77376f
Date: Sat, 04 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775286933

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B93326AED
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717691243; cv=none; b=OrUNLnJQoxql5gG7BMx1fJHUYHLJ6sjHXAMDEC72y2MJscDThlnIxnatMmo3VoGejgm+7xeIp1jJYosuq4HeVv7NYKil2V3S15DBlBDIhnWYwwRxvnT8prL38FhfvwggwSBiJ+USDTfWqtQPiehxamy+Bd5363xuoJP6Q/XLZiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717691243; c=relaxed/simple;
	bh=M6h63EmHsYIA/MngOG6lJW3yGfL1yxXFZyRy2WsOYBo=;
	h=To:Subject:From:Message-Id:Date; b=V2P3SoOpiU4Le7fQph7gaVpZsaPHKbfMOILiLAJuS0iAkc3WnNehHCagYsPYfQLp7xMprLupfGvsMEWv0+8sVTV4tmGsHKpYPBXYa3GpMTFXQ18KxeQmyRIttZ94zu/lSn5IgPH4NxKQHw/T7Wdxo1CZAvYHxzBm5Hmp71KWDz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYatjyQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYatjyQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C44C32782
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717691242;
	bh=M6h63EmHsYIA/MngOG6lJW3yGfL1yxXFZyRy2WsOYBo=;
	h=To:Subject:From:Date:From;
	b=UYatjyQKpg9+43DQK1+cZtjLpopwRUmsdbpqD7i1rQjr7evw1skzn0dkbnt3IMVZ0
	 BgMVrgG4Ai5E0dq1QhaPrGI3FJtK+mvLEr9JwSpCeMBZKnda06MR/FG2WWfKqyUFht
	 /h6k6FgpjNEf992B1RlUWT+6tkaGfCHm9g+yMByRilr5tz5NbGx2U2XiQ/jCM5X/8H
	 fYJRZ7jDJUbzfVT+sX1nWsM32eAu0+I7Xnbt7JZs08ek63vPlbZysKcpkjnOvmyoiK
	 n5NtxAdomTY8LWSvGHwYKQ9ba4exkomlN5qYkBpKiCE7GCHjb2qXB4LD9JnlhAzhHi
	 dEWHOlORQQOpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C84C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769124281.32416.10664348452565616764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e76c70a6d25ee8b89aa4a8a702c1127ea4111bab8c4aa218fc2ed5e6af90a5
Date: Thu, 06 Jun 2024 16:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717691242

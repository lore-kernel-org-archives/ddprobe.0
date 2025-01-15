Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE4B15D5C5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736981154; cv=none; b=DSolD4MyOov3rTg24OUxp2Yfj4bOTkj4hTaZ8sbYXouSWHjM5VHM+zUv/YplcRqSi1C3iJwuOaVUaCBh5F2KTpHuqARsW2JvFFsO4lOguS2f9/T28MyU3GtJdRKdL1ZNdItRLDy1WOYgeSLvn7mG8XoLnrlE9tCcHMBdFOBTNXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736981154; c=relaxed/simple;
	bh=yJHN/GpFLdQL0m8z/LuyQ7QMxpBabk9JRxfqlPBhk10=;
	h=To:Subject:From:Message-Id:Date; b=A3YABz7L3L8Tx+f3MgOAECBfGjdZdOj3Z9iVSk9AqCMtSkiRcBRARZNzNs0g6AnqRQSKTReAotot3Cv3X0ez7u+jUPCBJledZ45apBQqDnsC6aRbtr4IGHPAfTOkjIawWkaUrmIJd1gY7nUP00QLaSBHi6bCKGQFYW1Y86JO7fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgBEcqtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgBEcqtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B17C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736981153;
	bh=yJHN/GpFLdQL0m8z/LuyQ7QMxpBabk9JRxfqlPBhk10=;
	h=To:Subject:From:Date:From;
	b=VgBEcqtwozsOomBiYVCH+lnkTE2FKld7HOuzBvOfToYNTr+6WUh0M+N+UFwW70tgZ
	 zYgDR3TpMFJovsPHwS3KCukg3ZVjWcJjqbhjWN9mGn/ygoykG0tisbQQkMvJ1KXC22
	 nAFMe9YLSQv5qCrKpxvM7OA8yzMedo4QzGXn193ELKqM9MUlHLNxlEnCTZKtl4QRf8
	 vgqOEKlETnh7BxMZPaEwFJhTLACzP1Cdchi1WK7S4si3lFYm9YEvqlKU05EpH3bjej
	 rflGofKfkLAFFqV5ncN6ki5Pre+IX2hJ+I3QoDwguT6IFG0h50mJR7nJLw0cQNIE6y
	 drLP2cgoObEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFD2C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698115358.10191.8552873681963633487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a205e5b11280f5c669c08c805ed34ffc8ab7d749b0d013a73ff9e635779c1a79
Date: Wed, 15 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736981153

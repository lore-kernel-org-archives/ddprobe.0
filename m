Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AF6817
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721436354; cv=none; b=h8e3Stlcxe6E7uTJkGv+3XWg9D7y6cp8ZNDLpS/jov7x/lzAe1br2FRHT3eVjaH8SxknHxNzpupleunlzeC4MH60C8jr0fMZ/Fnj47luApM20zWBZN5QXtvOcBwf92V0cbWMx7iOk7+tz1pbpJn3w9e5jPgYshuWKityv4QZSLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721436354; c=relaxed/simple;
	bh=AWS+cNgxpEsWKH1btKdqxl9KCQkUuKeJiSYDH8QNQbI=;
	h=To:Subject:From:Message-Id:Date; b=IqFdZ7Uf+WQPre7PL6h9zyWsLxPGJLaD3KoJTE5WXQLrTQh6YISHr8+y/z0EXZi+I267gjr6EjWKlH3uEKnHt2hoTcxWJH549shKLahW2XigorFvlU0x5ci5tWxck1hNyT3/LjCMv43yZpK9yEMtw4RO0jIwOExxV24tluC9JP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNBrELPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNBrELPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6345C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721436353;
	bh=AWS+cNgxpEsWKH1btKdqxl9KCQkUuKeJiSYDH8QNQbI=;
	h=To:Subject:From:Date:From;
	b=oNBrELPD4FYN7iBhpuSkU1znCUzqy1JMncd/sR8nA4nQo7cqbGCdttDK75VbaXPGD
	 twA5lK3SnxlISv6+hzuchPavNDHBRF7Uk/rOsZoQRPdiZiVKUG5Y4z/NyRpsgulCpU
	 bmHe8YvYOz9VWjuSNoWifHCDGGxzbiLjfhEam0cLVrdsiGFmA08m7cqJR5jopTOq3W
	 xv9jPwq1gClI0+CpOHQ55CycVcMQhRLcjG78Bei9pghPA6VaV+K/Gyi0ssFJ2ejw7A
	 xp6kknC8KOZKph8G6a27j7E7+cbyRZ22yz2Ec3TbpPwCRvle+hHcSeGdFhR/6QauhO
	 vUHahBunH1eUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F21AC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143635361.24043.10751860779068510463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304b09ae870eec1387f3d9af3a04d6286396068f5383efca0fd2f1ea68350986
Date: Sat, 20 Jul 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721436353

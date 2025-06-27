Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C567913AA2D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750985393; cv=none; b=LScyhfs8Z4H8Rrl+YCSTktZr1tCEM6amwMhnqsfb6H3E8dezlRoYcVNwHVRY9sEnYoLvBKflJJW3Wa8X84ascOKTuyJpPdjRHbR2e9S4rZu69aUJwWTEqm9UkqG4yvMLmWA9XeMorsjR6s8uZCo6OOuyCIPgqoCHGFF+FXweqRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750985393; c=relaxed/simple;
	bh=OAp6Xs4Cr8Tz0j6HT9m9h5wfmjxJA7okbTw5FW5DHC4=;
	h=To:Subject:From:Message-Id:Date; b=LHEAFaY33fde/rEmGzUQj3YWasXq5HJWI4iJGDdzA5R64st31fztOF3+LyXV/h6J1J8M3FU9k4GHZ1urgIM3T0jqc2XT14BAkugkVknPzMPmBKbbguNDhsZ1pcj233sOUFzE/tK8WKfj/CFZitYR0SkoUzljJMF67GP5mBcJHLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDkS7o9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDkS7o9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7003C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985393;
	bh=OAp6Xs4Cr8Tz0j6HT9m9h5wfmjxJA7okbTw5FW5DHC4=;
	h=To:Subject:From:Date:From;
	b=lDkS7o9krJ+s9uPJSuA4SimsAi4YCdeyrHVkuTdS2O6nH754GpqXnVMOVo3UM1Ey+
	 yXQtT44oJFa2YhAfF3L+T4oTtMnxf1oe4dshmDcsrZEemvmjAkZjfDaeqGjQmN/oI2
	 9+wiAoHaLQ2vj7F5x9WhtkkQnlYTAOSkax2/ExaEheUPVywpqBXRr7ihBswCpc2HvZ
	 r0JdUd/a2Xrzd6Ff8pc6AfZxsGO/xROQU7Nwm5nbCmAK8yI3NPx+Ct0zEqN+cufy1w
	 ZBgv8JLF1WtySrFwmmNVub9RpjDHN3ltwvcEBz+JW83tzFNWtwlmTTYzTvYK/m3I37
	 X+CgysivaE+wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933BCC7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098539359.14941.1913299377569227708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7409457f4cb0db703fa1cee64aaf8ffda0cf49a4eb1abe3bffddecabedd75d
Date: Fri, 27 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750985393

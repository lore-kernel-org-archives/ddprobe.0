Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F0D30C371
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779650554; cv=none; b=FWIkOLNK32a2Hlm3KFxPKXMNumyNxtGZDfnFcEVyf4qX4jHXr6+Z+UaKvsUel37q8AyyNPoMzZE+AhHmD6lE2UmLrAtEVDMJ6iNZx2PHRy1RTYmLxzuiQcyVPh6+8t7yO+3XE+WS0wB9uDhaEU7U8tf8r9Ji9CjsDY9z+m7puwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779650554; c=relaxed/simple;
	bh=83lTs+tH8GMvUO86RtvqBYVRTFeZLfa2vGNoOR7Sby8=;
	h=To:Subject:From:Message-Id:Date; b=k5/2i/pKLJQXg73yzMr2sPMMfpBrt75NIWcY+CxG7dbJOB58TypUn5+ewk4G1EVuwJE4/2Zwf5J6KSZcP4vGrjVfJWbubEAdAe0ocfupwLlkYitmXpLSo8KFD5xY2dVf0lULS65EqCwu242GTVqOw7DHO9raiqWShPu2a9d901g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGxNYz1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGxNYz1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C570AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779650553;
	bh=83lTs+tH8GMvUO86RtvqBYVRTFeZLfa2vGNoOR7Sby8=;
	h=To:Subject:From:Date:From;
	b=iGxNYz1gv5vTeOeOqHrls5gEfxInnAO0xMbMf6vlXvpUhLWsSLnRvpWy958Y0IJbF
	 Rd9TpGUG7kYPuI5psLciL0Ovz/YwKRuObIpaB+7laQSX3AzXU8KlfniEgYkeHF+SN6
	 p0MZgsA20paCk5jUe2O1AwsL0D3QoUru9SHzHr28exokc3NIDlsktUzrZaPF5O66WN
	 5XmFlt6XExYyRmz11u27b+HkhiGnOVcTevY2r0klD0QKwzc36GEIn4/sAeW63nvOXy
	 eMsGnbDkRtq3Nn8qv0PwHftc7PqUue+Wwkh8IDpCT1ZRshkq9Q2puSxT8NkMRmL6wu
	 SYt0m2mefzW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD685CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965055367.5354.15253164004762563639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478290d0239dceccd42ba51fb9b6507a1c8aa571f706a34f8f807c673b256afd
Date: Sun, 24 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779650553

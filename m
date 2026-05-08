Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A183321DC
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778262454; cv=none; b=KwtXRIwfQ6T4JKMyxCsjyqnFMZAVBhIsAqqDlXeFcsOh8FEYWtBYfsf8XviqBHC24MUbrHu6N6dQCpXnmrhQASplyWEtp58EiHUI7erKbsn49GG+L9HyP74a04CfUPhKGpxQaMIQBnci5N9dY9B8cI1vKRyWxsaMGn9A1DQHEhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778262454; c=relaxed/simple;
	bh=C9rDwdrcbe9uV1cAcHvOsVP8r3pSgxHlQyPEUfaLkLo=;
	h=To:Subject:From:Message-Id:Date; b=GN3Ofm+BX2QpaVTTsVinTMABTeSAxJR+/kwv+qGrmv3xHkFiveZKD68wE5Jfv70/mh0NQAgIeOcK9Ke0ntzALVZV5BSOJKFHUMf7SBAnlIfqUKhlN7BaeGjndz3bHy96WBUYHlbGnYBKQBOZ6FDao+BMhsZIuDW8FMniY88ZnzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsLT7i74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsLT7i74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE90BC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778262453;
	bh=C9rDwdrcbe9uV1cAcHvOsVP8r3pSgxHlQyPEUfaLkLo=;
	h=To:Subject:From:Date:From;
	b=MsLT7i74BCJC0ni1GD1WWY+FRayCFiipLn+AUg/DuBwufh+ihFqQoWN3TVjIP1oC9
	 YOQkmRtnkMOV4w3Jo149RTDQ3oHsLuo4pIdp/vSVem1n3Rn24U9tVTeeLgpIYhH/8t
	 snJTCGbk4mEUAd+nmMObiJDj7oxmLSWHB8zn7n98JsvUnK/1k750JKh/3IoCIOkBQm
	 9WqIbVxbB6XH7NbWPBu1f3VQx7tZTqRwYJxzQgoyPyXKfry7VEo/ouWWOKzN4g7Jks
	 Q8kicKSWCw8kVmzQGZFutWAR93t8HZ2BHe5zYFdzaZNZHusULZ+rW7/OwrRRs/ZUYm
	 fD2kRFivjN7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A3CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826245368.11813.17574952298263104142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc4af73599fa496526a33678fc19344e4a863dead241295b7aa3f90d0e2e62b
Date: Fri, 08 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778262453

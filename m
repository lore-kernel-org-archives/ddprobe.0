Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C5E2FCFC0
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752173394; cv=none; b=CQMpgTPyHTfZdmSZmje3J7JS2oN8de9tt5ZiZRj51P1cT29F/+RGirIz3GSj6zZ0Ev6rMUlOKupn9SggD9eH2y7OhI2iJ9Fv3mFgcorTq8RhesXxdc78Jy/tnZu1Tu8g+OY1aUWqlDDKXbRzPSWUaC0rn3+5JhVCS+6Ro1RtQ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752173394; c=relaxed/simple;
	bh=+EtFeVqO0TRA+jBcFhF6YvgjGwyvx2at49HAsHLO+ZY=;
	h=To:Subject:From:Message-Id:Date; b=uVH9e5gJHiY+ME2fNJWWt1hZzVn1D6BIFebpLJxmTpTF9jnOa5nDPQTRoJMnIKmmeykRzLjHBbIpvBAdFPWy4BkTbvEZWWoMZs1+HdMOwPKiR6BggDdvf0K4iPjXQOXd5Fq/SNWKswRXVWw0FjH6rxV8Xo9fMxM5iySmprefYBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcOKtSas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcOKtSas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3EAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752173393;
	bh=+EtFeVqO0TRA+jBcFhF6YvgjGwyvx2at49HAsHLO+ZY=;
	h=To:Subject:From:Date:From;
	b=RcOKtSasbYoMjbiZHdmKu06Gi4O4NLjwOsjHFlNh50ustM4BmfbdtfdVHfxUEGQ97
	 fLzs/nEuUGS4TBVKp+HGj/7OV2/Z9kyBfqvSSHcsclk/9pr2zloM99R1DbkedxjJcF
	 PpXhfk9w4vbeRW6KlH7IxwcYjfjoFpxbR4/bxpGfTRGyfoBeGDk0ODZGaDyDcyPHpc
	 o73Uoimp3IwVpHQa2y3LC47XL+8bmpgbPEjiuaaZ80vTng9HrH2zm8+8EnE4D5+TE3
	 JWDxjtrITA8LitA5xRX4YyK1g6r6kgw9+8zd/XV/jTtCD/IWwN/teXUm6JYxgsXo8N
	 tpJUO8pETDQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC60C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217339357.29599.11106913529072781106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcacc27dd914fece45de4bef53bf22a4159a2475290e0c4343bd7fdc339a73d
Date: Thu, 10 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752173393

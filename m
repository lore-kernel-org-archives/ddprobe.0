Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BB43921C5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772014494; cv=none; b=PJCf7H75shm5kqGVreSjRHwcFQh4IcIxqfB2zf85EPDdGmVE6TPMp3SXd8mDQogeq0OQx9F2KGKo1yKn/RMWFTchqot2DmuHYDBjNNNnVHbjTwZVGeUFETzelQJehl9Fdea1fbgw9LK5McGq1w6ZKc7esIrHn5b0QacJckAgUHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772014494; c=relaxed/simple;
	bh=tO12iANo1/3qHk9FNjgNoqGKOn8H8mL1GtPPRg9x248=;
	h=To:Subject:From:Message-Id:Date; b=K9OeXn7UWL5QrPacSA8T0mtfoyjtog0e9elnmkxVKzm8egvQm6j82ai2373KMokATWcRaqCWisWbljjiMyHcNP0rMWhelGPCr9O9fORpXfAyb+pW2q8c5bDzRDATnQu4geKZelI8/gHpq+ICwD6yTJQ8UXPnCI7mYLoUdM5ufJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGKK9SCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGKK9SCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C6C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772014493;
	bh=tO12iANo1/3qHk9FNjgNoqGKOn8H8mL1GtPPRg9x248=;
	h=To:Subject:From:Date:From;
	b=NGKK9SCI419/6pD5jBBOnicNpcn8aP0BwzQyKYEoQ8o5qTajEha9kihVnLyp6WJ7U
	 JBanzUvVU/ch81uqbTsryrCo3zmusfiwp1bL9wm9wfBTwbIRbCC87cYhuHCHqX4VJp
	 iyVP9BtHMl8aRF3Vi5wvwipnxAMdx/tMSULtOfoPO6s/+iX/yUEnI6g0OIGulMqeWs
	 2dhu+/DpxXpMJinqpAnVpsU+1Di8JnWUGSGdyxFWCFcSJ3+Qs/n4SIMZbZSHNAulGQ
	 cUoA5AeSq+6PVuX50iNmSV7WBpjPJ3FNijt0yDu75IsQsN9dN5zL05ekJVR6XErbwF
	 QbVVBPT7kJ5Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB6EFD23D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201449358.11665.13481977685796627564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456170bbbfdf3f908d458d5bb94ef0b5c8952ca14aa3be80642860b749405e06
Date: Wed, 25 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772014493

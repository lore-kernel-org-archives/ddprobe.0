Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE0C21B9C9
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753256994; cv=none; b=jQd8/K9XERXVsflgMju0U9oeu3/pF7PhO2RWZQ6hbAXYbAOaQjwxSbslbACwSopyXT50Jb10h9pRj+ULr78B0OK36r+br7IddAZ0N0FG4u/YsqxQyuiR8/yRmap3f+3NKhKzL2rWk8TLxDrWMMhmyjrZPwvvRe2uNB5FxCau+lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753256994; c=relaxed/simple;
	bh=X03/gmn5bwNfnUA9VnFX/IXKkwZpnLvVRVmgWhvwFd4=;
	h=To:Subject:From:Message-Id:Date; b=VEUT2qkVEQY2mBU7F86JDhwRKAgNzkyxOTjbQIqnVvBYciWg3/2kLTss+9PPZ0/+ThpKPRd11mTaYeXSd2oGMrIW6MuCnLe0XUKZQ1qKzYsGgeWCcIwFkSLsGDvPVsZtW/NsFxJ7efqiGKJ4BnnwrIr1Hpok6BfCYCzp4wocouI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggoNEmjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggoNEmjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D708C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753256993;
	bh=X03/gmn5bwNfnUA9VnFX/IXKkwZpnLvVRVmgWhvwFd4=;
	h=To:Subject:From:Date:From;
	b=ggoNEmjPCA3s/BGWYAghfDKtLrv242Z6tPDEQQ91VEIF/MYRAhximEeih76b3wz9r
	 1HyGo1cp8PqhfhiYK4twxpb+AGz4+MwHfbM8TGTZtVah2trUtwCGYkkZgejnvy3Uqt
	 sXFpopDcfUk/vi1CeGTKlkB1jP6e/W83aoKAQydQKGj9qQWpWCn9EhuMrRxJ7QCSEw
	 eeqAxd1qXsIfBBVfyPFThXMOJ1nj6HNaQHtezHRWN9R7telY4A2KeIO/BFgzW5HPk0
	 p9XpGFcUME03OZgmjtJHvD4FKg1ethUNjzInV5Nq2oM4xAJLrI44IvPyYfpLleSV/6
	 JQq+f2/Sb53eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEFC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325699357.16106.12961544381567265634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b519a6a5c87cda9b816b3ad1a2432c0801b49b82cdb903ffa18978a2fade43b
Date: Wed, 23 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753256993

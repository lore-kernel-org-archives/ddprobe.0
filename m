Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0494176D
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714474343; cv=none; b=q+fNKG0PBS6nvU6SeZpQFJ58NLx23Xx6svkFuDfA/swBEHWreK5qHBgLbzfudE8o0qTODUxlw9+Us0LDRb6hrJXwz+Z+3wa7pe3Z5TgEIhf2KKKR6zDJzwAlWYBA1w/LsOd+RB55SdvGyQYKadkaF38Q5S5JMhEl2CSUacSycz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714474343; c=relaxed/simple;
	bh=pwJ8a5ePceMxkqhmAns0ahhVz6E2qCT0gxm8w8J+xgw=;
	h=To:Subject:From:Message-Id:Date; b=ForDSQ+t/M99Na23+76LJj94RQMyHfmtTvrMx4zokRjSez2Wvh6BlqUZJlHfxdiNHU/Ih1DzERUtDCXcOloRQMJDV6esMY+O/tn6E5EOjzEkmGme5IJDtUu9ZZcP6tJZUs61q8EDtmUv9UX+OFfuV6rOsgbxW3XcdYXQWmCWsgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4n3+JAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4n3+JAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB557C4AF1A
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714474342;
	bh=pwJ8a5ePceMxkqhmAns0ahhVz6E2qCT0gxm8w8J+xgw=;
	h=To:Subject:From:Date:From;
	b=D4n3+JAd/2Tq/tSBVXLfEYx7Bm2yzq9r2cvsuPJW5vPG1jWM5I9Jx5xqdb8YoCJt6
	 95+y/PYwlxyDHxd7z/N+hoCBGUqRjYEXp2e+q3Mf1N7RFyWZRJM0YUuiQNK86ZV4Rs
	 sCY9RVK7BOIsN/6T7eOA0WH/PQYM4lKOJaDoeIDDRb1BnkN8bFmT1iuEU1JBb+45Ru
	 eSwTUWfx3dtjfe1fgx1+t1g+4MNe5YhZPu4+vH8HRIBXLwpKtSCfmmdIY6vVfgu6iK
	 LhJcGYNjUQvVRnB270aVPFzZbeCMddFtDcf/FYJmgczFLCy04+ijJ3UfPPFc6ZHys5
	 Am+g2egavpZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA538C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447434275.32618.5214019651367181713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d520d7bb2c82567b26217a7171c761e43659f0aaeaff67800f6e29b931fe2485
Date: Tue, 30 Apr 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714474342

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B62F4F211
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718052503; cv=none; b=pqCpNoW5VHM0AwJParu3LG0IVuuh4JbSqaKVXCT1Mvo1jtaDJHbpM5yTCVEoOsqKRQK5FX9Z+0nLymYDtzF8Q/uG1cIAz9KX1YOoFs3Ez6zLO6VGnbw37jPCSqAcRM8d8wVN9Cql0wWyHGQytvptCY+Hvwcg7iAyoCF/pD8m2Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718052503; c=relaxed/simple;
	bh=LyvogmfByqsBz6R5Q0iZ6ncIXR63pH0XIwGrmJ+XNO8=;
	h=To:Subject:From:Message-Id:Date; b=LE4pKxE4/R0lSxZZ7KIyT4exeY9oUMB/gkZ/1ErdfWljjma/RPmHCfry2FF8m/CxXNMqQ+uaQjDPmzlEiX4JIWH6LyAQisTVN6zv19n9b+ubTa6UFGU70+BPxfiOfbzvfF0dmnYNJV87fI3acOSYQfqau42tvXk/oVKHKahsUmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=If+oBcaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="If+oBcaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA917C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718052503;
	bh=LyvogmfByqsBz6R5Q0iZ6ncIXR63pH0XIwGrmJ+XNO8=;
	h=To:Subject:From:Date:From;
	b=If+oBcaPaewwxObfGTRVBZXy/czac9a+gBsWNaHX3sBRq+aS90xJN0mIaS/3XsyQK
	 m0/2SRNb81CNEPYcxtcMmd8PdhAJoq1Kx1AMHzwBere6CHjxxfzhS6P83FhDJ95c45
	 og8yB/6am9MNNkU0jmsh35qbYcSjZkAe8iv4SoegfCyFdXEIKzw7+nLFOXn6JETHpG
	 tjIUlKbrYtKfx2Ijms+mh3EkB7K5gOxsyncWT4j8Lu0SIqItmgbkpg8OoeGCvDYllf
	 r1Ey9l5WYbwybQsn2gIX3lApCX36v+m3cVNoWtl1t9EJLpPA2jooScFVIPXJe9sNLe
	 S9rPb3kgK3Ajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D16F6C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805250284.10017.13253496353739610123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48487a5f7b548db64f8645d430648fcf5b2e5311e73c69dbbd128367cbd464e
Date: Mon, 10 Jun 2024 20:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718052502

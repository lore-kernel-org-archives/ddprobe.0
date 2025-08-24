Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCC5393DD8
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756010394; cv=none; b=QhD3r5GigG9y5iXvRdI1OxCPiWszfjuN+Z1k+uRaqnVb10zPxsBAq54lh7KpToTOL1IMMGMD4FfwKeF9DKTvHHjjf6qZumH58Nbx3v9ImeltplLQyKmWtdwkmqclu+dan+Aq5q5aRxXsh6PzSHeAGyyv07duThrVgN1qjicF9PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756010394; c=relaxed/simple;
	bh=eh8T/FuyLPh1J9KSLvCRAVSGUZ/5+43QRReewDsbadM=;
	h=To:Subject:From:Message-Id:Date; b=Sl9+sn/ha8bwqb1l9MiCR0llJeHVvU0r5VFiaUejLtWNko7+XWUHr5BREuAii00gbLz8Gpky3X1qtYOelkOv53Uye3DvsAhzObHfsGceJ4EEmkzaABgsZ9wCcFl2nFW8TpO3nRg90rkXF1Q9FZXegmZVfXT8lGFJSeqX0iSe8Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCZkWlAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCZkWlAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37C9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756010393;
	bh=eh8T/FuyLPh1J9KSLvCRAVSGUZ/5+43QRReewDsbadM=;
	h=To:Subject:From:Date:From;
	b=GCZkWlAEOqjoKRmXj70/7vXA5k3LLv7t3ezWzV7oEZyuQNOPRq/sf3RzvMqgwBIAs
	 BRmxGuIjm5E/j8MYuZBdw8Scq/ngb11kUoblfPAuR+va5TSgJwlAW2lNzrxy6VPdO5
	 2wp/+eF1tpv6wcRpn7pwqwrm1S3XGuRVoC8KLmDRTIyMVOt0VwRY1TovmEwroE6KeJ
	 wBFsRZMNtpRTzkLdyeZm5BWt+1jmKcXTCXhRk9MFD9XN+t5cl3LMJWsyECWRv0NlEC
	 2caSpW4zWJcudyDIPZHQ6ACXkdilS6Wpxlord4oZMho5NxDwC5Z3HpBkXOYJ540bO5
	 SiPDU0MpzkxrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93124CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601039358.2099.5047263317199042938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995075400fdf1480c0df961b9a04df02070b587ec0c43465d981efe398b364dc
Date: Sun, 24 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756010393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C208155A5D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769660034; cv=none; b=cyuE8uf7lJCqP2LrLjCyu9f/Yw/4UDoiBo60JY1ObX3EMYvhLHM9Uj69iwSVAnMJYIfL0/2HtRMBiQSaIUBxWfSoSFRX3+/xZejMk8RCXUNmLKqKXFm9zIpsIN190sXUh4Or6DTg9mjhNtti+/E6jL6aezDGQExEFwqrmgQfTTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769660034; c=relaxed/simple;
	bh=+IXdem5v5BuP2m0FVXw5yg3Z5OCu2akUEwqPGIhaVWg=;
	h=To:Subject:From:Message-Id:Date; b=ljZv1EBUK9yiz9EIH16Ec5bdxuVrkj0PtgzKT/kcDf2W3SQwskgaCKaUJmrLV7R8km8kQwwktZ/kVqtE841TQFI85Aq+eTPIEzVWbsNkOCKv9lMvRMtJAJELqjKobivTVrNknldtpeRUHTp2Fx15Wlw9k3JRZxGF9nQDhAGELXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/VcTLTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/VcTLTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28DCC19421
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769660033;
	bh=+IXdem5v5BuP2m0FVXw5yg3Z5OCu2akUEwqPGIhaVWg=;
	h=To:Subject:From:Date:From;
	b=S/VcTLTFrGZlTB+zgaLhB/XbmravpCVCFeB28tNpNG6ZXkrm2BTfOScxkELQR1pm5
	 NBObxGhPWpaZ5cmCdwyXTuu+F2VbqS79LL/yhQ+eKgLVoW5sswguNPdMl1GOM1QO2a
	 YKb+ISHc1zFJbrpqb6y+GOz040r6JhO7pIH4E15fnykqYyBh0ASm2fovki8lzz1BgR
	 UCpxVkHkB7sXtxYZsNAOsXt705y1T0uS2CDRlQOsxxKP5BgQ9CGX4R24BbbG1iMAMW
	 8ZT7bCQiFLJ/fTHKXXymwEX1Q1jgieS19njkc9KZr9ADWZB158r+XWHMyakWZpO1R1
	 kuoLMLAp4JPMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94397D3566B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966003359.21908.1157344487961627217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39332fa112b33409d82e017fd406b9a61de963ac46189be8b0269449b6d037ed
Date: Thu, 29 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769660033

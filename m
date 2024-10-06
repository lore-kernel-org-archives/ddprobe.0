Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A2054F95
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728197154; cv=none; b=KgCnWzmXRLhlaQdufXfmyeOjeNNUBtJtE4aPZ7zepwwhDy/9tAetSqhQbD9sDjo8rsu87zi7HLHLZoh5G6xfA5n0xhv5/dlkkE9orP76F2oDRrAd0t/U7/ZiDSayTiVA2PyO37oQW1zSycdeqLtkHBaUk1oPde9UldHGVEmVBa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728197154; c=relaxed/simple;
	bh=uqYvZFgSwn2TrZNUfLeG981kywpK8WK7vpJBicdId30=;
	h=To:Subject:From:Message-Id:Date; b=R+a2DAtmcCx1+dGTFc0shCAohdo0A5upZ+1TwR8DIhsTOmvKyu7BE5hGfHeY5lC38r3zt7Wn5N6JeqCU26pBXGkJ4oGlPB1ITinhJRS/sl4rxy5z0USFFKCvmrQw6+LDOiWSVqyYpulahCS4c8YojbptBwQqUBwP58LUSxR/LAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQWmECFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQWmECFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5642C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728197153;
	bh=uqYvZFgSwn2TrZNUfLeG981kywpK8WK7vpJBicdId30=;
	h=To:Subject:From:Date:From;
	b=XQWmECFUK2TRJ/smjopWaypCm9zyHSNShRjdBx7VtWiBol24us0BkYOjpc10DElk6
	 jMoMvmrv1V1o9JUugZnoqXl9i1P1z/5oPpiVskO0TaMrvKtNRWyKrGvszr2ZDr83tT
	 T4olOQcg16Nn/UpFWqIPwXxjMh5dwqjxbJiBKtfqwgqcQucpS8Z9h7EHaLsVG1ZTCg
	 EFgtb6BkbiK82V051NGFKsaL+1SKPVAZZmqUqpcEgfsMnl0n00CCTHFeuz689y/P2U
	 J6q9rmeXfCcIr8CvTtNzr1hpKxxqNbf3jI9E76ZzgqcSTubXHWkirCLIPzRu6L5Ws7
	 li7WuW63Hb1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F08ACFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819715361.24667.897679385946245498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab3b866a6b59216688317d8afb9a7f8b9f57216177bd24952679835815c82b8
Date: Sun, 06 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728197153

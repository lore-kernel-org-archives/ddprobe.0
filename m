Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8337B3D9DCF
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775129134; cv=none; b=X8VBz8L8pC54regsdnqLyINAv39hbPrzOC7Oos7okMe4pF52gMjMWq6cvAavnCIBYqr/BkSJcmE2994+qyo4ysQGuYwtf4IuiELqwvDbcd+JmFE/EHEwYEWAAIlBlpKnR97KTWD0Hp+U6YNSCtSnG85ugk2hP4F03r+UIylB8qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775129134; c=relaxed/simple;
	bh=BZe8vSY3758Q/yRCgNoEFL2UWNNzIdlknXGMoEEWXQo=;
	h=To:Subject:From:Message-Id:Date; b=Fw++Xmim99XUrRav8JM2RYsgtMZmqmIqq1p5c7CHTxwGMtwIK6DIB/gjROmwKDe1n7OptkIp0mtQURzxYIqyFicH8v4Bj6s0pfL8GP8i8l+IV6l+8rSpSbf2iEjCNwpuRBj7Gt3BT52zq+gZmBXICJdnCE9c++0V7Z6gIXmY04g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgGlNYRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgGlNYRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAE9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775129133;
	bh=BZe8vSY3758Q/yRCgNoEFL2UWNNzIdlknXGMoEEWXQo=;
	h=To:Subject:From:Date:From;
	b=cgGlNYRGhbiMJtPoQ+4XG6Ur7QVO6JwbvwBhm2XernAm220OlMV49TwHTrJBluoWc
	 uiUK+9a+pLqXAtn1wMbhEPiI6sFfcw5vQzrK2SBTfgkkj4dq/PNeNTxmbrH1HAz8Ab
	 gBJtsh2DmGS4doN5dh8tZcAwSgTxo5uFUbrkN7P6xo42VE6kpJqCUbH6XRVkr5HIaT
	 5p5ykXMTvTucTkYyvheNNMWufiHhrphkKSc7rJwq7YKiR9WfLjXViVwNTGcH6ttU4x
	 G1Zh0Vjw+zStMWaTSxZLY4Rpb3qHR0pW+k4XYpaIlxJ9MvQM0lpn5MW6a3RsHeJBT1
	 9sVWytn3YldWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BECD39417
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512913368.13491.11102750390284130165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746c387bd7637d6a576822e80879069d01a55f49a95a68e87caa170c4ebfd77e
Date: Thu, 02 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775129133

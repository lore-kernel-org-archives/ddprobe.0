Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B053386
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717314323; cv=none; b=hX/iw+SR8RxMaNBi50UFqXdWHt65wEG+oGGOs10qMOg4yZkP8p+3lBZguJ1TcCR6F/bJJyKxz4RfPt8l8jUQyLr2k/cZOtDr+F2kAa0mvBWAF03MlMtkO90+Jar3eLn/i8jtCW6dpc2YugrNQ6Le00OaHRaP5Mcmq25fiqvkpso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717314323; c=relaxed/simple;
	bh=PoHJnFPpuhZYbOs0KJRn9MjJwiRf7zGXkC9I3wGyp9A=;
	h=To:Subject:From:Message-Id:Date; b=LIFWWwPlcT++mI5fDf4/CDgAkn3cPxqpe1WSNNhWCUAMUMbUaK4+FnRcmAG435tXGGeBwpL9x8ea9tYqR6+dBCDxDrY8krik9hs3exLkNSCaeSf3JVoEYC71sYruOIT/b0hDTW49KuKGCbmX1QqV49QWK2xUVPx+BtluHrGYXSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nT/EdQE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nT/EdQE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41A6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717314322;
	bh=PoHJnFPpuhZYbOs0KJRn9MjJwiRf7zGXkC9I3wGyp9A=;
	h=To:Subject:From:Date:From;
	b=nT/EdQE1wNQHOGIh4BJUwpOAXQgmyqk9osAovxlxlXbxZx/5q/1uX2VdY1ppQG1x1
	 k4qLUm2xgEMF2ZNjYBzZuYHgvn6N3H2ffzyd/N1YxLaJkJd2Mq3L+kxYfdHqLXUCaW
	 Djk8D1nn7zkMCeOIWAxnv1QuXqNM/SK/NwX/Lpk8TmAzuDObKfpw2srB6gY27ZrhM0
	 0s82WsMyvuN4DlbQZSbevH4ALW93bX8KJ0Kv07MTZ0wdCPckjv4ayB/I9DRKaSIqgG
	 q5kFltL+zSaz3GlSJtRpZt8uH06blR+1ppYiakBhl0A6a6wVzERkEZRqO1FNOKOp4D
	 xLtD6puj28iAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF592C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731432277.4313.8492807971207860575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3db2d0369b4143fb28437ba66045b6a0d007d2fbd749ba612fd7fe6bd71354
Date: Sun, 02 Jun 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717314322

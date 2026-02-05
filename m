Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFB83382EB
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770308034; cv=none; b=ClBn6gAyz+Mjx5J2RE43iODeRUAauAN8uGajfJFmJFZDjSPd/1A2890E8mR88DQpNlwiNbvGMZBCq9Gi5rull1+LzzcIfqWXw5qpnl746srPmWXFnqUougTnjT5jodIWXYSNP3iLg2mPDKwaEpx6/g2tdp3ztAW4dNQNjNGUxDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770308034; c=relaxed/simple;
	bh=t0Z7EoyAWxB+yQCdZjFJXKCD0oF8OPyvchnv050waIQ=;
	h=To:Subject:From:Message-Id:Date; b=QTRtSPhHn0FF3ism05CAHmPxFyeKZI3MMdufeZj/Di84pwrSAV05nwM7HY1wXQpulndXxv+AMWcOx/vJK3pP0YVsT6AgLXno5RmCKGTxv0qBhvNoQKXDTRAzKF92kjeUrAgODsWDEHUVu3eJ+5mnPXp0/gNjAloZV2OOHNN+qFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf6v5MWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf6v5MWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0C7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770308033;
	bh=t0Z7EoyAWxB+yQCdZjFJXKCD0oF8OPyvchnv050waIQ=;
	h=To:Subject:From:Date:From;
	b=qf6v5MWeOlEMzjXiFL3qQl9G8Y7JpIUUsvI0Q5qKmuGSVo+LWeKZCafaS48VAXmVr
	 HtywG5Vj/NijnOzg/aQTx9+age9vWNYZ1hWK4C0ehqE3Rn/VwYGErz0oQDLgTHMNn9
	 DrnWBoWPXJWvWB7JD6BTIg0H0+9T5XGmjFg1lyNP4Iv+qYbRW9GZK0Jz99dc+b1cYo
	 YODQBpOrgProbEBBh9Bv0fKgMG3gnuSlGkIN8UhfnuulISO2N4bcU3VRbHkodyy1cg
	 9XlrCp6lchKQNid9D5AA9nWUrFBtXa19rhFlGDDKcn9usqUnK6DTCWxJCImR1SMPOn
	 TmRhvxYrC/87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C91CECD983
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030803363.5225.10504702475917531905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7599b8c9a10a1bcc413d1cc84cbca5698c6d9dbf5b30c1938195e81c7873435d
Date: Thu, 05 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770308033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468DC3EF0A0
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790890834; cv=none; b=sR1cDpgPgBBpb7QfU8zC8yqA5hlDlNy35s9Xi11YbV1LbmM1/+M6XhvTutglZnovYP1QvVaTTT20s3L5eGmu1+fSK4YKP9Ndd+YtqlUiofABmDObRWpZxmVkG8rOyEcexPD5UWxfovnhK0Iu/Rd4xSCnrf678mBk8WpsPoqceYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790890834; c=relaxed/simple;
	bh=+eq3HuNIgLsOsoVu72ge5gz+SJtuxE4ypi9Wz47WSUA=;
	h=To:Subject:From:Message-Id:Date; b=DbVpb9ZBGJ+lJdJs2iQNaMBudkoPZCQ5WhW+k89qHgthY829weDJM81e9SDN/kGuuxbylbiMACnlMGAk4VtzK1jyngsDiTHwA/Z2Diiw0CR0n95To2Du3tad9ktmGEswDtCvZlOwncJP7D62eFVkna5Z29sZKqGnE/h+EMaltow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHEQhUgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHEQhUgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C93C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790890833;
	bh=+eq3HuNIgLsOsoVu72ge5gz+SJtuxE4ypi9Wz47WSUA=;
	h=To:Subject:From:Date:From;
	b=CHEQhUgNazurpMwuHrGUD7fIbNt7yfqBNJErRk/iHUWvTxYW8YPvVmwEXJ7UFBG2Y
	 iyv8DGeRnAyPi+plOyKuFu6K0f81Ds91Ij36EStkBNcU9wU5nvnVJmmgfCp1BwFTNa
	 MZEN2u0Uri+NLz0ya/rB2SZQOsBL0O1eJ7A4zFtBf/HsZetM+KcqDspnTn/5LJUMpU
	 yN5XJPNEl1nan6mm7r2ksIlZLdOqdA2bmU4bolSgzdZt+2YsSXuGPIEAGbI/YA5X7I
	 tb4mMwSi4V1elQLmQZISVFWdwYdeU2+BgIfS64Bwvms7fpUIceA/GEisPRhPOZuOtS
	 Mx+CGp9pBC4PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F7ACA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089083372.18258.3266935479994835153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d2955c2d4bd41afa369cab503401a408f8fa02c6c083e77238918eb2861ef5
Date: Thu, 01 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790890833

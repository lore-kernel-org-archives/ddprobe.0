Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B21D5AC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751695194; cv=none; b=c6b/HPFb7wpSD9nc6C95RY1ZpaObZkFJfwYouHMla+lCSta0KKDq8/H+DIaVx8izhwm8wLBSQ9uNtwPBDpM7BlLu1/LUchENDnmoLAXducTbVN0Hz2s6UvlIAzWTQldjnY6cIMyBAhengixOdUufyxH5xoNEnDN58b6pYKWqg6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751695194; c=relaxed/simple;
	bh=NCVK5ZIbB/c8Da/c0h0rLnCAIY7B1Q3CNhXrgC14BaQ=;
	h=To:Subject:From:Message-Id:Date; b=nXlWftyNNaJ/lsmCgOt2nrvCdTDKinaOs652zNUtrPhgtl4N7e784iOegwDz79gju9cUsKAtTBnM24qW4aRDrwrR1xvbG6D2W6mLXqpfCLuK1vesIH0utvNpAIN1o4jTrJR6uX7s0FRqkoOr/MEMNowGTBjh2e0F7WxcW6hxR4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOQpFmRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOQpFmRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751695193;
	bh=NCVK5ZIbB/c8Da/c0h0rLnCAIY7B1Q3CNhXrgC14BaQ=;
	h=To:Subject:From:Date:From;
	b=lOQpFmRkQ3IHI5pO8Oxb2cMTRUsg6F9LQruDQxlZHmuGMmdAiNdSm34nu+GP5t9uE
	 rwdoBL4IS9g1ZT+oPx4LwX5sfSosSr5y4RH9l5OescQ/bMmiSbTM7j1dnAMtUDG2b/
	 fEu5c0rBwbYI3gcziLYe+X42IoAeCCues7l/FNEI+iBXHQYNTdfn8fx2lulGCnD7ka
	 hTaxZk2CrF+gQa2UkF163g0ZLWN8cy9P8fDJALstz+76zHbmKtWxBKXyytx7LkuDB0
	 QBV70KdsltDEIZ39f0BbpevvQ7ce1/35eTVrOZ+BIrbEBw5Clzvt+jfMMioB3WgdUK
	 BpDPNK9dRyK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E8C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169519357.10687.14318096292029897050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc854e905533056ea1d3e1e04f52c78e8e5ee14ee77a32ce16d07676b386952
Date: Sat, 05 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751695193

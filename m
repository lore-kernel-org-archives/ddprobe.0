Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36F13B776F
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787742035; cv=none; b=Ret/1/ZthKGd+1UirDd9dlBPe6vxIZTHQ4r/7NgnplMCr98kZPHO9GjiamTgT4A/JZCmObII6p6qqJsSamkrXqpn/OEFUVBh07nbMCc1Qg04S/oNndngVCMsU6Ek88+sifntB68GfzUxxFVCM86Os8Ul2aPexmKmwbFUyc4H3Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787742035; c=relaxed/simple;
	bh=Swuk4Xweyn12nVVD9kqmdwrcR1vI4EIikS68hSDMBQE=;
	h=To:Subject:From:Message-Id:Date; b=u7/ZkHKSK/MhMXAxrJR7rmeVrt8Lj1T3OXBFcUHWdD9qtzBULrXvILgVYuGqTO1NnsNLu9f7GaZgrGuG9HIS0l9UqfvwoHJFwKWw623M8lUb9entp6LC0FBw6/Hh8BKpLdtLGdKf86XiSIhmP/iA7u/nheiBmaEQ2gS7K8lZMdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MspBomld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MspBomld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787742033;
	bh=Swuk4Xweyn12nVVD9kqmdwrcR1vI4EIikS68hSDMBQE=;
	h=To:Subject:From:Date:From;
	b=MspBomldW72ZTtecMrdXI43mbWOhTrhBD7syzuUEUIC4MbJqM2+U0AzClKuM00gqP
	 h+DZQD8ZwCxnPRdV4wFPx4cXl/aXaSRqIFgdb3XW1089S0RTyBeotXvsveEG2THnlU
	 3oAwY4DacmKGynhKfCzAwBHHubYAmaf0h54+Pu6ZFaeHi+JJS2L/tXFvh/C9Ki7f5G
	 qO045wL/iAWXnWN9rO58+hKeyDIPpNLWXE/k4YSPGNyGOEBN+aY/Dso8NDQyXCB2e7
	 TUb+jNYMqM+8s8v38zCm991rnqR6FewOGl2Us0dBb5uUXhKtGBWifRwtCIFUrBRRqs
	 HmJ0XCAFeVd9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93EDC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774203368.2699.1694350147188219755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b280960971c9c1a2f0255e2fbf86b3561daa51bbb820ed975b33f35daa832c3d
Date: Wed, 26 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787742033

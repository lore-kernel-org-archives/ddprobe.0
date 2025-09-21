Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A4619E97F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758432594; cv=none; b=U+RhQxPtG3HJ53K61vPOV/VKunG/4h22v3S5+4B8IPUSH0YfaCHB1vy2d9vxvkU1grSfmZLHlJA6qT4uHcpX3rFarDrsaAURRapmW9oN+JGzBLWkIBeMk+gLUqkqE/5OhDGgOHp1Hi+fmZotXyviMz9800dp1z8aR/i2Jhy/qwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758432594; c=relaxed/simple;
	bh=JXG5VZNNg1V1q2neCPQzXLfFwsZ5e7hDMgXZeciyuEI=;
	h=To:Subject:From:Message-Id:Date; b=RqCEb6M2a61gBsqzzCAGhAHpsWK7UxyztKAEY3zIil1+TRFlADgMN2dWFvwcPCoukhXnWF1OHfVsK1LGB3RgLi1ANjjCmN5HS16wtS49lKF3+RMZ/GghNgKSTPyFxkBhVuIr5JoBWpa5D+dUtPb3W07o8OLqHTcLrgFIDdV2HT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J955/u4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J955/u4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8947C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758432593;
	bh=JXG5VZNNg1V1q2neCPQzXLfFwsZ5e7hDMgXZeciyuEI=;
	h=To:Subject:From:Date:From;
	b=J955/u4z9oYPBN5GQ+shmP5GnRKmhh9QfMDhcrzKTT2mx++mYiAj6UvN62KIcdOBY
	 ixA0Zm1ReLwMgaNxS5FETETV8MB6+v5PDVkhMSUbSXSWC6Cgt71SQUN7WRpAzSGCTo
	 DBr3YJgs+pOd4ziI5DmAbKMPpWg/1WzKlQyz3UcQjropZ7aweCo4+aFy+3meuvq1Xl
	 UAXfvn4WxHrzuQdlhsRDP8rozgaeadtzUHdRVC3vf8H1j07B99YrbyDu+Px+qzta+R
	 eaDIBFbVkqRKouMcrchmEfhEqqxHrz5tvsNN5430fpgI8YmLf6gSXAX/sDMiGIl169
	 zQoACAdTr88UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94946CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843259357.28011.11360668829635991148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bacd64a083a9c6517b7fe09a36484c13032ddc37af2a380e13c5e4995e0228
Date: Sun, 21 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758432593

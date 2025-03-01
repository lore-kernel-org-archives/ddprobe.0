Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2B028F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740815336; cv=none; b=GSziZK4v5qWgo2e/lin45Q8BNyP8vydvXGOvJAHw7kJbWWogZVbOnEVEWhnie4+Uipc3X9uUfhuATcUHDhFRVIebSolxwMQQ/9/gvfRVzQSmBg6xpUgTkWAFrYwuAS70YOr/kHZRlrv0MlGRqmNPv3m8iiojC9TeLqfLHXnzr64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740815336; c=relaxed/simple;
	bh=Z4TDl4okFPAq/kfq6zd2epXtT9754d4kOAujBPeF1ew=;
	h=To:Subject:From:Message-Id:Date; b=XBOj7qiuRNHV1FpFDq2aG/xyvrygyALbyl5pIJpjjIdSmxPpMMo5u7pYfZr70+VCPUZV3rxV0vAtLIFrNFP32s7C3vLd8YXTi5iZAnLlkS0hIpauXZgU6H40f78IXjHgCSaLO6bmQtUsSGVR+Dqr9fzx5nXxMdd9L1BE18ARu5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nj1KV9lM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nj1KV9lM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EC7C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740815333;
	bh=Z4TDl4okFPAq/kfq6zd2epXtT9754d4kOAujBPeF1ew=;
	h=To:Subject:From:Date:From;
	b=Nj1KV9lMx4dsCVKIoLKSMHL3NOMxpI7XzGDed/BuIt17Mx2WI+TnbS8LIDSIKQ8hJ
	 wCTRWEb1fC4SKBGdxPBq4qRbAPwV6oW0ILEBpKSfTAOUKU1QHVaxOFFTjihEqLm7pj
	 KeciWFL8V90nhqLF9qYwbe/tWpeeEyMN85DyZyH4M318qV6x9gGefGFxrlEY9Aax6G
	 2e8HXYIN+EUDDEKGIAPKwNxf5P0OJFY+42jQmcms7p1iviyHx5HkbTz3OOAoa/k704
	 1mexCSUh4ceXQGhw1aatK84foWD/vpRaiSNuMOJHqR2rDXj8QeQRZuxr8ci3U6bzfJ
	 8Jal7tCDP0Iuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE50C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081533361.10757.10863800306180828726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198f78c5b027d79e22026598f6f798712fcae4c294bf77e5de995a3481a82617
Date: Sat, 01 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740815333

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F415F4E2
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751804995; cv=none; b=BYvlQzyuP1ii+Mq9C9QhMqyEJJH/b53gNGfpgbqpcBnt0YFkcnKI9gq4bFmUCfJU85fHEwbIuhRqxpyQRjCXuauWanLs4xSb3ywPTMuSa6qX2Pdk0UhnYHvtfwjxDQKlhVR9XJ+Zlxzhzov80b+BPSsASVHF5PvOFIuNA5yt+zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751804995; c=relaxed/simple;
	bh=HcIONZRXu2lRxy5ub0MHjJWY7O0H/Z6vpTBRLs7OTk8=;
	h=To:Subject:From:Message-Id:Date; b=GLVaAlIsokvW9PsVHchRr0oOcYEWFh67PTcLXS4XxF3eIBExFBHdVRtalOb/Gf0lg+7WuNsV4wuPOguz6vREHcnSHL4J+VwDcXY/WuodIsdTryCtiSa6KFgxmShNMsOMsUtmpS0SGr4yHSZv2PVOg14oofpEb0rtadlXxzU6PmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfODfzL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfODfzL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E0C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751804993;
	bh=HcIONZRXu2lRxy5ub0MHjJWY7O0H/Z6vpTBRLs7OTk8=;
	h=To:Subject:From:Date:From;
	b=nfODfzL8aTnuFPmhnkBOwgLkxXBHXZZkFFBfY3Hipe1WXfO/KuO8ELDR1WxosDuy1
	 K78K6TktQGJ19TUHZUYgLTsYt5eDZT9+xBYQu3mVNAkd2URQfd2BtmvxGSiZLnmiAJ
	 5LibC8VxwauaV5u8jAsG51a/C3tYO2G1GqHKNVMJr6hNb+7L8g3Uc+IVovibZDdx/d
	 enu7ZO1kGRF0r7Nkh8/3XUpcN6dSSQPyE9710Mlt0bXPem2lglkhXKMxBFHu3Ijs30
	 CV7Lz39Qp9zi1hD4qttsNQ1Lf7yFc1w1CzdhIHD8B0ogf0whO91fhbShPPLkSBEuUH
	 C4JSG5qUT0dbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E132C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180499357.8513.4644585259131575011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905e61aa75011b27b640225eeb301a32e369d80e8a6a4d032efd7b447b91c617
Date: Sun, 06 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751804993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2028C332EC8
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776092854; cv=none; b=OkYzTDs1kY/DJU27eTOIYxXU5rX+v1chvX9Rjtf3Rni68Tp18n3WvALFlansaN0X/SYP8t8drYyoSdUrI6WZmzfaW1ZoBgPjESEjeeiC1vHaayb6IqVjCHdPJ9cogF5tGYsmyoVYEINZl0Dkao5gwnxoj4MbGxbz1Hjt8Ez6htE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776092854; c=relaxed/simple;
	bh=2Pw0QmqIn3enW82CT1vpL1jwAPCmFHHsLsbLxm1hIgo=;
	h=To:Subject:From:Message-Id:Date; b=bTz+X9eLO4XacISZukaBRAOevCPjTp4CHrlVMF3/WMVI1qbLYrIfxujsu9iLu0S3ATJ8qDt/ginhRH3TdlpvJsUnaxbnler/pizDbKvtkvv2zlweM0KRX9EzrUcRyJgTIEK5Y+jwM6LNOFmO97Vzj/TMv65+P7TZTVPkI4noUiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6zdpDzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6zdpDzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA37C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776092853;
	bh=2Pw0QmqIn3enW82CT1vpL1jwAPCmFHHsLsbLxm1hIgo=;
	h=To:Subject:From:Date:From;
	b=e6zdpDzM1yDzLXwUXIMRN9X5NxmDpp+3xzTTXu621udV4T0Mlym1+NKS9wC7qfStc
	 k/25CUJ7j0g3cUHoGmnnz8yAvr4S0Crsy8Po5M1hRyQoIICiZW6VlKFkX6ytRxUEd+
	 ELagRcECT58eA50NKg8jTSBJTSrnGh6N+04Eonr8d5DogitGFuJJHGiT49neU1TKH6
	 6hO8dNEgi4lgpazOeuoUszj09MZ0cdbmvsSlumVE2xww4aQV7i0FS9vg2RgEy0rBqb
	 Q5Axfd+o8B5yHbj9x4RcS49X84QcE+ZfF1BlmgjZoD8hoMH+AEYPIRz41iMwAOfuAe
	 3q1LlfaxDCLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8F6F34C5E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609285369.30474.12076117803401276143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df636548922f4130ccfcb2c84a3f97f3798f0ea130c637e47147fa5eb4faa53f
Date: Mon, 13 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776092853

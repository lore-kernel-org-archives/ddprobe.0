Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E1926AE4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736211954; cv=none; b=Kk3k4pAeO3wnJVOpIXlj/Litf++dPtqXWFPl0YTWZG3zffNYo+1hQspGIbTZHPSMa4aFZd7f4ZuiaYjCmHz4+stZ3lN3F3KREtyb4nY34mMSAeJq929jLnNXa/+hHmiBrmMSZECF/co8spqwaOZwcL7sMAmAKXxzpuS+oib7V7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736211954; c=relaxed/simple;
	bh=OmMrB7ZCFGQAKWSYA0Nelotp1grS2I85c+OzCuJyGKE=;
	h=To:Subject:From:Message-Id:Date; b=EPnC5ahQ3B1wLs19fwR/UoVKGbYVJERJe01A8MCylB9RiPbbVC4b2T0lBtA8JPbCmmIdENyAVzyxhIBRT3kOT9osGyqsuBSzv9IVTAVSqfrJENMnTtmDqx1LYFE4K14VK0OBUHowUHipPIpvgJFhdDOr1fahfVYc0ZunLd9AOiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/D1KSer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/D1KSer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD22DC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736211953;
	bh=OmMrB7ZCFGQAKWSYA0Nelotp1grS2I85c+OzCuJyGKE=;
	h=To:Subject:From:Date:From;
	b=F/D1KSer+J1emFqovNRngPlV3kUKrdgcIUhPLaOcc8iX8enzfuPPx0usoHKtKL8jg
	 djG92bYjojpmaBZIDzuSLtzJQH8gOCD1ghsIngbTrWosvgDj9VcAWX2ApM2QJ75hEy
	 t7aeF9LMQ6XahBGbeg5k3j5OXu+V06zIWpvJmbKcK3Hx/GMM/j5FdlsVDVyrC5FUg6
	 OfttvrhmxEyMdYL7V/9vka/rWNUatmTV+AE984AJIZd50tc3S2/2ULNxORHDA07iz+
	 q1PyUOEG0Xg0v5gb7Ta5bOTzs7epJPOKyRWE2i1dIXGDypPeWRgeBta/b3j9BRr1VQ
	 4S2BnDurfycKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BAEE77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621195358.26562.10385515649810414289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa8513a3b0e2b78de0030b26247990c009cdc1baa58fa5d687c7b8b4a25f793
Date: Tue, 07 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736211953

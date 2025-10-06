Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506622905
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759721394; cv=none; b=KBNsu2ux6cJswOOdYyTklrb08EeJF3Fpu+KgkUe5nZ2wiTli0UhrctAp+kbY8MFryTdAkSN31blyfgsDtqBMtn9KbnmZs5nh4uDSgTvQ8lNNMsJPlfXMj4NFwmYkEgYLrHFrlcUBWxVbHHn4+UKlAhxWFHuoC2aMm/0d0b5XASA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759721394; c=relaxed/simple;
	bh=/PZu5FYBY8YIt7KWCUy6k6dkTUbz/tB41ho8LUcAs0s=;
	h=To:Subject:From:Message-Id:Date; b=GQsu8EiPpCZsjutjUuhzCEzhCNtwO9vlJc208S+grKfVbDS007/K+bKZBkBLbPJ1WZ0aTRV/JARSi/Yh6ocwGJZDzIUG6hSVXk7BFoUGI11+j7DpV0QcQuyCKy6ICxIA+ksd33ztniylNUdisLKbx81+e82E2yhsUD95k+7CSfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5VcaV3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5VcaV3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54AFC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759721393;
	bh=/PZu5FYBY8YIt7KWCUy6k6dkTUbz/tB41ho8LUcAs0s=;
	h=To:Subject:From:Date:From;
	b=K5VcaV3PMBhlKnwqpM3YAKPwSCS0584KkK83sR7dT6q1HaE2LEdiDMYtYPpUp88O2
	 b7/rtuj2e7nyzBmFTQxrggXUNSEF0ymlEzFH9hOmZL+oaioTrjoayIbcbPMzstSh15
	 lxTASP8RiaWuw8yoqUWnbg8ioqlDJyCmMSkVR+jKyzfhLgW/mDfDWFjaD/32NmLbLX
	 tiCyIUfT7j3hl+OxnPOz973I94YEfXJBUX2MNqzvpazFTfMFEzrPO9ALWaZvq0K+6I
	 rFm8F0w5qOAMPfruk3RfP8OY7gnenmkckvhX3FMKX/oaT5onyK4C/BVpBBSc7ph/gY
	 89ep1limSUh2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A5BCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972139357.15407.11396279372609870210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12513aae6bb4eb1405b3518458a048f139e1c22a7ef979c34e2abdf7a4be9a8c
Date: Mon, 06 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759721393

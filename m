Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F4B629E4
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718308103; cv=none; b=RVZRilKRtT/dbUAbRYXev/vDLW7/pbB59QQBYHQN6HEpzFPJvAeNso8jhHkn/EOY46WCo1sVXmwFRehyDYtXO5qWCIFF7l6CWDWuGKa3pQjcPIBFnqykg843EDCvKKQW9pJY9RoZVrvh2fxZkxIHfypJ9Xrr1c8aiRod1CPqlss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718308103; c=relaxed/simple;
	bh=lj6pUA1PHn2eDBmSJBYaLCV04OxYLdjqxpDzzveLuT4=;
	h=To:Subject:From:Message-Id:Date; b=dhLr5s665rwURINnHaG0Nq69AQ/3xrU1xRHITDpESLVIHSAfcj8w/MYh1PT9hymFTaus96OE+7Fsc7FqdlsduvNMXzlsNBbXyoI3YUzOvgzpmmSNOMG4pjwAhn5pabnUHrye4vkmi/j5f1KfVMP3CRUYyfjMeLgGuwUMX9AiUg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7rbH7RO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7rbH7RO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6EFC32786
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718308102;
	bh=lj6pUA1PHn2eDBmSJBYaLCV04OxYLdjqxpDzzveLuT4=;
	h=To:Subject:From:Date:From;
	b=t7rbH7ROHeNVWt28wCEhc4cA5N262CxeUnCYJ0FBz55QMz0pTlNB8btKcxw6Z9E71
	 OBHJAo8cu8it9FtPG2Sl16UdCfHqm/dprBnslzcpcBRNSH5W7RoXXANmdkJa80sGij
	 gEYrH6uxC8bf4D9aB5PRpqFneIp7yb0ZOyMcHSFpcD67a7VkbvM5/bJP0izUj1Idjp
	 cgFyP6uKreedXeSoLIbEwAFy0142kEjjTxVQVKjBAOwT4g0drV4Ya379vkYYHRmXRm
	 JLqHn/DjnGJw4CJlUMvMK+kf2Idhc3hpCWFwpt97G/OfjDZfNt8qj18+LPXJRURV0n
	 zCoTTn2WkUbxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECA1C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 19:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830810277.5812.16225165104885655862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e07d629916dd8cf0a24d83359be22026897abba567daa8db7b893ed509db6d
Date: Thu, 13 Jun 2024 19:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718308102

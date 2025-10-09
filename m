Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F21C2EA17D
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760021994; cv=none; b=VGbkJEW1lApZAftFNL/mLqc9GCfMcn5QoDRVYklp6Cs8xVn1r+puj2e4eDiwEc200Ia6H6Ch7odpEoAE5zgxMYm8AlWtSTeY1wuFlJvDNCXPXXLdqi0I4zzx4Q3FmRFK6UqY3syQBj0NtUoIP7JtVHhllvTetK67mFDzM1iqEhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760021994; c=relaxed/simple;
	bh=CfbTy9kOOD4J6ZuwjxTRug9nHfi+e6+2hEr+MeIiwwg=;
	h=To:Subject:From:Message-Id:Date; b=txFu8MOeYQAgpH/Hz5q8JKlieBSWkBhe2cISKeD4QFXtrNb+dpgQzqIRpvnRJpfVHpwYWcYYGpkeCKEwO4yYiTfartBbKnlZP0JcfOrlbXluZS+H/CMhAbsuRAc7Frmv8Wy3bmHS5SM/+ps87xPtFAOj7C6wzNMEwbHTUHlPWF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smlokqFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smlokqFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760021993;
	bh=CfbTy9kOOD4J6ZuwjxTRug9nHfi+e6+2hEr+MeIiwwg=;
	h=To:Subject:From:Date:From;
	b=smlokqFZ2U1ktP9YuVjZodAzqJQihlZ43ry+BEzLo87oyk+bJwgnSiNXeeVZoD3Ar
	 sZ80OIn8jRW4tX5BxzjjyDkbXUt81agQRDxhkFNhZ3d1ISN14YQu1OFaDGciMd+SYZ
	 +e2yX0s1Gbfw3ikkZEcmcVDTHNZkdS4oau3eN0HZjIi19LxJlYFchVqUGsCE4hSj6P
	 79QQj9VHpYpC6xqqPZA70Uprr9rNNn3yRIVCDpMtl3VjEWkuodcQXEuZ28O3cOftcC
	 29M/O1dmgldEJTpFn8BAQXdDsIT1HRJmkzMWBgLoZHSTSLWT8ijLC/31GZwIQE9C4O
	 cMeIdEoFNyWHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B9CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002199358.28652.13940636052689956713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71071290365620ba839a0c87a1b540e2a9e5654128450defb202329ba777cb12
Date: Thu, 09 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760021993

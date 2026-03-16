Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100D017D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773657294; cv=none; b=VXXqSkNBHfFYrAUrupgJGLu8I8vtzbedswKnuYS3j7rSctul6lfNDdsiZO6Wk616SsEzcMT+c3rfyKMt6ndJLoMjmfPzkfjjPeRW8Uy/LY0nPVkARBfm4nLbLyLoPscNrydIDzHVuTJMyFXGV1OaWMk+j3d8ThkYcDZF9jpITwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773657294; c=relaxed/simple;
	bh=uzeYhRyXtyln0o3Cp+fsdRV23CSE1UNcpzTvZrcSOmo=;
	h=To:Subject:From:Message-Id:Date; b=JGRqsQBBZh9lMIGVlGiBowiMujBu1oBg4scSF4iGtkU6k1IK+NuWE/cgRXzx1ZIZVEKedADXwYJ8Ox7mS35iGU+ArHCWGPLcIzN7pwlIlICrOKz7W3cp315apshCBFziikAgsB+zfAreqKRJ2nRcPap7mbjdSn09wntq3lKw4Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5HN14x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5HN14x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C6C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773657293;
	bh=uzeYhRyXtyln0o3Cp+fsdRV23CSE1UNcpzTvZrcSOmo=;
	h=To:Subject:From:Date:From;
	b=P5HN14x0MghnQH125JUxsV8MfyZRV4qNP9Q/0tRMijRFMuwS0QJOABAjzZOmtcBEm
	 IXlBb/crCdGDXteVHRPhniaDIEGJHFpBx6ItUDl0PhjVxTLO5YRFVZcNTgvAOmLAUA
	 MtuDyHTCSilWgDX5Op1vq4DZTs7KlLkQbpQ62hitwW/8UItdVf9cMPrMtzI3I2icvJ
	 ddP4/2XISItvb3zH+eC/XadiTofNih9wKrxEiO299138IZ8MqDnm0r1pFkIUkpIeYk
	 eRsE7DIMAVQMukB6v/isN9FzCmXpQCSSp+MywDBLszwSW6l1Y0gihPznk40vv6kz7m
	 rN4ogV3FCXpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125EF46445
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365729358.15063.119986152845471581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eddc8492a45a03ddade815b52e9548ec0440a205dcf425e9091aff68b5be384
Date: Mon, 16 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773657293

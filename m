Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AD6175A9D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777216054; cv=none; b=e6yRPIYe7QiYCLiqixYmSzrgEt3oakyf0xjJ98522AOyIBjcy6+EyeniSyhNgZ9zcMIuiQxIjOEU4+ZwSOBsiEEafwPPksrHIAJE6adsrnSoIgspdAYDtUv3QJq7Gi5mFeH/4Jl6d6Sp8oFcfjZ7p4Q+4jOuVmo6TWZRU0LUyb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777216054; c=relaxed/simple;
	bh=cFxDeVKi52DhuubK6yYb3gHPjZBt+VBA4DBdfq9IwTA=;
	h=To:Subject:From:Message-Id:Date; b=gALZk5H5uaD3OEgr0Ls5Vakst5vtOF0SXGe06wzkVZm1wGSnfeJ42F2ReObhBT5JI4T9sjNg0IH3UznDwb9mC5b2yUbTPn0U/SjadD+To4MQPwMRkAPtnPb+IaXmiETJFnMJq+EpMT4F/3IS/3XeefdSB+1Ay8hA6Unw0gPH7+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cK5bcw0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cK5bcw0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C085FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777216053;
	bh=cFxDeVKi52DhuubK6yYb3gHPjZBt+VBA4DBdfq9IwTA=;
	h=To:Subject:From:Date:From;
	b=cK5bcw0yBfXQEQTCFUUbtBIF2fXvnzWYEryZnPjeBz0KDZVBFp5uhljxHDPmbt07C
	 gUWHuaYunAnrbNdtq7neKSnEv3AnBcbhuZovI3wo870QK31UBPuTTwmfVymexXrZqD
	 ES4iFtzGW6HV1n6UTYPdMquc5QkEX1mXh+o9b06LFA9UjBN+qjPY7qDmg1J/FguFw8
	 tcLyzSt52aamhWEqDtz3GvDYzE/VFwBqhzkj+bsIwF5MZfFQEdjeGbOMccho+he69R
	 lZ67NdiFu8Q0jicTRghf4fHH6DaHWlZL+pVzzdEB7Hz8ZMSgGb8C5DSx3Qpk5Vhidl
	 7e2Wr2V3pEJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF20BFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721605368.23429.287706117435525593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0467d6593f570ceaa8b9cd0deaafaef0de2d52b093084eab2c210bf7ae3539e5
Date: Sun, 26 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777216053

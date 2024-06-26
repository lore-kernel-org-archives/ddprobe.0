Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5985D190465
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719425603; cv=none; b=OE8skDHPt6ZGtJLg4RGaWgVMocq8nTQpsNdhT51TFcfZtuHY5fwSfmMpqeupbtCaV0oV0dspCvLlLTczIXiOWoyzFWkiA5XKHMPHB/MhXaqZwo31/CabP0p3TIGt+fjQiSG/eUeG2iSPZgb9OtXVoMXRAhyVH8fe4PKXsMAM5C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719425603; c=relaxed/simple;
	bh=eDSbC1PFmFtw7tjNH9ebdgqFwlMiJGeixzk1EQmCPfs=;
	h=To:Subject:From:Message-Id:Date; b=MGfXG7i+e0x7ytWIM//krluNV+A4aVHa5Ajx8acFZOBZTQcfgfDLjnOwFE0LwdWUHC9IJ9Eaz3UxH8mV7Qb0uhIBFcvARzwmESQZVbN88WmR81erMaeug2PpA+uWW42BYY8xP/k8PW9mX3FVmXE+VB3kLJHDtq/4p+KX0ziMOUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5UPnLCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5UPnLCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8461C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719425602;
	bh=eDSbC1PFmFtw7tjNH9ebdgqFwlMiJGeixzk1EQmCPfs=;
	h=To:Subject:From:Date:From;
	b=p5UPnLCxVp6MA24wsSFaEaJ2foBZerVFqws2dYlINjgEUGNCI6Yml867V3u0Z56uR
	 2v9CWTkD4tCQymT3NAAAUjrtO3nHTyAsqUQyNIdyGHGvrlpzg02sCYKIL1lOw+dzCi
	 vkdfsNTjVOQtyNnty0PQX5FdF9k51G6TAaLlWKYWyu/n1j/9ZGnHw6fGpW/xDlPp1K
	 Roe2Xk/lhN6JH7FoGDClixusLAitKik/K8FVcoCaF9U/TaGvwp3IRggqH+Ry/6/9Qd
	 P9VdqBkhSD4sVpnDWG3hAKJxBwXBf2ff7j0gAqvGJTMca9CT5BcGHN51iumwTAH2b8
	 33PkVPojNGbIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DC0C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942560280.7429.1705056188343001072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfe419f55819b7fca7c6a056ec72a9638783cb04c344f932169847cabcfd349
Date: Wed, 26 Jun 2024 18:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719425602

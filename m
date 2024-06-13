Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6340813D534
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718275703; cv=none; b=AWwrsPaxwi2NGaOAGFUS4tPugYS0W6gb1Mw+cinvgAhNFBZEZeYjt18fiLIVtFYCB2aBsske4DwAPgEEwgRnnx1GWzbBAV7Xh5g+6f9BycxgCppkICgeWj5LSMuiM3M+6mv5WsWy2B+btq2fhPRQ/oPrjcO72ia8i0NJTY45Ksg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718275703; c=relaxed/simple;
	bh=h0nsoBuQOTCu7Q7JSDLjsxTSwtIpsWWYzUank2UY00k=;
	h=To:Subject:From:Message-Id:Date; b=P1oOc0P/5U2YTQ1YhWeaC16xcylC+f7GRPOkVoLaa/mL0Xa2Wh7Z4RGPpuRg0AFRQKgikyhuXK08gp9xmRxlhrKHDLaWT2nNNyx934ptm3veovuFNVP2FSVPnprduSahNY8LqiT7QgajRdHpVHD6nxy97nQON+cJJa3d0UrgpmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kX7u7Y0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kX7u7Y0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D0BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718275702;
	bh=h0nsoBuQOTCu7Q7JSDLjsxTSwtIpsWWYzUank2UY00k=;
	h=To:Subject:From:Date:From;
	b=kX7u7Y0sHJHWu/Fzviqm3iALjzQtd+rX7DNJ020+Co5bI0BxAY/GJ13/8uZLgSTqg
	 jvtFK+usjo/RvFbzgg7Btpo6yvOYJ3AV+4Utj8USKALQgt8QmGSdsNCsS+j4FAf2dr
	 OMdTy2s/9hJr4PXsEenFpnYNtLYEhF4GaO2nxg51LsO9Faf6LwFWFiUBLmYeiGJeZn
	 efZKEYBpX5no1I/dV2Kdr4jeO7i6p00H2q6jmtxtBpJOqigzoo1WcYnVXfU/zq6yBt
	 ePIMC1rp8vFIgdzADDtYCMRDPRcc4lK5CFtLJCW5ZkHDpYIPbZNyGWwg6kfuKtu3oz
	 LPf5mmEcdQOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A98C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827570278.5779.1558465147225568208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d680bb5e9c589abde5a8885a4ad3aa38bfda84dc4e27eb957a0ec1364325c927
Date: Thu, 13 Jun 2024 10:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718275702

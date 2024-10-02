Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410EA2F34
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727851554; cv=none; b=LP/EbjsrRmIWVc9FaK+aJBnazCbAeHWcF43DRWvgBAo45xbnsv4GUoLp0LhpbxbyOFSYekHsktElUjGeGv/8zZ6+ozVDcUjsyIbNwQ6XU/IjkVuNnUk6EJ9W63LGCJ0MtxXVay8ckk4bFalt3bTauqVtvPxAbeU9Zd8WixbVgMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727851554; c=relaxed/simple;
	bh=jo94h+M+IR+7/HnSSGx+agnvqM0onLQmC7oI5OHuojo=;
	h=To:Subject:From:Message-Id:Date; b=Q+2W9uKtr8222xuSlPvpk8HSWhYSSaR4Eds842W5/r5y9JL/mnCbXI3zEwp58AcPSjvac7tVD0vR1ruTpCRbk3VsHu3U8D4LkQ9UdciFCIYrdhlzmVpQ/sGoLhKNt9mGpR/vtBHCs5ZNc8xTQYSjqn6RukFUm3l9sCbXEQ/EzyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvHEyMgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvHEyMgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6859C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727851553;
	bh=jo94h+M+IR+7/HnSSGx+agnvqM0onLQmC7oI5OHuojo=;
	h=To:Subject:From:Date:From;
	b=LvHEyMgNQatXhJa2BEU/5txrjvPtKUT/69vffzXjI01jWWIlJ7R+LhTrtBVJODkSk
	 bzAuadd1k4xKyxxYEuNxahg5xNSZDvYEFZkwFWNNzTOQ1ar4ZccyL1S2DMU1tv2mCj
	 i3kUJY5qGmM2a3TDPaHHhFuLbxQsupBU2wRTATLX2rcPcFCJsz0xRvOoas2GvDu2XH
	 Mpf57o8s3dg4XAs4Dqr9nrsA6pjnBdDN79Xv0VTWkF8cTiX8NavWXSKz4N5H2QpXjk
	 wG5SucWB09KzCuNtsbxF7l9ibljf95gT7Mr++jAWhJamBYL1aliNCfq0KsSAYCO2y0
	 MWdbenIa5IkyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB37CF3198
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785155363.13723.12162304491517169684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3befcd4e123deee0d6e8cca51194aacf52d5e82a523a66610527b3777c889cc
Date: Wed, 02 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727851553

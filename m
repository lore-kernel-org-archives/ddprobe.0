Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1766327F19F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752121794; cv=none; b=H282IZrm+D/QWdIKnoBExdMc3KVck+g8+RuNFaMTO8BUBtCfyp1MH52BDprYHocM61S3U3aT3uZ72RKVPO89/z7H8jpTnczMnroQH9K4kxYA9vaPxScyCui1o4ZLW8zS3qeVGlYafGF14/EB76gAI+juHfwR9Z1GugMSpjaDCT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752121794; c=relaxed/simple;
	bh=U/IKzBx/wFxG34LuCsBdRYmrChoGg0gwUxBteDRwBDI=;
	h=To:Subject:From:Message-Id:Date; b=dFu8fnW7GeRZMs2J1zaFspRPxNCQf/N8Ne9BXIz676uiHwt1O776T9t+opC4B8ubgQb79+0P8TnGE85HXQ1ehzZz/TCqU7JVe9PMuFH/8zsSVVMIrgB9sbm1vIsJ1cEQ4lXz3n3Bukh+HKFHvGrJmE5GL9WX+AGSb2LF4uOt6kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi07gz/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi07gz/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752121793;
	bh=U/IKzBx/wFxG34LuCsBdRYmrChoGg0gwUxBteDRwBDI=;
	h=To:Subject:From:Date:From;
	b=Fi07gz/tyuxjR3r26DE9uA3jJIy4q3Nm2VAx8Z9RYI0rcs47CNeBiJTBE4+4PZMtu
	 aUdc6tpQmjyNGQV0in6iJvh28DMSyY57Hpj/iqnKaI2R29f7gtW0X1s+fjGYlksHxg
	 hlw268Ypuo5CE4vzON14Avhu+YydMBibCrgBr7qP2dVfgDpSU/PS/YQka8CVhJd6GN
	 G6tg3OjCzb4j4DdZ3dJJai7mQoZndnMs9Vw3HEHCEmSN73Xj5o3Jh33IX4FOCVhNZ9
	 1mgLQJoO55P0gH2c7ode4m91oSGbCJYp+xvxDL7NxbPvtEYMazfdaRroeZHiqGnv3H
	 gbf3fKpN4Mb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC4C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212179358.24476.2548927310415517939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c56f7ebefae027d49ed1a5628eb6d13262b087e2b72a46bcd701d16177df98
Date: Thu, 10 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752121793

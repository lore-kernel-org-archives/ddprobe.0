Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEF78464
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710235697; cv=none; b=ADvYeOyxKWw2Vkgxdunrp3H1ae3301A25sPTXcFM4Lqm0D560GCF2yllp5VsQV1XQVP3uNbiU838y0OQWux+afmmyysSAUk7xqEzALKS+z9nmJsIDxwvPyfJWziq0MRd3xuhqaMi4+POwjs83DefGI1SJb5S546QwGZla1cYg2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710235697; c=relaxed/simple;
	bh=YNaTk0rjar8oGx0SLTZb1yl+u4PFm9zPuVyhRZ3Bi5M=;
	h=To:Subject:From:Message-Id:Date; b=OCP5IlUS+Spf8telj4IUgEwnIGhbctFDVydF0iscloorlJlhNm2kfgBZhgDh0kUFfm/28JvHx4AYinY8MT+ebG+MuVdIZg66z1z2MVYBjnbTCHcGyXycPsbHnk4M+T2T6utAwXNwVoYoIFuvEp4Clf8Dym5ueXVYBEY+SZd+pkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ+XZJCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ+XZJCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7442EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710235696;
	bh=YNaTk0rjar8oGx0SLTZb1yl+u4PFm9zPuVyhRZ3Bi5M=;
	h=To:Subject:From:Date:From;
	b=NQ+XZJCZJEigee+8sic1VBDX2qE4Wf6jrNlyTC/fzfVhdr4nUOeuFYzYAJoMI6Knc
	 2XiVEzMOHavSUbJCToH+iYJ6nzLWlQQT3BNrStdgDHRNUsHKd/7c62k5Lou9G2MR84
	 Qkpf17GI0Vqd/2TEbaA0a+hqUHezEWOJGulA29GNb6pm547lqKbaUpKqM15dTgTm9g
	 IwJFfIHWzd5qK0xuf+v0iBUtAxXY/gM8iJjPsbIbTz3eM8yt45qetLuscDb85adJvC
	 oyr30ZMYLkX1TSx9yApRqAG3EPa6WngpgWWzro7o3/5lH/gxlB8cdtjH3KdtRGA4Vw
	 K3c8CrLPHGqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCF5C54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171023569636.7586.9009193758872605846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e2f6e295302efc42702772e9f5be7855f35718f51108c6495dcdd234dffeb6
Date: Tue, 12 Mar 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710235696

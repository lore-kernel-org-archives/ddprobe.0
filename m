Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1321D21766E
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731009954; cv=none; b=SYOQyruMqCLJkXXcyjQbvnUZU4HfCCrZbN1LhyOPajsF3IYA4nMCV3/Nqmo93fIpniZzMEMVE6IFm5aE279tjIbok41n1Ure4X9uXVmU9HnQciOYf8aa8phNJ4v4VNCqFJvqnUFYsH0s+GiBv1Mg2dQhljXgPfsui2drNGw8Lpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731009954; c=relaxed/simple;
	bh=uC8KwNWQc1zLb2WdL6DOhQC1woTdFxXPhHnSo/lvlNc=;
	h=To:Subject:From:Message-Id:Date; b=Ao9CXsIVrSsO5Tk7FWfyhS2y5UQFuHLPwDaAsBQvToQtjAMubrpKM/WGybTmn+0MwAG1KTUgD3zunppWZsx1HInq3Ifx4ei6rAI/Cr9oOvZMhFnsPsT4cL1w0aLpaPBDoO3UasryL4JxyOCrLgqB22sUHoBmblUYQb58Gm4fOME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV5yiqqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV5yiqqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE67C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731009953;
	bh=uC8KwNWQc1zLb2WdL6DOhQC1woTdFxXPhHnSo/lvlNc=;
	h=To:Subject:From:Date:From;
	b=qV5yiqqWx6Px2rcX+crpUpIZTyE9WuTXtrvMbJvOJdf7doLqmXx6UYbtr+bHOYNlD
	 91f6GWHs5DXCi4JMTw+t7U1Wf2AxBwqNYtBHmncYDeLdpiz5h73q+6BpR1U+fMN1jq
	 MeDjybs4bVdEqAfJw19MOzXL10Z8ADoPc1iXtdNjaQFTJgX7LizkbRG6W3TJ+v+Qhx
	 vh4JbQIM4y+XW5h67wpSbWOfc2Yky1Bz3nkQRBbPZwqD/bWifXPPH9lHGgOZylxfb8
	 4Nn3CM0eXEtn6bgMZaoNObi36oFg0TMVt+hJiR0WmbWqBBr4InhcUGE1DGhlHwi2Ru
	 qT/8g9NyCZ+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D2D5D688
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173100995358.8479.6171390006779979996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4323dc50d91a88947fe75dc87a900e6f541b0a3cc1ae7dcfb58940d9cbc7239
Date: Thu, 07 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731009953

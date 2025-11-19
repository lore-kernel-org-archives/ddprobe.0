Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F68132ABF6
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763549515; cv=none; b=E24zSsfYEW7ifUi3K+iY1Oci06Q2W6hvNEqXsbaBPcXPu1Fk41bGYg+zuVDWrTaJt+wm3vx93n2+3MzP3zBqCYF5Kf1PFXBLrMmo7q/7StsF5nVHLZcIcS4eIyEsg2cU6qRPyr6R42GQTVY6nxGAyKp1kBbC3AIUYFDVcfokBXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763549515; c=relaxed/simple;
	bh=cfhOUTGY/Mnq2I6FYfasilRdHAdGBijBZ6rqocGscZg=;
	h=To:Subject:From:Message-Id:Date; b=Ti9b3oF2rq5RKZkK33Z58dNUbcfYHZjVNHmtx/+Gpefk0NJ4MD3eexLfcYBlHAUWAjnKtse9SMeEQX0V1bm5JBGCkCpXK9NbGUDU9wfSIKsCzvQb/9i4TD1q4125pNdTm9IddwA2lkAARjP7IhvQwubAxEylasNppgRqejywBGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVWxLCDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVWxLCDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA480C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763549513;
	bh=cfhOUTGY/Mnq2I6FYfasilRdHAdGBijBZ6rqocGscZg=;
	h=To:Subject:From:Date:From;
	b=cVWxLCDJ1VdirrOapheqkhinGROxW1+Aq5Sz+n1N9gGNcSY7FzmiAuUVXlaYgk9sk
	 qQ76mZ6Di3TwCFMakU/ZWH7oUywXFTqzBF8WKG2Xa6e31Y9XdlarAau+jURlzKqDus
	 pLQOV9Y2WNQhHToPQqBibY5PPlgo4mXXrgBihf/iVCEkM5XrA0/Hk8UKkAQlresxGY
	 GvgPVZnng18X9Z2zaTfI8tF1tfuuUFCUizY3jCZL0Md2VIM8Hc4KX2eSou5c53XMr9
	 +CSYK4/MW5Zl96+27V4AHLn4zDjGMXnaFclabx75opp76/2UZ4efkY0nZOZsFQ5pgS
	 /39aRR4+AwgXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90539CF318C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354951358.13755.13223457810531409275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f06aeade14313edbb701d03c936040379d9ea630d94618772936d80f1e5ab6f
Date: Wed, 19 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763549513

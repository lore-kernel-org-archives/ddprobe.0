Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF284A33
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750007394; cv=none; b=qCRF2G8WKTp4aOzgZ5XMTcKBDHG7RPQFdIpYvFB26mmbkuLahq0EZzMwduN7U8iSorEuN+SP7J9SrjOr/+sP2sq4ijn3+oHhfuOvKDuvCUCkDrI2S2Ixi77PsSQP8PjqYe0aQTxFAt4vHOAFssRdz3xYnWij3JruIGp1F4xMykI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750007394; c=relaxed/simple;
	bh=8501Ceo/wTTSUhzO4kpcKWlAwW8vO6k4BQrvxhrYqeE=;
	h=To:Subject:From:Message-Id:Date; b=Tm8qUBOQskeWHi0na0lS/8eF5PqeL8t26Df6poWAbc2xYpiqqEpOKQmNBAhS8PU2jB4kkPu566irSpfhqU70BblSyIIQdcZoYKrTd0N5mVhRv3Q7Bi62nIKC15XTjafVqb7INMfo33qg4BR16RoyrKD1G4Ot+a0a6TwtMorzWnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnxxQMW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnxxQMW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6657C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750007393;
	bh=8501Ceo/wTTSUhzO4kpcKWlAwW8vO6k4BQrvxhrYqeE=;
	h=To:Subject:From:Date:From;
	b=MnxxQMW7VaMX0sGrbWYoMmWB+pAPKsgVi2nEDdFOagNoJopoLS6FudbD+24OwlF09
	 oouUr+X8MjhrkHNBcPYY1xDE2U7FVDBoXZxhK+IMY6Bu2m5Ye/X1ZZaxu0NB2OaF6y
	 UPI1y6ExWXTAJPg+R9rzj7yCyi5ZTZ564U4tz8EwalBcH0yHMH5Ho89pJF8hX7pVMX
	 z8LIQAXI6kOSU7UXicPRjOUP2dcXe3HqPKTRqWdnImMC4V770IzblvgZJ5mh8Ge9Oi
	 9TJuF7iRLuDYdWRQZm6guUhdHcek4rzbqJDRJo8pZHb0Fu85K70hUVYzcYe6JBheGo
	 QSlEBb5V55r2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9948CC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000739358.16877.10809517267924738818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e09d78a8350b7801cfb517ab2f6d14949b54d53f98c7ff2f8484264e761ff3
Date: Sun, 15 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750007393

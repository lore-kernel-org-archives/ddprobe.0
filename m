Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3190033F3
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760837394; cv=none; b=GwH/49CfDulZvQKW7EWCKuFYU9I6C5EPu1l4H/mjZdAsOgyLmRC1lA1s08cohI4GdWjzXUnfQhIpMofKsngaiGWI7LA2sgq3tz8oF0BHAA6uNznjHf1HS6xjFa3XImkwgp8mUmBBnlyoU0Q3VP9uXWhE3sfxo3wtFgl9tfOzmTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760837394; c=relaxed/simple;
	bh=+razqSnaSpkc0xVHqD3bNCdp9D/k4l/bGH/mMn4wMGU=;
	h=To:Subject:From:Message-Id:Date; b=EmoxwrJwMTMzwahn8rB3MggHdZkd74LzdLEH/pKkVB2wyQXZuuTxDha+zNzxH43I7hTRBPlBWiBWTgr6klVnPsrSLbQ1PIPKg/NgULfNNX/FNLMDef97Mwb4HMf9D/YKp64nrca67YtRRT7QGrDz4K2bYEWRdYhFdIV2Rdda4Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5n4PUKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5n4PUKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760837393;
	bh=+razqSnaSpkc0xVHqD3bNCdp9D/k4l/bGH/mMn4wMGU=;
	h=To:Subject:From:Date:From;
	b=b5n4PUKGAR0/Gh6VhQcHjDFMqOrWxvvWenrkgxeGW9gtfzhUOxdsHsebbIWoT0/b5
	 kHO556fU+ePYyvT76MbaMzlr8Y7kwaPEOqyZnL9b0jb2ND71efYXYWrg1TVseBWwBl
	 D5/B1E+4QryQ5CxIs1AgiS/jgjTUNjqYqssWX978ZzNsqxOfzMQ127ztnsBCjwBDHI
	 gBAcLnOepFUaFLHgdtQ9Kk7WZDGP8VQfVLB77OaUYox48FTmIryAb9AFzj+Dp6pTjs
	 DO7WZDD6yr5YirhGiR9IuuawExqDplUPsKK3RNTKVhysz1k+LIdzhm0EHLvgNpZwi5
	 cBYU9evl8A8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABFCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083739358.23689.11379079681241994298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce858bc84b16ab9ff402cff5431ce9022c02c91b51cba95b465a218e3acf2e6
Date: Sun, 19 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760837393

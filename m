Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A2026B764
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777228654; cv=none; b=DEfQANnYy2vRwkBl+8e/n6tje/OqR+iOqIOvaJghxka+PvxwUKi1JhE01OfhJAxPd7Tw/AedjzPy9zScMu9e+pLiX5fXRtzKEoGEX48Ktyg7mv789vs5Mq5qLQVjOKFVNKAUPWK7o56djVKDqG47087fl6aiV0F7Q8FeS1To9Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777228654; c=relaxed/simple;
	bh=MukEUxSjT5Z1qezC4t9WwQgKTPgeTiLgsfw6SIbGbcE=;
	h=To:Subject:From:Message-Id:Date; b=rzhRU+zhhgpUzGNeLfmHBjUAaq8qoVgTladQtUlaQX59H2pQ09tg0YlNI0VA96TVXeioZt5CvCdwhbuDqDweY9kyqxKCmoN3HuCdEbkupiqAK8o2AtUr/fCOqyQMrHxahOnC3WbIhxDhl7DBoc4DLzpb+7FBRytkfhJpp1SsM9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWwiLhg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWwiLhg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA39C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777228653;
	bh=MukEUxSjT5Z1qezC4t9WwQgKTPgeTiLgsfw6SIbGbcE=;
	h=To:Subject:From:Date:From;
	b=mWwiLhg8uCZduwnCney5mT8fKkgYpqak00U/R65eOsSkiR9DoahCDOrCpKZLF6929
	 wS6aDVCVWZFrUnSI5F06vEcODthGovhIhLttZI7UwvDWK5APz7Ih/SlRyu9h5amctA
	 89NWlQL4jTYkXkaPA6hGwPJRagFzGvUll4chbZHIOoyoWfhk2yYJIWKBuqhYJRMEmv
	 8bP1F/C7gpzz/siwXNsSg52nCsJbhhi8/tlm1TZ72qAYGMUGBKjJOgvJws4UR+z7bH
	 XRw5jz8gPBv1Dku1dEzSEnsMJNbKR1J3EJtrMgSTas061yZKTI8Cx3RqE417BO6L0w
	 aEgoFpc+FhHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC95BFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722865368.7689.1851828745019414033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1dc62b8f2764d6854f861c8c3574b1f55b697b15e6e5c65ee52354769851a0
Date: Sun, 26 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777228653

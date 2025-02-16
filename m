Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFF01487C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739701734; cv=none; b=VLvbmrACF67lFGQhsIv7GxQa70zd1uIwwTphEFj4pCPMxZWS49T5ZdY6NPiczKB1tZt/kBZa1JDeToc/l83ew6VK8BHKiU0LTyCsxxrvJFCeJg7SbSHSN+iM7FcanSON/dZnGvDpQNSymSSZf3Xs/bSgYADrlLaF3OjkSz0lA9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739701734; c=relaxed/simple;
	bh=buwzwoWhdLJATG1wQZygiOCjRAzOVBeZJQXcLVtcZ00=;
	h=To:Subject:From:Message-Id:Date; b=S+wS4G2pM2JwsDjaveftfHOV14vdnXbF4tvcNRX35I/5bzXOWqdxUwyzy3LfZcUrXPLZAuax8jzJrWKX+AOaHP12Rh4V1FYt8pHUAJXV5D+cR/rih1mnxfRGWac9KD9xtv6psMNrLww3VXAc1dYiYAVtQ7J6hgt79kr1bPgNKBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swDhsBX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swDhsBX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC07CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739701733;
	bh=buwzwoWhdLJATG1wQZygiOCjRAzOVBeZJQXcLVtcZ00=;
	h=To:Subject:From:Date:From;
	b=swDhsBX1DP5a+QSstLq1xd5tldutBUueRgdDxSXz0MVW/IueagGF5YmWJh+mJomTm
	 eG9Pjdugi32mIX3DuVU+vVOjfzuzshnfqdupddEuxJWR1p91MTACANQo8DbcuuR8eq
	 MO0YTRlSS4pesebcLQhjQFmDLnzXEf/RWgLez1FJp9Us1bDdQGJFpQVAzbSzJJk7Y2
	 1kReQsktP989OU2p28R2Sd8bAJnl6p15fTUVmF695s37OEWOiN8RNaV9vJslrPuw+Y
	 zfYWLv5ub8jW2SONji1k+sm+eeGojyF9GO7nwI7Xb8VRh10bD5TsKRSqPIe+Zf1nRB
	 EAhYHXvaD5qTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984E6C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173970173361.705.14813360433996464803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3893158af0dec65295c400bfa10c5d38ba7309d687732d7fa15f2fca87db7859
Date: Sun, 16 Feb 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739701733

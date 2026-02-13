Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE1B26B971
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770998094; cv=none; b=eHjxfRBzjsqB4T2Q1/P6JoXrcX/lBOI0ljvwW2wjmI+pw7ZZOseovpEPXyH/u+0uy00BG8Zt5kVHGmjBZQdWslzD8S/BRVVa4tZ/PxSX1dpGoNB1h8YwwrF4n5G4vFh05bAvh0ikxouABABI5DaJ7vsyeIaO29hui0G29YLV97Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770998094; c=relaxed/simple;
	bh=32/5yx9moS+GqKt6sWU9/iIJIDJxoCQSaBQWiNgdcMA=;
	h=To:Subject:From:Message-Id:Date; b=q1BMv4R9n97iRkNT9WLbTz9boM5Xe5YM99bX6nuTbJEW3KUY/eDWgv0rAHFaIiG9pBPugz9Nx9aMHcTJ+E9bX87c6PPwtRXzP2Zc9c6pRVIfoG5dS3lVsgURCKJwIfsXOgA5e0rhEUJXraZ44GuHGybh9HKPMZ5Pu17NwclmTzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7UYPPZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7UYPPZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109AC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770998093;
	bh=32/5yx9moS+GqKt6sWU9/iIJIDJxoCQSaBQWiNgdcMA=;
	h=To:Subject:From:Date:From;
	b=d7UYPPZvpYumwdGUaln8p1pzZ11CW7ry3QG13i/N38cl9yTQqWuT6q/XNKOUUEPTv
	 Rpq3VRxWR1o0pPrbsPKIIxTLcPvlpgZOckcRf1DAEx+Wat6+EfJxKOdn1NVvMbFuMP
	 ej4njIXs2kpTa6mj2CR6BxHq7hgyQ9s//S0TuHlEHecgM1JIpa7F732SyYBs07vcSY
	 D+3EGApI2QNHACnueP7Bjp1vi/7Oz2dND3tWuwqknX+sV1TFY2+K/u9aY16XmVfy+2
	 mTiQZX0zs+12O0DKoNISBkSJEhjNLEjePeRM2i8xn9lK0fLxc71DIhrOLRrpMIFvfH
	 RLeev0j6n5i1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91807EDF176
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099809358.24457.11927445471667291135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e76b416fbcffe0d452d1ef63bcc39b1056a65ff1c59b7126279f9b7bcfdac10
Date: Fri, 13 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770998093

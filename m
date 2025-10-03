Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B22939ACF
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759489194; cv=none; b=fCzy/n3rn0IEAYrm2UzgnxnVY2Ce7sVaTZaTn+8G/CpVSYi8Ir9q1yruwEW23kvwKd/gxjyJ/ASgnGwsk8Rze8wGUovrbNhm8JvxsJ7I1i2ve3ui6H/QnpwhfZCZNMIDP08tVxIxPy0J5Yr+nzvTJKcqt0y9rRJkog8C6DsccVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759489194; c=relaxed/simple;
	bh=xPoYdozcTZWjHuEXIHSSjSfPSTJfkA6a1l7e1QM0Fgs=;
	h=To:Subject:From:Message-Id:Date; b=BV/5mAR/ISpGfLCdGiEPQpwBia0pBr+UoVu9RZQ9vkxmy7OKNmNf7rPLo3TiH/gkw0iR4jqDoKiMuMr64LqpcTchwKYsv5rauJ2yfwuwGDr1Jwb2+Fem8sn7CCF6PhJ5MgOW8+68iKxNr1jWKOG834FPcvRxNKJ5wcFnKkxGqU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEB4FhDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEB4FhDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5161C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759489193;
	bh=xPoYdozcTZWjHuEXIHSSjSfPSTJfkA6a1l7e1QM0Fgs=;
	h=To:Subject:From:Date:From;
	b=pEB4FhDWnff8oHlPLfJn2Vz9CfB02MjWzsfe1eex5jhFNLGKaS5L96n7f3Dy9/z9Q
	 /BXZGmqxW0USBjeC84QKqozJIcQIG3k/ipwKO33yFQRC1+kkhYEaxT97Tt8wTrWyPm
	 KRIAaQ8hiARTYGV0RQ+wWpGEoBogNa1TGxZ/kXwBP5zSeNPHh+lF889fK9se7dnRf6
	 QEccGUI0hHlKxcGIVEWOI99X+xkztWGn1d7X3L7clPjmBUPnDMWf1nLDjrhhrbm2ZK
	 HtBfyjYUqBMNWcEHqxc6qBC+RYx7NRdl1morex4Iz39cIfSCob6ShByScbatDJ6q9i
	 oJzqA6+pp2Qfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FAACAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948919357.9888.7235380805370661618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd7b932449c4965e8df1a8ca3bce4bc3b1eaa4864dd4d1be81c99b96c30e459
Date: Fri, 03 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759489193

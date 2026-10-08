Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A9721B192
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791469234; cv=none; b=foe4EeR9Hj5dstsZYhcr2Zpl7L9xUGI20RYFBubm89IM3cjx0GjBOZL3Fdo+UUFOU+fVOqQJGgFfjflapNRtl84+Wdg1Ih4l5VwuRTpqNmUQOOIQb6szkFrUVlC7fTnL9VtNCwLpbkOMrYFIBh32/KzV0mL/K5lo7+1g0WWjsjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791469234; c=relaxed/simple;
	bh=vPsRhs6nWt5j2xceikzlQnJTnxN3s/dbVv1vEHoyUNw=;
	h=To:Subject:From:Message-Id:Date; b=mrkN0sYwWkbpApy1uMQ+lglhPxOtLG6hn21mXMIX+iCOw/y/YDU5rjRm5RH4TTUcMzev6wOZ7snKjOZHPrykrxGi79rQgO4IQVchYWAYqomxv5TpZio2+mpR1g62FJZHpi5m0Qao+CiZNHS2v0b5pMW/o3fbMQwETXkE81MPt7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYl91djA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYl91djA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13A0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791469233;
	bh=vPsRhs6nWt5j2xceikzlQnJTnxN3s/dbVv1vEHoyUNw=;
	h=To:Subject:From:Date:From;
	b=fYl91djA2IuHYC661d5pCbZQNkwkAr9sIT1IEBZeN2ifhKIVPIX+Qxw3bztJY41LB
	 8tvwWU6c8od/NjiTW3kEyJciwrwFskBF6VEHFTGsm5k+p6qkgo+VcDDkfZI1GCU8cV
	 Yo4m+xEEuHXwqF9c9bCCAkNIOWA07pmIXlJPPB4p+5ICi0JctkrwmVWvZUCDKHpzUj
	 xD1OXgApOzwsZAgIQuybAgXfU3efUhaaAATBRgnbZrAQD8PYebIFRDRTuhCRyElF8F
	 +tP6mjEeNZPsJzhn1h+8vK3ocrzGrSeWu5mq1YAlxWVPFSe+C96hEqhyEi7yYxwYyf
	 ddRX8eKsXXNyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB083CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146923368.26021.11188127500597281670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83693ceea695c76bbd83b1993d86f7973796f6391479c956c89fbac764dd1fa
Date: Thu, 08 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791469233

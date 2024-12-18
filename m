Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D241F3D56
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734537354; cv=none; b=VppngI+XPiPjfuLfmXlo70Xwa3GZFxxE7IoiGG+tL2Ymgwrj5B+tF29mIDhsyKIePzSGcfrJB+MPzu8g/lYloRGyTwQTaD0r0lm7daFLx4/XRC+6NZu3gzmh36fcMescT8/PfZ9Fzu6ZfNERnmPcJkyuhaABkNWM+ZdZppAp1z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734537354; c=relaxed/simple;
	bh=TNRh/7ZpQ5YGaNoUUeSFtYyJqOJc8FzbGCTJ+05wolY=;
	h=To:Subject:From:Message-Id:Date; b=N+28LOqeelfrwxjaJCyX1WN0Shq4AP7nL9rIa7oyP5OeZAGE2/32477ghkoKyWAdWe0DiEoV6xS4tBvFVhkfrIH3cewNEAVmh0K3hEIpzr4QQ7PmZyOjQfP9sL2X81VFwssYlUZGCvo17IUpAKTHJjwNPdc+8YMUgqeQghv+Rps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwyUsxm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwyUsxm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BFAC4CED4
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734537353;
	bh=TNRh/7ZpQ5YGaNoUUeSFtYyJqOJc8FzbGCTJ+05wolY=;
	h=To:Subject:From:Date:From;
	b=lwyUsxm5+4EjFzzVE6YcBXrU3UEfOb+UEQ0S9x163Jc07VsRv5u/XKoI3wNXJ/352
	 GyRJoap020BE8WJxu6jjgIP2wxoj7yWSPDvowY+mT4S7KSggmDB61S8mXQkti6F0ZL
	 I9/Q6hA3OGIf2u/qUejt1WaHoUTCXuzx2J4V0z/BJb6MiX0A5/fXL5KG4MMK8T9kY4
	 UUF4VaZcRDAqk0lrYtQyOMyNjo1MWUkSQYectJekUraGRQ6Q31PIOOySfgL+rAN8Ql
	 Yqtpl0KyG43yT1ACnprdp0XbpTX19JPZ0LIV/N4Z5ngXebd69/X2mUv7bPHwVTI6El
	 GGNF09pCgFJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96851E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173453735360.3464.12419612052134975060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4449987f632f5013e5f83e51d765969520713045ca1898c5c3ba421f3d1bc319
Date: Wed, 18 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734537353

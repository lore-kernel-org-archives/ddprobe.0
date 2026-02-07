Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5932701C4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770484434; cv=none; b=aJ76Iw4+5vfA/JQWkKIUYKvqAyIy+6jIwruqC/865DSa6mL5/4T45Q5IFcYu5gFFI6BNKdC7RK6/FMeStxs8HNtHeBCcfTWZPbafP8VjNMPpc1FgTFUh2Uc08M2oOXO8Q/PjAWKYViW3yrE9r9F/Ympt6+KiipsRtVQngD9mQNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770484434; c=relaxed/simple;
	bh=K1p43o722UTQy1r60o8G9vY0tj47gawMUQPgWS7UASc=;
	h=To:Subject:From:Message-Id:Date; b=gYatZKZcOZyTDdGPCfswX/c0C6LU+42fTxFF4mXl/eVLeanN7NpoFiCFLHOX8gpocLt05b09gieQ1hoUfYxftHqU/6L18C6DQ8iQHek3sCM3kaPFjE7LTzwCx/5GJzLKZpFj4MDrVY5I9d13r2HVCLch6rXwL9IHtt6pxPQh2RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6NsLiTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6NsLiTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B8AC16AAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770484433;
	bh=K1p43o722UTQy1r60o8G9vY0tj47gawMUQPgWS7UASc=;
	h=To:Subject:From:Date:From;
	b=j6NsLiTjmdhjyd1RRhy1N8aPNMcIH7YR/EyNl5vEP+RDVEPK2bgmSKWn/Sy3NDVL8
	 POUinH+HOv8qAkJh0jsHunR+lZ3lfYMk8EmA0+45ljPlrfmKtCvrYGXcKih4Z8qlrZ
	 Qdllrknc2iL/4t/IM83YqsYj4eP5NCd92yAkX1/ff+MGj2E31CKfnLM++DxMoT0l+a
	 Dghyd+PyvvdrraSSg1O3frpMUhkTnf0PZbs8Grbi93/PYcXgingKjdO+Dl9lzSc9lg
	 6zxdys5vTv48w9QDoIS10XYOhwU+f8hAK2ZAtIswtP3MG+Pn0oUuUUsz0mXT7oRHqN
	 zEwLBxIh4Ta/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9515BEE0AE9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048443359.23978.4750782194882070673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427a7714e943d1db41ab8de58d668118944bf5a4e8d7ba74133436250e7e3e36
Date: Sat, 07 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770484433

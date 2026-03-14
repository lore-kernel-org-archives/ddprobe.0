Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE25378800
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773531294; cv=none; b=j865ryOqTJ4uL2gW/OpMQvFrtsXqmdN7vYzLydY96+GWgEeYimAYJo270KUFUwdvxxEFoBX9Jj27MHv4USMPY9Qhmq9ZuwFlabmiZRp9l6TslkyPhccnUKfpJpIeoq47bWxtbgkIythPAhR5VzRas+DcXSz0M0+9dY5co4rCANM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773531294; c=relaxed/simple;
	bh=mN5QQ2erHq/rNMUC9iqXEhI1fv6jhmxEl+FRLgvbsI8=;
	h=To:Subject:From:Message-Id:Date; b=cxOVc8TX6Qo/HSCfC5EJS0aMJk9R/hygGKOaUd3ZAqbtPCOlOlpufS5AX98hdHyUuJ2Wsb+b2n7TZhli1hH4WwqV64B5AqF8ahPeBOIY/9LHw5ryXkyvO9vAHmJTse9x01FvVG9K4Z2ZlWqoXFSQ1UY6IZDKH1EItRCU3H9ifAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCFDfG8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCFDfG8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB5CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773531293;
	bh=mN5QQ2erHq/rNMUC9iqXEhI1fv6jhmxEl+FRLgvbsI8=;
	h=To:Subject:From:Date:From;
	b=UCFDfG8im0OOpvDcKIlUq3miaLalIN8Zxn0UOtan9QaY+1rCixwzcRue5RRTE4NuC
	 Y56HUWvdEQ7mw5AYF7cW43ZTwKmKeEyuFCoi/lwMGzsc4s4O4hEMI2Kgc0HMgMyAr7
	 E4GbVE+bUxERqrspKVDjndsHaSOW8hW4KHzSIpK4ucsDwRhDBezx4pPDyxZZeBwirQ
	 vaq+g+MxRwuYs8rm/T1wRoYs48edrCrXCiGMiyJxYiOPf75sTurJHxRGvcvjjlRdLK
	 zOI3Te/+EHWWsRN9L/QmCvtUTuO/q8nY+0N2FUqfXNZqC1f7XIQMzMRwqNaisAgymI
	 AOwgmbHpDui7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A48910854B5
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353129359.14840.17404342370438402632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dc4307a0dfda9ee1a8443c96f9c7a9b47f0fd5062ec5caa38728cbfba89640
Date: Sat, 14 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773531293

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462952836A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761995; cv=none; b=JzWW/erCDhhOqgFnyp1SQkBQnfUbMh66KzBpQObFPsuc+h/pMbR5ks1reslwYP7O+JnO06ZS0XQTYWwXtiJztCA6VLLJgb91ms2YZjfwDRycPsXurhnmmi70ZQM+kxQiJ06VyCT6f8BhjMDeKBu7MGZ6UTyPVRgf8F5VSPKN404=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761995; c=relaxed/simple;
	bh=bn97pgwueZiDZXb+GdWTxHVelo9SMzlw3tU8nqZIZwU=;
	h=To:Subject:From:Message-Id:Date; b=gzcJYvut5R2LqC9Ij5gUM+457XgFq82VLgfP9QybZHP5M+OaSVhMApErQpf4oGtJaaCyL09qefgwNWH4W+DBleQ8aMItcayWtuGBMK7BEYoDml9HUuBldEZyR5VgGU7gY14BRya+im2JXhdwABGxxVh+wXZsI838k/bZtYiUHTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoBy9eBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoBy9eBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B707AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758761993;
	bh=bn97pgwueZiDZXb+GdWTxHVelo9SMzlw3tU8nqZIZwU=;
	h=To:Subject:From:Date:From;
	b=AoBy9eBkIq3o3hnL5RNqzcFaJvLeCqiBnr44JkQAvA5hCPylDXkU0ImRPOUq6Ruoy
	 usX6TLA9Jd0oBYmsX6NEVEYqH0E8yFIBv40lAbdnaWGKBYUGNYt4a6xOua2w5dCb5M
	 yw8ZBKYwCKn4x7iIzi9IFiWQ26vY2SYFZR5Eqb0NXfZWOLmF3s9oRZ4eBhaS/uqtiE
	 WYkMW4HmYksKfjbo2E8fbu6EYm4hGL4UfuFMkIfJX07WfSDxbx/7D/oDW1BoKq5uZ3
	 iVboQHssY+tKp8fhcpCyNzuoO78HCMvixnfW0/Uwvi25e7c40tkquSYrYZ4LNRGnk8
	 e2xVfKSrYxydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB2CCAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876199362.27794.11139177036860933345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ff2d28f39354be06d63a497a531b5ea620543bfccb3dbc5952a36ea162dc97
Date: Thu, 25 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758761993

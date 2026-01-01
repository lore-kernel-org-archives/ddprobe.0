Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D72245019
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767228834; cv=none; b=E65TCh6mQwjdoZq1PYU1BKoRlem3lKTBwrsyM2+9IzcqVzjD46/C52V0wTfsdLZwlAhEXP6mVB0h89gAsOpea2jKYRW4biylHZcZZ7img5O4XmlrGOe6BXOahrxlzNvfR380nJZnMO/D6DGPtp+tntukam5Stj+sdkG8dUjUJbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767228834; c=relaxed/simple;
	bh=WKA6tjP4xIf95IeA6j7aIk/CpHumu56bWZ7NjNH0xN4=;
	h=To:Subject:From:Message-Id:Date; b=rb/4s5FuNHb518PJUc7sevpKIypkDRIRrTJG9TYrgsQJvnmnA4pyA70Y1Xwb2E1rcvn4k+afC9LuxVYy+g4VW54KAnR0xvKPNT+TgYZo98f5JZjE0wl3omRRr8R6lleFkd20E7pNVk4d3sRjg8H+RnrKnXskPsZLoPpfnnh/qV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyKFoJR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyKFoJR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD90C19423
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767228833;
	bh=WKA6tjP4xIf95IeA6j7aIk/CpHumu56bWZ7NjNH0xN4=;
	h=To:Subject:From:Date:From;
	b=cyKFoJR15xIt3x40FmpqsVCfoNI2PEB84aFaAMU8vj9b7QoXvUBMMJmnA5RsWGDm7
	 MptM7udPWuua9WTnThU6D4BYg3dsxHWl/TZcy37QI20fHH4qCjTlzYaLJM+ikEuBcX
	 6w0rA8C55MPxY4VrnUZ7rFAWgrMIvCEyto3BNlVlE8zZnBzMlwF5Wej9XPEv6jx4am
	 n4PpMxqT75kMq53aSLHoUYCi8wpipU6OazhEPiDSvIVfI4SWvbZSFVuSxYuRMmsJ2N
	 p6/yefpi0j+GfIF4gJXq9j5K2WvghhNOopkc2E+SJ182eFbCze3OJJ4EfGQuHph8t+
	 N7vI0vkUy9rig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC51EEB575
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722883358.32654.7088875918502924569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed320a7e0c3a4556915945fcc38df70acc3fd57de5eb13cb1f19dcbaa99a9383
Date: Thu, 01 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767228833

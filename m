Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF0A32A3FD
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788400834; cv=none; b=XMoX7y3Fc7MQeIPLG7ZT1AO/DqcZDPJRfxMtUIUARTyLyUuEN0niHLgpWpzIFjrvxUCI5UR+3+cPu6LPnyMT5Y+LWyuesE4M4bnNqF1IX5bzFFkdwGPgmJZSIHsTci4/NRpYsr6J77Y4FssYJ+EMyl1hOz/WeEsuI8KHHli/0sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788400834; c=relaxed/simple;
	bh=88uN8gjTJR5n1XgJa5a/+n2qWfrv3zQlZC7+vFhYTwI=;
	h=To:Subject:From:Message-Id:Date; b=DFwnDMMk2aOoSiCP3rv5uxYKy9HOKQ+13tcvzf2dqHM4IBF6hUiQtWgqIPiDmYl9xJBRgsXpI1QCkIBfhM2Gp0vAfrThZz0Mgl/bf+sllTDbH+3TJ1cHvYFVcOKYyIuwjmiKmpDNIwn00eHos5hkraW+QuwNqciSgkdZZSJHC7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnuo4/jJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnuo4/jJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1CFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788400833;
	bh=88uN8gjTJR5n1XgJa5a/+n2qWfrv3zQlZC7+vFhYTwI=;
	h=To:Subject:From:Date:From;
	b=tnuo4/jJi+QDK06N9rx4HJHSFF3nNdDAEKS9K9JYgkRmtpE9FA0XmCfH4eWFHAWjO
	 LXpqoAE7BMt0V6baF8HCgc1E5Df19NPcwgRGCD0uaQf11E8QPwKPJWdh9XgYbjP9VV
	 tAxtgMvb2p0si1E1rc1toelF0RoeqXPnptTA7R5kCf3kPsslzvcAWzkW95YPzaQqJy
	 NmKCgwUBCQCliofDEHg+2dMgtI08AovI/SqvLZPDsDqnS+05vDdGXSLHaV/zUUmt1L
	 sRwzmj6c2bYbUBXuLaxwvRQdUtn9yp/bKe6b8fTc3vMp8NvAF4F7fyE0qeF4HazCTI
	 dNEHW6K+4IxrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F2C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840083369.20047.8380538363209420882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201efa8a8a7d09cff7c18138db4ee2aa7575cfed469ae1909333ce1c87ddd746
Date: Thu, 03 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788400833

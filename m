Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1739F1B86F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721364354; cv=none; b=rci7e/MXbtzAEjM4cqCYSs3a4ZxKQswcIS8n+BtpfusT6Mv8UK0N1c+PTxUSGMpfsbMZZwPWMgahkpXwHaVdplIoxgkZ8o6BUxXR3Ad9mtKapH/TLW0g5dX/JOAGPH6usqBY5lgw4yzSW7K7cE/4Zw3YeB1dSF24MsTk41vOU4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721364354; c=relaxed/simple;
	bh=Y5g1NhSInrmu7zHI4OTejRwmaG6SKvKRS+FcbQXShAk=;
	h=To:Subject:From:Message-Id:Date; b=IdbmaLwEsE+beYDfnOuVdoV3icSycvNyf/8Ufw1GqptKklNO8nrp0BXY4wId1yAL6hMW+1PdFOpLg4xJk9KRst3ieFQ+pAdqAzz8Nn9jc+UTV9wNm5829KStWnEFuC4HsX/Esl3qrDoQ2/Ziop/19hB7knlv8G5F8PaufWsu9Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQTM9xxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQTM9xxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD4C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721364353;
	bh=Y5g1NhSInrmu7zHI4OTejRwmaG6SKvKRS+FcbQXShAk=;
	h=To:Subject:From:Date:From;
	b=vQTM9xxPJMBZConx58SZl+yPMFprTyQUQsjooIG3aQoPyC+F7Oe1J+LMX3zl8eRgu
	 5VuLex8kYoS4o9dOiEFDsdYQ6twK0lNkLXiuoR5qdvz4XgItGw9GazaNLxxhYsQhv0
	 obcqmdVn3VloUjTmFAF5LepyXaU3UFSXvgPEabN4DeZ3xuettIz5kzZTBYEKSoxT9g
	 KyjxjumPNQDVaCtdxZg2UbULYGn8lx2ra3x8R0+NzVIBILVbdePB0bS1M19a6c/AzY
	 f9Fe5rjuXD/2DpBt+2YVk9bgKIQVKfbi59QnX+0Wxxwp/QxE6gr01BMsZZLuZfSKt3
	 HkcmJPdQHtrLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93721C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136435359.23322.16201321114447999050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6a492e9bc09f204875de5b520305b2505988d59a8acbc8b53710033ac77b96
Date: Fri, 19 Jul 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721364353

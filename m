Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02E4A0F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751233194; cv=none; b=rgq4g/WurDu5987B8hg6O9h/9R3nZRLftS4L47zPZd+eUM5hb4QQ7haxa+x9sZbCWeovFkRahw9ciTOhbu0t4lbaxnsP4wMLWUD+B0gJpRgfO7zG0l6YBIFRKU3+dreOF+0xc85k/+CQxxLHLLCNpChvzrV3IoFuAXXR4S3kSzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751233194; c=relaxed/simple;
	bh=8IAJNjbEp6OJJKtGVuK2gLLdfvKs47uMxDea57DFAZ4=;
	h=To:Subject:From:Message-Id:Date; b=jn1d4bQqwjr2yWcgu2ZBO3i3Zpm/jz94v/76UMk1G4WHT+G8Nx3XWILbf6M8f2MMaIbfb1TzfsZXiIudDI+dqxvlPtlcf93QAkL5/uDNl/8IutqipOQSHUMJlBr7LUoLbbiMD6SdJbS0iP7dbyNTmA2pHTXwn/F8Um33VT4crCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsRHm0bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsRHm0bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D14C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751233193;
	bh=8IAJNjbEp6OJJKtGVuK2gLLdfvKs47uMxDea57DFAZ4=;
	h=To:Subject:From:Date:From;
	b=dsRHm0bfWlcnv/wUu4XkCcHMZfby4YrVRngi6YT3oc2kn+uTm8FiGEjoSNVCjd1QS
	 o2XpYOQIC/+L3BDLzDBr60r90LneKJBnSSsNPpuQLwB22xKEu6OTLt9t0WA+V+stEb
	 7akB80p/JJTQh72KuesP8kngXhgqQUO0XYknu2jS4yEd7LqGADO6ctJWEHOK2d18hP
	 KmqVKYWcwSbJ1FZ08X+SISTCOvLgKsnxZi7OwgCzFu40AOEcUIGOAhxWQVtMotYSW9
	 YRrWEnmPMsUT+L/JDiSdo/l5xamFAi2yaMVk5bFCxCYaWHjfvy8aNWv5kaZqXW1PQz
	 rcfU8aM708tLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEDC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123319357.13610.3893637731119015034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490e3a3a908d4cd6d2738145263fe1697aa9d4ee61ec0426b356935944f0ef13
Date: Sun, 29 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751233193

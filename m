Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4F92F1FD5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759405794; cv=none; b=Vm2ZB7W2+dfLnmsT5NXaquDSvJRz7xxG+EJW6mvQ4EdQFXNqG8RsGeVMS1q3pTc8aQ62uhAr3atTXly8CEj5MNz2P11bFjpa6ozE/pcqH3ICLZAqG+g4OHNkLO+sEM9nLCLqZBz01udB3ORJ/H5jIjoi9zgVivic1qrl5rcjlqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759405794; c=relaxed/simple;
	bh=xV+I96Ie8/mzSswetdEDuuMi0XUDZfco9afrXcgP17s=;
	h=To:Subject:From:Message-Id:Date; b=CgiFRuzD5rCj3JeL23s2FOz0Ik8cRtEZt6n5UCKsDNUFsJoUEOrXvq0drSTmtmgFwHmwcmuELxvCSc5mTIlFinhAFcb1Oqwn8E4xx4G3eCAkaiLuvDVzfu3k/KQTU4Tu6tRXsTJHSbRQSfZQZbCpfTQm65c4Lp4ggHUUyCkiWKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+wuVuXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+wuVuXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB5CC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759405793;
	bh=xV+I96Ie8/mzSswetdEDuuMi0XUDZfco9afrXcgP17s=;
	h=To:Subject:From:Date:From;
	b=T+wuVuXVC2FHozqSG88LvSJ3XZ2MAkksS3NS5pU0CQUmfnPRn20l4THUUaO7gADIH
	 qJTIFsS8AsCuNwL9ypZpPYokN1CXxq7kH3MlwQZW7OMxOphzrU9A+FzssnqG9oLvHJ
	 8/DEIavVjGbI8z6lHYl+rDZGNQJ8dssgHMCHBXe1NELvNGIAFv9YyDLbJMISUNmYyR
	 mQr5J6pkUytnu5qQX7YSzlnZT8LgrzBBb/VbaqAzdjaYFAiBb9sjGlBe+c9AS6cEuV
	 B0NQ+YLqeXdJmCSbwS1Mmqhz3NYWIhIQIX3sw6SaFd5KdL4bHoY1gC5B2pA+LzdPxf
	 8f+5LCeM9L7IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD25CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940579358.1484.4960219173438308287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a46966acdd3d3989dada7329628067fd17aa4c20c74eb83781c3ad1778e8f59
Date: Thu, 02 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759405793

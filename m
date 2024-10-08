Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34463192B9C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728383754; cv=none; b=hh3v78lUG+mXAKBPqQil7wTWLMztKUPK9/S8PVciBJwXEBXeEAOPM3Lvo6zEP1YqQvD3nG8Z+sR2BBf9CFN5mvceOncO9YsQAmoFBXmcgi0nS7/t9FyLcYivG423kqP5TqhigGcJMWzEwupRRFBG7RS/nsVqA/ifCyRtpfISPjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728383754; c=relaxed/simple;
	bh=EP6KsI3s1iD93w5QcxV/l/7Kp+tDZghw1pCq1qmJJP0=;
	h=To:Subject:From:Message-Id:Date; b=MjsKu3QsuUl2VvPCR20XRNU5wYIvBJBns9l8N5kSYDFl7KLaqvmA088tTMPM6ivzxztX7NiKyHph9q3vRLFG+ms7Q6VGUH+ojR0goeKecuHq9Sw4rNlvRVgBOWmANyvewWdcHvOfSxNOQpBZQsUegi/wMZBLQIb4wDh1JyvVBZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBwV5dng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBwV5dng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F80C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728383753;
	bh=EP6KsI3s1iD93w5QcxV/l/7Kp+tDZghw1pCq1qmJJP0=;
	h=To:Subject:From:Date:From;
	b=ZBwV5dnghkItiH34ykeAXGCH4y2xHBxnjjFzurJEjTS3s5hA+OjuEu+RE6c6s42mG
	 gYmk5eb13wOYNlsdWbvgfPwqUlnIiFtSFyY7WccfzQPm/JfY48cR72Lefb9uG+2aVC
	 keXSht31Fy6j8mYmlLFbDNMHUhsSOfqr5ONm/2jTl3+BqR+1RteO3ZwqtyvkOgepVf
	 Gm77Yn4F1OLZjVGUllPF0m4bzUUDe73w4Y7m9XcL6Cir7xu2EuQ1sAuzcOsKmWV9wD
	 GDEj0AppYmFohPjSlVGrA0tH+nleqbVz54DwiDqB38K1wgv7qOt1FV8xWzO42nGK8d
	 hF7vJ4s+O1jFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7DCEF148
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838375357.12423.2959867385814091126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97789984e6b56d1ea937d2145c4e5ff09f8b7a91c0b7b7cbb95df4a208b65b37
Date: Tue, 08 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728383753

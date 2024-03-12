Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82AC69944
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710226697; cv=none; b=kUaTTX2dfjXb8RGODunOQbnzgAsZwVIkEy4wnrfrsvGDomIBYemsdg8i0ROgCS96vAwVrbL4u3StafXy9T2dGpCv0pTJDynrX7nL/Qk0IieSmcXkmjVGGAzyIG600dqYyu51q/2SIrXpy7uVjIgwJYKdSWBrfCjESqCO1cx0o54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710226697; c=relaxed/simple;
	bh=lwtZM1z3Dk4ZXOZLmTVexi+ebgGKITzQ5iKVRBrVJNY=;
	h=To:Subject:From:Message-Id:Date; b=uBcp791pL4VSmrzFB3zhBD0/7m2YJLzLkmv0tpkYyIiaVkSZKxtRWx+FkwzT4WrchwcQVf/rm0JLSdktQYxRr/MYXNE1tgqdG+86nyDm9YUDHg0yYuUkkXYaYVemCDvTdLnUtvR2rK2QX+Ed4efh+HdGI1C3724Y16jtnb6ohwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpNSiI0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpNSiI0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75ADAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710226696;
	bh=lwtZM1z3Dk4ZXOZLmTVexi+ebgGKITzQ5iKVRBrVJNY=;
	h=To:Subject:From:Date:From;
	b=jpNSiI0WFxONretaWZRs2lwJEWj2LmKFjdERyX8XdxDlxdQDLrlalamq3j8fbyx2B
	 oRSuxCl3cspHXc2ulyAt+8IW0KdXINZMJYvG8mNl27imvW8SabbMUFXUDQXRisz7Jv
	 TCgCq8WmNX6wjVxOQdtruaIwDSMpNMkvjAGqEA4rFvU6oigGmGtDUutG4CxbVlCxQ7
	 y6tF3Scfpsx4dWNzp93/n2rFJkBkfmwJqY84ujBbhsJdREvcLIqFnhm32r+DEaC++5
	 lBuPkjpBy4SXKw5EghqsTP5627Xk0smkFdfnSQ5KjkLA9XKpMw4ZlcibN02uxECRU1
	 xv9RMn4JgNJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABA1C54E66
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171022669636.30301.5493539876353806014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21da7b83bf1023eb9fd2d5746c7a9dfeca05b51a47228fb849f1a26dc7d9e71c
Date: Tue, 12 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710226696

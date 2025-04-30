Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B311187
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745977194; cv=none; b=F5nNyqAfNW2/TnfgcD3vGr4MGYDwfHAJgOaSyFbh7zDHBuOPYO11lF2FRzWv7S6LRlefXTQNRCbSVMjWLBsyClkt28CsJ70i3AOWwqNbtDQ8g/GDL1KS4Vk5/RU39EuwXwFcBG+DdOpdbvFf1agBrr9919KKiKf6qEEjD1UuyKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745977194; c=relaxed/simple;
	bh=dmRufz0Ix+gMYxPPOAlLAMbAYCQifKXlBNKBLzHVCW0=;
	h=To:Subject:From:Message-Id:Date; b=rSmUlix3dOCvYC+9U43IpUFP32KcnCNOdjGlF/BF547gGbsAI/RmjFqqfmeUSyaJrbHUvJeaQONPYz5JbMe+EEZ7LjAY7XbxghSBkyF0/h6+kxMvdfzry61OtZzcvUGXZ2D2qCN3gO1hEJ/FAVhqBpX1Qcrfr+KiQug/cvjXsD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV/HRths; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV/HRths"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2660C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745977193;
	bh=dmRufz0Ix+gMYxPPOAlLAMbAYCQifKXlBNKBLzHVCW0=;
	h=To:Subject:From:Date:From;
	b=JV/HRthsAet4kJT5GE/ECX1Lv/4YQ9yAicFd+5E8Gp+xOMOpPCl+boddAvyiwNHWp
	 +6S07wtvGZoTh2TUhjoA+j7d9qlvwFGGfSpmeLLHPdpRbAMjNPK7KOx48SoDOfc8Q5
	 gRzViueF8uwGWVjIQhBswtgd/UjsA9enfwWjU8HhaYhTGJjy22fakzSXDe4XOV9whT
	 X2EhAchjntLr9ZyhcoaNM1jax3F6xiOyOZkq9I9b79oTsQEGk6FLSuedk/XgeKbGk7
	 gxE33lMPN1MKjoUpt0NvYuQ8gtkBAGaf4LcIfZYUX4NJY6STTd5y52Tcfxf+QDpdQX
	 XEp4v6uTYDOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD51C3ABAA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597719358.12406.2203754438897963094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9047defc12157bc896174e7dc0ad1bb80e224672d7cf8a17f004f21f68424978
Date: Wed, 30 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745977193

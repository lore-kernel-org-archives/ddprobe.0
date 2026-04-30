Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2070F23AB81
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777537054; cv=none; b=H2823QbVPLHSs8NTURq3//DZMAJcxKmKoholPq7wnOmrSCThnEQ+hHSf9L7NxPlkLzGjz1xzMp4xAQv2vx2rTyoyLoduSZZolO3BBCoh/NzLUlsnvHqWJ28BDExdOHpG47Fw3TtA2O+eIrJvKrNauLlwVJ97yuHp3b6oG5WKNQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777537054; c=relaxed/simple;
	bh=n67rHLi70bpqFBPyqBgv1UV9WNTu+jUtsCqGlK2Ou5Q=;
	h=To:Subject:From:Message-Id:Date; b=idX/OER8DPhIa7PiRkohajye9SF/Drk25r44etKY6qizuLsEUCndzgiqKbJLsfMcze+KtoKvvo4knryMVVf+es63hU1J1K9HuL6X3F2Dj3BR9WBzNq8S45UzaLm6gRqUedY7OAclJZ6Q6FZfJXJ1bcx/vnXfqCg6QCEJqkOeIZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+I5YKAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+I5YKAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C1EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777537053;
	bh=n67rHLi70bpqFBPyqBgv1UV9WNTu+jUtsCqGlK2Ou5Q=;
	h=To:Subject:From:Date:From;
	b=X+I5YKAeuvOWfOmm0tK1MvKK8w38NdSAck68EgVJ2bWhWwo2spLXU95WuNQZOTyyf
	 DGdEavDfvz3b7SXHQr3H9YdDkLCCANF0ow16W9jSbkumUkkJtoL14ZL7p+mit0ZAdq
	 WFLSBEAKlhZoRTdYkj1/xX1vwpAgIDe/9HBWCYz3RHRrGP9YzA8jaLlITpO+KuD6u0
	 NJSljral9PxXxD3Jhoa1rt450sl7fg0Ln5xtkA78rVnXwFEewQiY47pZ8zI+4RqxHU
	 L0pnewM52mHyLH5zrOf7lGudVRdowBuKZHKXTce9DXD/W5G5k0VOXPqnxXIVtlWGYe
	 opAIHt2Pm9IJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8989FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753705368.30161.15319630497828726155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b9f33f9554503addc3c71fb20450cd1de50048929359ab16b78e6fd9f0bc55
Date: Thu, 30 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777537053

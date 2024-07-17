Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5294C41C63
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721238323; cv=none; b=SEseW+BnKmZcnRqElvwXwBG/773wMZYJvp3Y5cdnVPoWYediQhre6dodi94zVTlDwhMlv1IlL7WecrxpjYjSC1Ed9nYi36wdViMzMr3x0MvaGwcpQetxxMj2Z9NwhpvJQYPxYpXkqZrSX5V279wcYNPwuXiz6+cxCRLpwGuMD2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721238323; c=relaxed/simple;
	bh=WQUArap597zCNLRvkpdSw0IfZ33PZtZk9s+s1ktcdWw=;
	h=To:Subject:From:Message-Id:Date; b=lyAKUDHvHeRe2UVLKFJMFgSXywgaWvJV5l3fPy/Ceptw0dvVDDDOjoAQgilUTLyM9WWUFkp1Ho73LgOuuU9ongoKKjFlNzJ5WP1G2BGpu0jHxk3IpGF3rH/gQ2+fqX4BmWWDiL8UfdgFcCLwxqoEjp0imcXos2wj8VFe1j0zkd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iajuCddn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iajuCddn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E5EC32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721238322;
	bh=WQUArap597zCNLRvkpdSw0IfZ33PZtZk9s+s1ktcdWw=;
	h=To:Subject:From:Date:From;
	b=iajuCddnNKB22o0z3yYC8e87Kmi0X+z7ZQT3SO/ibLvebsp00+t/qSJH/BsTJ3KsG
	 2AutQNTCjWnhRh2Dlajqkha8bRG7LQcP8YcctJqjNFaQ4ZOeUDK5PbD4yDdNHIYhXC
	 qk2aV+SUeM6Rfe4VQxIAitIDbkcizCOZtZ8ZgK4qLVjanOtchPLEULC/yaRwCGMnBT
	 6PsqquEbMQmC0Uot9M3xw2vnBL55YxHG18OoUAy0Gjemw6/YyAbKk+zo31IEFH3lZL
	 UD4IxBsu907pDaywgMCCTBzZoIHu8hS7nlpP2ZJH9OpgHHsJUid+MvNuT5lCIRtI9w
	 P1nvxEVlBh6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AE3C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172123832279.32473.7964938173789632199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb12533faeb2f6fa1fc47f991d0461217f7c07a93f4b4c6507664d515cf3e19
Date: Wed, 17 Jul 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721238322

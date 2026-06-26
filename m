Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B001C84A6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782472054; cv=none; b=i8p0b0gntBIXlz58mqPjs6j5b5140Z6cHqKq6du+kPy06AK+PBILip3NLVoWjPmBkMJkCWhAKBdi0JeFPO6HxvPku3V8XZCu/bcetR2IXaf4+8rG74Lb8XRr/arDJkUBC10HHnuRO/3KuVecs813/gRaqRC30sLYHTo4KoBOSGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782472054; c=relaxed/simple;
	bh=JI+dKRKLHLUFntmDiT536SovQGsDkQ/NhbbP7dX2/3I=;
	h=To:Subject:From:Message-Id:Date; b=CpNxWX1B6BHo9SQ3vpqysC0ZW7A+IZ0dSEbju3bH8CGuhdB7NiJ7Plm5W47TbECQhmLJ8NAKaMpkbtdqluTV6tCFBM1cVwj6DcTyuJDNhtcznmpNWe3/Ww29dCDJdb0jFRYpNQHPCthInZ1JziqHL6nWR9Fh3YvB5Wz1vFKOGeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmzHv6WN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmzHv6WN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1739C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782472053;
	bh=JI+dKRKLHLUFntmDiT536SovQGsDkQ/NhbbP7dX2/3I=;
	h=To:Subject:From:Date:From;
	b=MmzHv6WNMYYSoqgzxzrxeLq6bebvI2ywfVpT2BtK0Qxwuy1aJszbyjzz5F9UD+L96
	 E+FjazyJl3X+nWujPOKi/qeyDT65zQXDoKiwp42F53ZxjcAkJvSoSGalbqGnrqbq1K
	 g2gGjH2m4IOwdvoaq37HTU+TLLaoAghz1FQ9nJpW+XzwuoCqA+H142wtfc7LDmI2mO
	 Jhj/4d9abhuB+vXTGkjl1UibJY2AthMdnCOTbBK45Gh5LRmBkE1xE/1L7O/Vh4ccE1
	 8rusXff9O4ZA4AbzfzASJMWp+SKlaJsuTZQtejK3LFSou+bp9ZgLlieAIYCyYKh72a
	 ZOaqmsNh/XyNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC2FCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247205374.21923.18162472257636179574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385211b05c7874e53bf0f92cd6430d06cd6a9555a0f09f474beb519397b94159
Date: Fri, 26 Jun 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782472053

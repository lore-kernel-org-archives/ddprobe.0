Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D8819D880
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718332703; cv=none; b=ILYuV2ujZLq0BE3NmGKbfeNXudr1N2DkUE+yr8LP7IN8KMnIXVAFB3APj01W9NRegZSLB+nugKMminXR+uff0s9pBifzikCxv8tkROdROQlEbOsaMXouXEorSZwQpaVqZXLmj2XDE+CI5zmJ0a7lHbuZ/4LDxPg6oe5KIUCOScA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718332703; c=relaxed/simple;
	bh=NRpWsgEXQxZ7YBMcrQ+6b9D+ZlGj4NxJTfMyiRMgSUM=;
	h=To:Subject:From:Message-Id:Date; b=hxvRc8c7VQJE42AnZAbvHnPqFJUEuH/BZvEy1QsYTlsfZXkST7k2RndBLNxIzX27b01MPzZTy0jkafM29ORO1Toc7IsQzRWnRPFJrSRHyNrsUS9uVLAHWYSS26KmWy/D+2SszzTrCYgxbeHHs1HobugieOoCfy4z88F15vyJ6bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aH7slIaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aH7slIaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE14FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718332702;
	bh=NRpWsgEXQxZ7YBMcrQ+6b9D+ZlGj4NxJTfMyiRMgSUM=;
	h=To:Subject:From:Date:From;
	b=aH7slIaBJYA17Tgc3NLsXA+rAdS8JSK3IYoIAjfxjHMUeUJtaGP2P0qxZxFkd8uUN
	 1bgYWqbVscfrkAdl7MPGYuWef3hfY6vZ3ecX+1uPOPLF82Mj8BSP6m6oaPslPxZEzp
	 6fd+Q1UB7R5MkU6UqaO8j7YN4eLsU6RfZssNJsoZ6i/zGaZ1/8pgo4PmLKeZFLbTad
	 rj0sgngJOGXI/IFV9PTpr+RCUOGoynMd9lzAenn2sddKU9k/hcvd4R75mBD/GbWwKD
	 zx2KTuhkuddoRWUw879iTjOzrBiwfcFDndr/XgupfnotZjWhGcAZ91+j0H1nWHfgHZ
	 CuHDMfYcJqXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8273C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833270278.18972.17185215950611480944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8caf10484c1da7c37514f82319cebad6266cc7fdd718bf6fb090e3a2e335af59
Date: Fri, 14 Jun 2024 02:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718332702

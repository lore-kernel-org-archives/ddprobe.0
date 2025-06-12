Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232951B0F0A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749722394; cv=none; b=c3YbSgCkwuXN0M2bIIThUcmIlm6wwzXx9wC6026QECir6ysTGsa1gNpDxwKGA+1kr8quVqbwlZ+Jtmc5BXbC37FuR7SxekMmJSkU6KSGCC0SxZeBA67AHZjtqmLKO9vKr8+OqyFPOZLKnRPBZLahUQfj2wNfy/wlx/ahohY+kvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749722394; c=relaxed/simple;
	bh=HgNoGsRxPkNgRcKdRUrfV9wJuOJWU8C4oIMp6FyotXk=;
	h=To:Subject:From:Message-Id:Date; b=B4M5HtVNu6QqRc8laR42G61G0D49lkLYyg5DVe80Xyu+UcHMpuCDaxPNrQT03/iGdQoaoJs0bDIPtkUBJKBVxeYMyP73BIu57Dd08ZGi65WhqcpikpGl8NiFIabyYEwkV7U4ZcQLmvm0lawlB3q9Wf1PGBT3FZoc1bnt4CXrR5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvyX/8Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvyX/8Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2186C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749722393;
	bh=HgNoGsRxPkNgRcKdRUrfV9wJuOJWU8C4oIMp6FyotXk=;
	h=To:Subject:From:Date:From;
	b=EvyX/8FaR+9BsA4j2Dy1XNwZiIRPkyeS9GBNr1Vq0JRgIpPuRfJtzKIBOeqG/laHF
	 2P03PA4CTXPIhcIPVy/euaG16S6zfXEx2HKc9B2rJSQ7fbAbYiTMzyUWKxpxDD0ghz
	 0W5GB1qrdslEFbWd0f+rnF6ir49z8bHmreWcfzt044A0/e23t5cmk6JTFiVsB917p1
	 CMS49LoDVcOLJO2pmmL+St9Es1RRK8FSzOaVupMcCEFYnm9G9JBR/wkDH5lKbBEQBC
	 8qnH93XpwzYKSR/PYuRed69++nO4RUQ9q7UIhnCItlbcRRJOLg77rWa2W3OVMdA6xS
	 JYs5Qc9gfnrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41CC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972239357.24216.13131304187123064885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117268daab797dd67f41be59a29762c1a5b4752bc6696c5f44a4576e4b732303
Date: Thu, 12 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749722393

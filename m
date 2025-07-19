Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D384220F48
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752927594; cv=none; b=ngamnt92K/sQQWCNrI3ZqIbrjCzZ04kmedw1BYgzID+2i8ptJmqAfyFiY1lAPWTh+fhymwuymf1A/Trwohct4TBmT21cG+JgiCzqj1V7UN3/hQnLMYiHMidj4ltx9s1Qak9sJGxjEQl/YkKZr5Frn3f3rAqdhUHCUCu3IKtaFek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752927594; c=relaxed/simple;
	bh=T7OwLZWyDIrwJvVv7ElX9UqJH+Jk3nnkOmCImsIb8M4=;
	h=To:Subject:From:Message-Id:Date; b=g9IPL4CXxAYeirm0M6b2J7I77AjCPql0E35PTEBn4gcfcUL12P3tJkrI/lMh64qwdt/z8eck1vD4wSnqpwA+Vk4eE+DySICuaaVORnQ+AwXxjCKmHtHMG3KCfIOM+Ev2tC7qgZBARGn9qMP1z60tiP5cxx/r5UHYRh46OnuIqsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEMujXSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEMujXSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752927593;
	bh=T7OwLZWyDIrwJvVv7ElX9UqJH+Jk3nnkOmCImsIb8M4=;
	h=To:Subject:From:Date:From;
	b=sEMujXSI2lRg/S+Zxt100AiooFpRBrpqLXOJ3W9+K7RIwic6uHEeF0XaAgibXyUQY
	 l8er3LJ0KJ63KW0YujUymPpXtYkKoMMv5tKH4LoKdAaq0srqA48ZGHWmaFmVvn+99O
	 s071tZhw4rk2NH87/X82+VOHACrTdAzLzZdItGGKOznOlTl4uS1laUuhxXJ7Zys6Zv
	 iuBdQhsfDBhULc+ib4HQILQhIaqjQ9cCvrtlZb1NbBFQP2U6durjXXIlA3QiwKeRR3
	 dCTdia/3juC84mO3ep9tjS4PEUesa4PetxazSZtiNOr66/dYS4e8suCoQ8t9LMFb+G
	 89Cm3IdqFhisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C35C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292759357.31180.2127699420230209951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31434fe78c19378064daaa837c8575577e72495011279ee00805bbf42fadf320
Date: Sat, 19 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752927593

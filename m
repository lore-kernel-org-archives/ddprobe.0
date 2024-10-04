Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376DF14036E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728032154; cv=none; b=o5bjvixwnbXNLA+9qIeQhay7hVyGzkcReiufOeevgVuAgnbvKjZ77+WGk9a/nFPZv91BkW4Xe4UgoyFpUEzu5E6Pk41irZPP1q3Xe7u+KGAkujvqxRZp/6brZIBkerNZuMb9+B2eenCqgORV42IKzFQ6NEkEp0ka2bvxCc2kih8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728032154; c=relaxed/simple;
	bh=LtuHCYPISHjRALoCmCNyB37lT+C+bl1ERQcBZ0dkAb8=;
	h=To:Subject:From:Message-Id:Date; b=QpG5nANYzEqpQiNfxU56dZK7Jlyz/KqUjcr4dgnVqsB9+uOtK7hCJ85aNyd6Gq0AlaromGpCVRlj+T3i2t942pGSMlfNBPOhYAvje/JBPZgvAJs8iHrdsrL5k9Z/vw3WsJD+XB8YbSfi7HNhI4Az9Mu1IhclmxVFLtbObgOST8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQK16XjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQK16XjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95F0C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728032153;
	bh=LtuHCYPISHjRALoCmCNyB37lT+C+bl1ERQcBZ0dkAb8=;
	h=To:Subject:From:Date:From;
	b=oQK16XjAD80rBy/gZNH3Lpp3oXKNT8LKZ2zX6pz9qYwpbZtcqaJkD3BJksQFvH8Sg
	 GSq9nmPvQ2RLnmw1nmbJrGkVYT7QbmDcTVcXtNCtpisoRwenLETt5lf2E2za/RQ9fK
	 Uj8+W+pAwx1SyKLP0so0a3yXrZ+nzdoQykcQctggpuS2naBhHfpi018OQmVEFiAdop
	 y8Od2TYmK4KB5dvp7o7gPBE+EsyW3EHiTwl0AkoLm1jgMRbJjO1+TfrNiM+1wWMfIW
	 W2tGvAutJjkRV0oW6tj4PeshtemClGpUBzwWe2dvP5GqCLinj+VxiGRDWIKUyBl7Wf
	 loAD6X3FC0yyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE334CFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803215365.11349.8449073920509294587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ec38bf9ec9977962325425fba867c6cbcbd8fba3584ab374a386fcf62156c5
Date: Fri, 04 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728032153

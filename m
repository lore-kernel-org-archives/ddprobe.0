Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E4A1A9F99
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756864794; cv=none; b=mFpj6s4d/SZfoOlk0bjcTAoT3EeCSi9qLiRPjKUPEV7mOKeTq32ukCe3FrxigJVwTaN7GTr3e6TtfEJiUuEicJSAj0hImQoGDI50Q7/L3IU5PMnvcOJcCgzty20KG93bZxy5HbES7qvf6Fl53MfXelLFnmvjkHbPFPjfNwgpz/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756864794; c=relaxed/simple;
	bh=jDN1HngznWAzrjXG32nnTnp9tJMcfe4N58BPzuhRnYY=;
	h=To:Subject:From:Message-Id:Date; b=UrJ9ed2f2ew9fqcSa7Vhv0HTH8gG7iVEIE+6uLTvehndUn50RFJra8YcNY349O465Gb6TdjXLLMezbFkmyFjMU9xtHTMn3uUKEEiDoqSN28MYZK3fygu/dL6Q9HX7BQoo8oEKbpqs6DqcH67ZQktf3JI3dgePoOxeDsQs0vpXoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz56n3cV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz56n3cV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F589C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756864793;
	bh=jDN1HngznWAzrjXG32nnTnp9tJMcfe4N58BPzuhRnYY=;
	h=To:Subject:From:Date:From;
	b=Sz56n3cVZiLlN3ARYYicSLizaMgNv7b+BaAM73BEy20G13cRN9BFtQxNB/PTJGv1x
	 rVJZZgcjxS7V+0fr/tmpVHDWadxteLlLm37GmZNgi5OXIzC0CEwMfZaTe7qzvehX2S
	 PrsOi0isrTIBOMUExn0+7mi1NZqv/RruC1H2UMZHliNS2FkjGU4PmEdveE8Ruo4v5b
	 YaRP4CEOz75LCF3rgR3BYvmAFRbJmRcPAnsVRiKDAPOe2pz8X5nW0/+yWdWVgHGHIz
	 aJ3UKunFQQKSMkjLwcm0Fc+F00PpuH01DyZf3JpJ4vWe+l0IMo5AikJzJvAlmOmL4N
	 zZbnVzLaHVEjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E39CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686479357.338.4240260043710137974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc1b23385ae602f47855a579e35e21c66b1580f965abcfe69bc5ed14dbb8d8a
Date: Wed, 03 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756864793

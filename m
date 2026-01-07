Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DB234EEFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767797034; cv=none; b=ZtkZiNyAkQP7LnxYiMDsdc6MYqxVXfPq75OWjNPIp+p/d8ELd7eGxiITG031McRr3P6tkasN+JgKelw4sAKou/0k9yqprmR8N8CMdMljIbFPz4dW+b7sYC8w9lvqISnBMJ9qX+QE4WGp1Pj19s6xsJ3JoSuOIkCfhWmeYsaxGzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767797034; c=relaxed/simple;
	bh=0+CFfuvq67ln1Q3SkQhRDDOrTPH3g5C///FGJ4Qa45U=;
	h=To:Subject:From:Message-Id:Date; b=HUS3ARzziYWf542FDtBBnfV8aSAn0Y1X0Y3/XKbULasQG5N+ExsIRjYzahvZdrJ+ZD2efVcKFC3gAy94WIK4pkk4qGODWoR8q77hs13iZHGzioqM4pKUFs3cxDiqIKQ9Jpcxx1Gcg1foZrK2UkD011XGvN/RAGw2Me3Yp8qEKPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vq53kKbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vq53kKbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB78C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767797033;
	bh=0+CFfuvq67ln1Q3SkQhRDDOrTPH3g5C///FGJ4Qa45U=;
	h=To:Subject:From:Date:From;
	b=Vq53kKbhVdx43hTeYgMylRjeoVBY0e+tyOBaDmkwq/ZITk66O/1a+Pb/6aNOBLlO9
	 9pIrfgxXIVcIYFpR0GcrLrRmaLXwJaU1QLxkiMivfKwYsGZA8SfeBzb+0T5OyUjoGf
	 UZL0+WGKoOcCIZSsWjGHizNvTCosLJbbmFPQ13sfI6uKqpe0TKOojwzmaq96u+ojne
	 ePIimDhrrh4Qug1kI9wj9gdwAaB6j2FrhDuTzMAhL7mSSMvnJ0fVDirzc/Qw3uJL/t
	 i++z6zo65lnQNohQpRLRLECOoY54AA+Vyd3bJaXtchx88FZ+7wm1BDYY9lvMt7RaAP
	 SyMg90UUIVfyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EBCFD642
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779703358.17374.11756411997070355334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a52016008a287205259350803fb568d32ca9c7168ea1c94214847bcb660d44
Date: Wed, 07 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767797033

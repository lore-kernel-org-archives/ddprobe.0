Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238DB1DE4C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752730194; cv=none; b=lryIhS0bFPPZwlfKNsQl5qFLv0QPKdqpMHW9nwXD4RI1VfoTLOWqvHmcZMIhcwotwGhhLrbd+7CetA+PaOP6wsOC4CTpgfi1dQywCTRUTGmh3hKKAz8B9LHRqQqLh/wq5QZ+lQ5W9m5Wwk2Au7lkhsfwPe727mME595DAhW//BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752730194; c=relaxed/simple;
	bh=l/lmxrQkVlSVaFh1y7zgBv3TMkzyXixZyIIs8nDKK+g=;
	h=To:Subject:From:Message-Id:Date; b=Lq0IUD0qSfoYVcrP0sPgWG3+gJ4mI93/PSZZ6KLLPsMX/hCzDqMTNJOfJeF7OvAXKDh1oVuqjwiFyQFAbgphThYpvGlcHSjAkhvEH7i+qJvsvB8x7GUKn0b9Xnd8OU63BypWrDjK5ybDs7i/rAHaXf+BLUrrclaMm3rztdqTGz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fT0Ad0tB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fT0Ad0tB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752730193;
	bh=l/lmxrQkVlSVaFh1y7zgBv3TMkzyXixZyIIs8nDKK+g=;
	h=To:Subject:From:Date:From;
	b=fT0Ad0tBZ+BfEKM0OIYK2SKeDUq8SmKUh54a2OegGCM6ndy+EhlIMxOIAlhpjF/HK
	 A7mDsD2HfIna31UHb7pgRbl2SLDU9R6nMV2s9SE7ZUyBH+JZnv+mgEQKXIw9mmYU3n
	 KitLATUqp6oFc2z2ORj6Rt7/43+8vj821wKCYU5s4KTm/iOJraCGbtI1ulT+i01nQx
	 agOf89Ov4J9o86umR8DTbRGcQTCf+0jfy74NenQdeWEzdq70Igfp6kNJvmTID5bT/j
	 L/3gDsJe0Oas/MOLqRmw8en/wu7gZ4Wt6i/F1CRNpObmpniC5LjcksqSxab3/kqiL1
	 KYsclc5t22rZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8EC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273019357.18709.3911440219852794582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c640cd12bf114e72b08f9a834d77dae99b81ee326ccedeaca03213469b86d2
Date: Thu, 17 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752730193

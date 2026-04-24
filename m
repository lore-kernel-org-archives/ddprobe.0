Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13D9388392
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777040854; cv=none; b=gOepDAtplhDHMnX169bXinnmsHT+SSlO55bikYxOguVSZBPSOTarYu4fMzVmH2A1XmAJ3fAb/HVcFc6EidxoSQ6FdGFuLaiNrc4aO+nbOBVUR0jUgZ1PnWNn6T2UZsQjYHjCig0Zc5iEHUGanx3VGrQArQBYFqWSMI5d/WKbPmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777040854; c=relaxed/simple;
	bh=CS1+fFTh7Qrw8T2KOdng0aou8tQHFIsHEGpHX8HEo/0=;
	h=To:Subject:From:Message-Id:Date; b=Kmt2GlG9xhN0nr6k5arazsN9kKteuMgKhtk46JQGjoMr7OP27LVSiK419+9Oudbo2wadnXrEHF8dhiWD/lo/qlXKACWWc/KeTK0trADtLlrtg1Bfkr3wORVu0cdwGGTP56rOvutH9OVxRMFQDW4gaB8nIFH/AJp1ZRB393ArdHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSq8Sk3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSq8Sk3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEE2C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777040853;
	bh=CS1+fFTh7Qrw8T2KOdng0aou8tQHFIsHEGpHX8HEo/0=;
	h=To:Subject:From:Date:From;
	b=WSq8Sk3FoaOCOih7fRYZig2UzDJpgxL8D+R2GSo3RCQgPYMo0jm4rCG8weFDX0MO6
	 u5s8R3Mw8oxIq2+GxODPI7roWpiALJHZmmNRyPjEkdr05wOoa4+W960cmqzdTCkPRE
	 KmaP8qu9tTl4GIjh9IkXlmrDDsQalXkZuYxo061B2MbEvMdaW32tKzLknaUSulovtJ
	 IwWojA+iXkqnKIMkoDS1GuB8Cz7kEWBGOHTMSqMTiChtvZvz92+2Y5Su6Ikg1sI8Vp
	 VOl42DPKSdxSd5wPAkq7qzuxQj1uZVybQGqqREK7U0WjNggsbrEHyt9Tz/NMfgp040
	 KJ8jQJ8ikiBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F87FED3CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704085368.15440.101614739906267815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d96cb8251bb4be5d8cece26ce124eca0676f8fe11c10ba3f3848c63c8d9c2b5
Date: Fri, 24 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777040853

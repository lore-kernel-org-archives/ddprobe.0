Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538D2148319
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714723343; cv=none; b=pSgNYLadZhH98TF1o1bcdp83Jh5CGoUBS7fkLxJGLw+jhSgetqtiPkm35L2ib/fh8IWrGuQhM3Ig+9oFM2PhXMABMOCkI9u/PimlGQ9jvZXahT9Gz+sQ52i4uc+ahrnx22WN+JLTeewvX07kU/Vmp8Z9QLw8AnSo/04N1+4nqNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714723343; c=relaxed/simple;
	bh=ZaC0CohQhI2BFPzpAuPf8235F5Kg7ulsOmcR3X9ulho=;
	h=To:Subject:From:Message-Id:Date; b=mTgMOPka9XT2xsyGVEv4UypRd/1xgZp7886wKyNLDjdTILR5so4yEBfy87WgTFe14Rg04UDDcfyL5seToLJO5u3prQ1ScBqt+onSanyQNf0+V/3LSrqzhG8T9XhLMY+I/MVzpNH8osPCiHfXBVFzW/F71lmeaWU1lE84m5MyJBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGlzg+Sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGlzg+Sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61E1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714723342;
	bh=ZaC0CohQhI2BFPzpAuPf8235F5Kg7ulsOmcR3X9ulho=;
	h=To:Subject:From:Date:From;
	b=GGlzg+SppjvBlKWyyk2F/P58WySi7WBVjhaqoQCCKEqgQ15SHoF2yG6eZoJ4b3X98
	 Kezxoi8DZCq6sup1WhGWA7mGAKc+GPElicspdnmfrO4e6zalLmxBs0u8p3lzUVyj6x
	 +8OCLLRAf2iG2Q1t6uVUufjJ4zmdDyEM7UM28uvf7UyRQa8/x312GsL7CpxQxz7HoD
	 LnvvBS09ZKlByQ8Z9ys/6gtFAg9/VizS9SvzZOLyfW8hJKNV9NwJ/Iu/yTK/uxoURg
	 OOHq5uArUuyb1gFI7UteYSgPde9CWW/+b+OVDRMN+Ui22uUCVfEF1EMx5RuRBR3zRc
	 IhPlwNIfP05ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6482C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472334280.2538.13444941021189254796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1741210811fff25c8fe73c62b5d2f5290b47edc5eee49258737a0db314c3a3b
Date: Fri, 03 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714723342

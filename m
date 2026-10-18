Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A4B3955E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792297234; cv=none; b=F/sAWqL41xX8rTr9VpwErT/YYK2M+yKdkoOyTu41toycQofZ/pivexPE3n+SvKG2lm6590kxr6ODTl62fgNdyvag4TUOq9+g4Iuuib2IgaorIXEMdliaO/RPQtqnpd10sDZGwacU3i23HUSvfpNFmHSpCpKW7YQInVjFCQLKD0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792297234; c=relaxed/simple;
	bh=VCjYhEZE2/6U277+zikTDkezELATuMHsrTFjOag4k18=;
	h=To:Subject:From:Message-Id:Date; b=hCfWrTP3g69PKR+5UlFBfUEAocyurd1FyeRPr8EwAP0bsOdBEfqSfjmCy4gPFYoEWr0ljxiuXZY1WKLmsDZNO0tvKOzDOHFF+Bo00QIH9I0UauKRs5+gS6hnZ1nXgMJTfaxUXt7YCGxpTeFoHLTd8GbLzkLClWcSTT4EhTPxdC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2046RVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2046RVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00617C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792297234;
	bh=VCjYhEZE2/6U277+zikTDkezELATuMHsrTFjOag4k18=;
	h=To:Subject:From:Date:From;
	b=F2046RVC5xzio7emzq9TiM6j6ihSRDQ5Dwi6QhyCnzdCeoIQtkQmb9P1WMevgEgZj
	 x3Dyqb3Cu64/cCbbvTEBDiU4fMYjpykDNrudjMCjWbdn6oABUpzkHhGxigNw842lb7
	 Y4OiT2IBk1fGHorY5NbCwhFikJtofJfWfk82kAKEBgAPjMM6X/RxVjbAX1f0IOXKPU
	 EkKfyYV7wWBWBsmb+7ObxnIz5+7vtXs4lchzZynkUA/FBgcpl30S/9uMUY9zxKfX4/
	 xZNC2jjucDnLuJBQfoppHYOYuUr/8h36A7TpAuviXVRXFG6TC7a7Yr5QwQjfEG5552
	 dRoOTw2Lh/46A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8CFCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229723380.1913.5149037932666147566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6b0d0e7b6f71c2109c0dd25b83d9efb697609e4294f8d756ca070488034c3c
Date: Sun, 18 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792297233

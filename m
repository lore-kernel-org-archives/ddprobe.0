Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957D368974
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783468714; cv=none; b=GFJr/lpIJyEfP+36WYW6F1c3JmFPphKINWNvWsA0ijeCMweyxD5diN+veTSz1nfN59YlbptuB1FhPT5yxO+4oW6AFXB6x2tscCCD68ubrk7asRyiI/ZndcaWZWNONCdf4stoBTCNv0sJaA0A2hijkNUZ4VrtqhJUkCBakKdyZo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783468714; c=relaxed/simple;
	bh=3BzTYzUxZHUXxE1YxzxyaStKVFFaevNKbt+DaEX9yc4=;
	h=To:Subject:From:Message-Id:Date; b=gquGc7/DQfn9E7hfYa+tCR4PWUMjVbEdniNk6J7MFM2IhTcGDgP/9z6lIxN+PWe16MrOc22JnCvZ6CS1HxPoNsMPSIwpz33cmuavFJTJQcyNHsuoG4bXZHT+BVUDB0OxRQGtzm6fWq2SoBgIJ9o/b/B7CZxfNI3KAKr5ANeP/c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3JyhTCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3JyhTCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC386C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783468713;
	bh=3BzTYzUxZHUXxE1YxzxyaStKVFFaevNKbt+DaEX9yc4=;
	h=To:Subject:From:Date:From;
	b=F3JyhTCh9Oo6TR1kL1zSmD+gq5sHG24jZ92+YL501T6kwdsb86L4VDTU6HxluPeYT
	 qH6kdWn39OdaGJ+8Cm7csqnT/H9cs4SkLAsCGA7Ehcxb0Zsq0WCvwuP2BffZK1laz1
	 toPNtD+7oZ+UHjfigE1beMiRKISoaQ3G/PQw+meLGkJbV/Y9kwAILtR8ctptgaY1C6
	 8qj6i3PMWageU91P3VaOt4NV2rg6DRlDOU0EH+SJgOwwm8WzY9ifDaKnEemRm8C7zE
	 2NvBFE1pxNWc008iN0rbd+ochEJojLOxHEX0kQn08zZb+hHI/V4A5tqnjiC9puRzJE
	 2ZNnwun5jrRbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA492C43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346871369.25986.14587533442305433873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e38220d48440a78b549bd7427fad59a454f226e22901a4a1dd0a06a2baa9227
Date: Tue, 07 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783468713

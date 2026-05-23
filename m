Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F4125B093
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779542554; cv=none; b=SLEYzEZku5zE2UWPpySlo7swW/DM53sz8wLktQrehXziNI5nhVVW979eKgijp8V7jWuLd3kllXQHAiGnR5eyF5lw9swqMbFZKNel0T2PUtUP9AMSve700QaNqoas1W59ZnNeNY4wkyvTlL1Y3PU863v5r8gZYPB5RmGhg1Tckvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779542554; c=relaxed/simple;
	bh=c0uoOQHkJAETpd3HIjBmhHrr0AIAeaQSFEuio0IkbTk=;
	h=To:Subject:From:Message-Id:Date; b=JSZA3b/yKhqKBjv4tKnrB2FhpIZK/DqEDUIECJhhdSYDZvazFflVO1Dr1wM9uP3lQHMgFkfxbNBwm78zUIKToHk6tSr5H3p/vJQyU+ZAd/matst+h9uXkxKi0GLPHz7A/Jeo2snWBz4tLvk9KAt/UJxx0Udt6poCp5lX7iW7Mok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f62AtklQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f62AtklQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF808C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779542553;
	bh=c0uoOQHkJAETpd3HIjBmhHrr0AIAeaQSFEuio0IkbTk=;
	h=To:Subject:From:Date:From;
	b=f62AtklQQdx5M58Q27euXUqefKOR7AS7WR15bWUUQKJhrbN1e7Bvr/CNcS7WRHr10
	 k91TyQZu3ZWpIrKjF7cJCBZqZrDHIPEjlRvtnjj3Deq3+QFeQreNu1tEzaWwPdFiC4
	 WhhbybxjDT7yk2PF2KrM5xNCPphqQcr2mqANdzhUK3KR7Jd/SUnSh4QF2hHHjN8ER3
	 TgLVgrI7N0OKkovF8N5LKZlSyhChnG/EJSpOushhspnibNdUchpDsxF66L1+mMkS/V
	 ZVzNVj44oIm4DuznEyroPNWmVqA6m79iJSNQpxIaYnnFJZBofAgfeZ+0okv2ai5+aO
	 AjNvecEJZFAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87C6CD5BBF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954255368.18190.6498802758353841174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c024f10cc12b28bf79d0540456e9d263e30aedc5ff237b7b37d54145f1172f
Date: Sat, 23 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779542553

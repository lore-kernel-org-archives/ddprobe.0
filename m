Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD773B0AE8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782135994; cv=none; b=Sga+mzcU5lXupzXgpM7xzhH6jurzgw+qs/UkqXFqhnmuJ++mmadPYOmn44hNCk/wW5cXmCPX6rLK7TOQPdHV8WKj5d1I1hX9LSlfQk3r6nCSYmslIPT7OqSx/fgiXVH0eN6c6+CKG6MTTG+uuenkcPdyIwa8JpZO6QRVOm6g1T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782135994; c=relaxed/simple;
	bh=V+osd1h/GDZ2M+XMXVPBy5MVqYCcO7a/i42Mm8jJnIs=;
	h=To:Subject:From:Message-Id:Date; b=LJSC1KWRuc+6JGrH7XNbnAo1aTYDXvUaEMJlediYiYeCVZUfvYwzqWjJemsAwGHf7C//Mz98eKeeIF1SdeGnIfaZ+VBGo64g+gYcRdJeeuYn1XzGIQbVzyk/c2fX2z467MprykCcojXMxpCGRVbrjVoELnGvo+SMt1HOhHVMppA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcSxurkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcSxurkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67C4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782135993;
	bh=V+osd1h/GDZ2M+XMXVPBy5MVqYCcO7a/i42Mm8jJnIs=;
	h=To:Subject:From:Date:From;
	b=TcSxurkMCWUAo2ax3udmLAEc1NbnUELlagOm2KuUGzaVvjWd7dUCh8lfAdnEKj2kv
	 u4W6lFi0pZT35ZXSDPbqPDElgIvMh6My/VKWwHCPE/R+QjmNeSeBLtk9hrZ9/nVGxH
	 WVOBbNE7jhA0ACYmew/DP6I21HxHnAabtqGrjZAxIY6pgifgpSZCsUNO4VaFQ3MMKy
	 gs9j5atynuCPAqlxw+cJwtSssLT09wZzCWmdizBg3AXd3qo0E/xczzMlTuZRdZ/vPL
	 DrRSE6PIrDvntWMtamm0+J+0zyL0EGYIeSVqAwYssTwViBwTxNyfW1zHWOpdI5nTQA
	 30yriDpi8OvDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE35FCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213599376.28329.5841079014844831045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d628c817fa9c39f23df0271eaed1d6bc93b9224c9174fb2c3ac75e825921faa0
Date: Mon, 22 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782135993

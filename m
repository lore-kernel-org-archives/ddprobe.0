Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BA21DE3CB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754143194; cv=none; b=Znt76SuTXlJrKyxE98r1FYRLqUDguYzPt2vSGTpj0fEdho5ZFJJYEJSm6/OgkWxJJFLdhVciTsmQZw3/vxzwBIucR1GdLBGAbESFZyui0O2rQ78PU3tAn/uImxPChcIock1Sa09p9vzDyhXWNofKs8nUyJsCD2+k9xeCggZAEH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754143194; c=relaxed/simple;
	bh=Ne/jGdZRNkRVG8dnJUEmshPHpsc1mEvFfwaOHDHqerE=;
	h=To:Subject:From:Message-Id:Date; b=GdVLxqeCvl8/eX1MK90G1bPfHGI9GGgcjJX8qDlZ+8+n9LjhSsxErFjuLB1Lv+y2QqT0Zu7VIqQfcEb7lv1I9K5WL1EdkyUmRcKcNP7u3O1pKMuk2UaviO7PCK9Dov1TXKoArASRFlBZl0Hm5OPKM0RDcAuN3imxSH5aB8cK1Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfpCBcgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfpCBcgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0769C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754143193;
	bh=Ne/jGdZRNkRVG8dnJUEmshPHpsc1mEvFfwaOHDHqerE=;
	h=To:Subject:From:Date:From;
	b=dfpCBcgMmy5Xf5WIwwsgRZtlF1O7OS9cH02Pr70xYTvSg1m8ZHUSyWJp1MX3uOcFq
	 K6ZDZaeR8hqp+oUFBILL6uXyQUYILa0lEQnBe8X4bmaSNXLxoIepQu4LDT04QLuv+G
	 J+aultIe1qwcxvBmo4KqAQA2fay1uiuvONOln8yP/UWhcPDUCitoMIJTf0zlLcJuhL
	 RE/KWfOMX92Bj+Ru2xQgibzMfQ7QHap7pTk4HCDEAVxgFNOiR78u9/DVvWVzUnXC5o
	 kbaws0Bb6c7iW7WuuU+3yrQ2RB3W5N3b66wKczzbl0GFU10uhX1DXA9NP57qGI8u3R
	 bPeb1FZjBzdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE5C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414319357.28270.8217125001194702040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea00a2ec137a9967f39aaaa32973050b17e1659ce8e611b215c4758cc309d2f
Date: Sat, 02 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754143193

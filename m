Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B58471262
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786016436; cv=none; b=dr813zrUh+45M/O4Coe6qE0eB7ag7YlP41UEEjy/wmAwwVznQirLhgT5SRuuOONV7BRn2z8FnMOGaCRhCFKpI80Ng7DSWvHzMg1m27kqZfIq/lQ+5VdvVtK65ulvaZhDjwrAq7DBPbquGn91uC1AkU52DHjTb0VcsjyvSO+b6QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786016436; c=relaxed/simple;
	bh=jF9l8WeoxkbzWqFOCtRTvvJw1qWdow1q7pZ+xCPJqRE=;
	h=To:Subject:From:Message-Id:Date; b=MISOILfCvReYkK/875Ifpyk9ZPEhO9LLn2u/se9v2/hOX9KrZ2tPWH2Xo3nj9QER/vkEMKeUzWUUDyaptK6zzNd8Fok7+XWYUR8eNzPHTwNrHTJw5lBecpOq1nkX+z4chsS1TdzSniYHMRpAjOR1LSLdLd+exaz7MWjcgg94Pks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqZ3QmCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqZ3QmCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E1EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786016433;
	bh=jF9l8WeoxkbzWqFOCtRTvvJw1qWdow1q7pZ+xCPJqRE=;
	h=To:Subject:From:Date:From;
	b=bqZ3QmCh9zUJ/pvxsVtjbzH9GrTUimxMOl8qsmNCLCxgVYB+TJZyGsLMCcGWfx4TC
	 sV68DcBxvfy1aUc3JEf2UuI4yWkXP8NmOaErb28jQCWuLiRbbSdL16w7XovH+21j84
	 R7BMspyr/zADl8EbOeDcrkSlqi4pABx+ahR3N+qPJTYSQrJBYdK/6rVp0r3LaJ3ca1
	 s4W8UbhubHUHC1L+qG8b2sgcMHgQi7e4rVao6MxGFzlB8IQwGJj3b7N+kKfADUAbE/
	 JeXrnqNb/JBpm72/GFEDIOAbjFT+/DCi71Hpe5M7KABseLVykYLUwktPi7ngPjb/wv
	 eRcS9nQAiLM5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD395C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601643369.30802.5567039966565803493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12483b53ccd4882e3cc5127696ff88d9a9a8f842232c865f683ba97a0bec71c5
Date: Thu, 06 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786016433

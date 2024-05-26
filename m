Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD1F7F9
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716690263; cv=none; b=AAHj9xJ4ZYgk8J/Zf/wtfwbyBYTyGf7RTnR20DxuQdOj9UNSmDzz8O5RwDOynaDh7Du6AynCuc8+Ucy0oiZ8q09JiDRGBJELUsqTAe0kEKAIo0PUkUeK0tEPmOH6vY6SaXtAjtAGqhENUrPn8NPhT7vTOUmlz0IVknKdG/0vsGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716690263; c=relaxed/simple;
	bh=k+IfpGvA8ZWEorq0a7qwZcrVZSfuEFtBlXZ/AthnCyc=;
	h=To:Subject:From:Message-Id:Date; b=fdRk2Tap9ypBecFcErFwalNZyXywjjWdweOe5sInmo3rkh1sBB6CRXYQfdOGiCKNGweHewyCnA/SPrSXLVlOHZktIZseks5/4HJDIyBjHs9fx4XRuxDpcrcqbCSG3rkMIn72LFftxSZD6erVNgmQ4FA+BztU0sYow/CVssx3Ye0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnqWPiUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnqWPiUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76EFC2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716690262;
	bh=k+IfpGvA8ZWEorq0a7qwZcrVZSfuEFtBlXZ/AthnCyc=;
	h=To:Subject:From:Date:From;
	b=FnqWPiUBMmLrB6WLQKFnWDR/QCfI6ocOH0D/VDe6S1yAiMigYwdRPtpEl/VDrok9L
	 GRjQo27zXVsoAZvD4Az1AiED+ozlkDFK4UyACJcPVB0PHqOT+j/R2DvsV/pxr2IAJY
	 Q4GtGqbI1M6zmRX0E/F8s2NymeIGjbn1TNpxaGTnDmx8pS/16Wge54ILPzd+xc+Ade
	 Mu64bBcbJ3M/9qV7kxFLE1nyHk17BlwKLp0LMbcftTIVFDJjzAVSJdo7JglFvfgDt4
	 JgkbVx9h++DuX9lVsI6aFcPkD7j+KjGL8TnGogqm5JgtnJNDu+FpTd7XfrlTNyjWc3
	 5JLhp9eBBVNwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6FBC25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669026277.22267.12036770858352201511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b895372075d622dc27dce15c08c2d3dc0c3f52baeecaa10da02288ae99efb31
Date: Sun, 26 May 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716690262

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F075221FB6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767915235; cv=none; b=maeBAS88QgLnvDZqcvS1WYAtZWwpeWT4X3ZIH18HAXgQ7s1JbTVSFhNjlPQ1jyQntlozX9AA0v4Rl75D2YlYQKiFk4ZWj9Oly0nVnHQiVcjaBfyTmNEE5ivWiHnJJchSYWb31AdO5Znwy3iwRIeu9uadxLHZ29vnuBVF1cVuL0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767915235; c=relaxed/simple;
	bh=AH0H3OjXV0xz+OJ9eUE2LMcTt9rrlTobkyoxArCT5mo=;
	h=To:Subject:From:Message-Id:Date; b=RC594+G30paJdlFelmSyOA4jEW5YrQ5Dg+ENVfYskYm5/gpr66Ccl0iDWf5C+Sdr1HXAxIpZgEs9z65LWNJtU21QeVCj9fFteos1bWBo32wXynfiQN1uONwj4BEshYs3omY7sr+XlZMamxK5ACmNL0LcbFSxnbCH9jaZGSp3NrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGaY2FZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGaY2FZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A679DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767915234;
	bh=AH0H3OjXV0xz+OJ9eUE2LMcTt9rrlTobkyoxArCT5mo=;
	h=To:Subject:From:Date:From;
	b=KGaY2FZMMymDYC32yqKxI5xh3HRVchN3Zez7G6CZOu67FKQUQL0bLBw5bPjPRqCFq
	 B/d7dU93wC98OlLtYLyY4z1eS90Spbeqm3tygw2wAD6MSigliKdlQ/FsW69BEO913A
	 r6dCmzjNb4LK7dLCqww73MWIp6XCsGg5B4p8iopW3qwbneQxcfz+HTCKNbkJJLij5A
	 r4sdq7ORI+sSdhRRn3I135swtN8p60b457hwK3iSRqj2syOJMf0xzFbE5ktNkJ+CKT
	 4nhFQOU2qCnCk6e5aj7SRWVsXpN80fRvE9/ELtrCGSyRtl4kJT0CRHMZ/bC77+VSQU
	 SWPgllNyqL5vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E16D232C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791523357.32552.8475938034797849069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43222d4931bb0aec2910827db8923fd3fb98da43557fda8a9e9e1991919381b7
Date: Thu, 08 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767915233

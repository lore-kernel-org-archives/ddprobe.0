Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2243172616
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753034394; cv=none; b=YUOqR+10T9D33YaxBBY3E1Akje3Tm29UkD680w3i4tzw9eKLQDWOJ2hUlZ+ziX9B49M5VxSOzL3mm03/dfvR9LypSNVJtss4zlIk3iUzUjKgIBhWFk4hol0z8iHFkgY0uPrtmWiTD6CdfVkWghBf7SU7UtWYjvc1aqVFr+0C56A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753034394; c=relaxed/simple;
	bh=nttNSfwOsuL2FFauDbK2LLTyusYET4/o3h4l4iFhVjU=;
	h=To:Subject:From:Message-Id:Date; b=SWXlboM52XNsEWzlNqeBU2WtVSIM85ETekWQ/6oxWUpdeYylPtYZta8N5y/z+uOsI7UjLI/wn979wJ3Ziee6OsRVU/Fooj7oH8d+hhHYA2fOUEAzxbdGGLJgAYNlyY3RkFy4IRe1yzmej3uFyDJJgb+qZ6kARjb2FoKmYrac8cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jG87+LCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jG87+LCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4191C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753034393;
	bh=nttNSfwOsuL2FFauDbK2LLTyusYET4/o3h4l4iFhVjU=;
	h=To:Subject:From:Date:From;
	b=jG87+LCDJlyXZP0xYxlyWSyg80ZGfLx6dSlMXh3YAZXQD9J9lKkdAfPt8qqlnYegT
	 VEmXNIsMeaiFswAo3m7t8wLvldFOdTBkdTlFvNrgK9p/4+igvFiG+6CLd5NQ083du3
	 /rOFV8pHSEf3NskbZ9QCKqd5CayUEQsPmk+KaTGb+mtHRk/16CQxwY1RFrNCmFWdHe
	 WeFw3y1nZsC88ihl1CGn+4sQZjVpH5cMKMU1hPcHu+IrhVXMXvYl9L67K9QyPQiLEr
	 HbapzQPWzb4H2z9LToUQCU4DatBKbOT6Ie5oZSHqy+iV+9kk3Fx0tcu/bXP8f/0yS9
	 0wL21ADpkoIiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA8C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303439357.11261.15605466785546097620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bced7c776f338e0500c0baa86c7689bf54943c8c2fa6e70de78525e8bed95d66
Date: Sun, 20 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753034393

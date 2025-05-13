Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249FAA93D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747123794; cv=none; b=K58zDwHIObdjgL7YfwKaDolGkjHl+qH9oSMcUc4MfqAabzlPkwZvjJgIi8OXVXAwMmP0xXChejSIUEntEMvF+PUsORfdPbEZXB63v9lKVgwCzSQKWw9/Z7mw2apEOIPO0AbIyRQdAzxWuD2NL+rvb2fA65wX8/p3+/bDsFD56xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747123794; c=relaxed/simple;
	bh=xMpqTkcp0rjY6rwqgtS1CVaD0E0LLRdMbCreVK9XBGc=;
	h=To:Subject:From:Message-Id:Date; b=VntitfsQdSZ9EL7eIPx6J9v1cJVczfbHzbaC7pyy5RDjnEO45T3DxI1t+yjJd+n2lH7RB/X/05pgd+ZKWQ+jJbpVVy7l/1z69t/6ScsQyTHXGFZuI9GMCMu9JjbOiY3gwTRW7/dcXJxFWaDGU0MQ1gYdyL2pqw6ECbrVgdRzkks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3eZUxJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3eZUxJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA69C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747123793;
	bh=xMpqTkcp0rjY6rwqgtS1CVaD0E0LLRdMbCreVK9XBGc=;
	h=To:Subject:From:Date:From;
	b=O3eZUxJFccLwO1KZ2Hi5HuuUZtki4bhnsCbSPhnVDALvTrwsIryQeQ3rV4UipSPE4
	 /8hAhTduzXtLGePDL3nN4VQzKBi4jspTdLH8v8gQTmJBaa7shlhGXHOqH/m65Zws98
	 ObmT/gHK4Jvwg099JlapCINMARVZxugpXEcXmrtBNxNlUk0hgDX+JBDBGfFdE6T1lb
	 HFIKcUnpHsR4BBaNDxACFe/E3UmtUdoU5LcULW7KwsIKFoh6mBknCAZo4Ut8FjOroR
	 J6b4jHSnJFusYvClzHrHJeou7idEPUIdebh94kDrPpRo2lS57aAwwv8zusP2SRXvFc
	 Y1k3DuBPwXtiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBADC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712379357.29905.742270716180671380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71997a6461230017eb887051edd928b9ad55c77e52b04c30f79ba323cb69b191
Date: Tue, 13 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747123793

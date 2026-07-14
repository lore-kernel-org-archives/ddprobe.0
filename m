Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476B947D94F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784045314; cv=none; b=KkGfn1qq2jW4lt07KaYGdFo/Zd4pH07Y7Fr3k91zWu4+77RMBi1WFTpQGQBh+bVwjhyjAQ5+qBb/z4yZvn/iBdB+gm6MqFN8fAi11kyeH7z6D6dmfjdESULKnJCIPCyY/XwLPnCrEo8o1MYSBQ0S5XMb8GFkXgW5Xl0VKDlZcJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784045314; c=relaxed/simple;
	bh=dKj65pkX36q/espGKRkqQ2b1OREWfTj1qc6+g2q/+nQ=;
	h=To:Subject:From:Message-Id:Date; b=gXZQagYz25Ntme2IbAOY6rCWNyFKwlNkLR5Bcp02C31W0JdXtiObIpM/8oa8gFaBwAD5eJW928uJka0l6KyKgATns4itYcgLst3+dXhz1wvr46eT1zg0Mb02XKBAqyxOnP1WVW43JA+U0ujjPR9QkmNS6S47o9iiMRJ7qd/kMdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BE9upFJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BE9upFJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2376C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784045313;
	bh=dKj65pkX36q/espGKRkqQ2b1OREWfTj1qc6+g2q/+nQ=;
	h=To:Subject:From:Date:From;
	b=BE9upFJ4s+2T3VLU2IoqvDc/ZDhGaaIheCjuRDD0Kh97sfxq6bj+LKZnPIXhEZmTx
	 1LdqJsm4YbXbyH8Bk+2c35S5JV5GwmO3LfteUUjlo8Z4FQjAkG450Nxg2stezDpDGj
	 Ld3VdQ+kA1KOjHarYy1lzfPtV4ctPyUT+vQSAeJX0xJtP1GTSpR8yL4KREKQftZKWX
	 ber/jDOeWK43u4+vo4ssA7xHPc1hGXL3cU9qvoVu4mzDICKGXuJXqViyZcfx/dQGCB
	 KD8sS40V7PyjuGPjXJE/kULztWGPY+yujfNxJBkaeuLVAQV9plIGscJwvrSAdtylKi
	 OsV2RtL4pVgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6500C44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404531373.23666.3353409165237251045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6d3d05307245007cff8dc0fd45fe4d8d13b9ee12bbbd66eea4b96222ffa208
Date: Tue, 14 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784045313

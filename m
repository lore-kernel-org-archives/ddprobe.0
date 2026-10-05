Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF7476683
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791193834; cv=none; b=Hz8r73BQT9Hp4SvhG7hzOcMCnm0OH02qocDDpslK8GhkiXmSL6Z36+5R+pUTxeSB/X/yXjdBeBYFHB82W961KAu+2zOLh7xCPeDsDpf5mhVEJVHAb5wKQTMZcs15eyYjUEprqLRrB9Gg1XRPE+rWqbXGUg5fTV/FdQvsPsNWmZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791193834; c=relaxed/simple;
	bh=MUxsXas8c2pDo/eM1k2EPGZ6VyJYZHUop20SSJdyQSY=;
	h=To:Subject:From:Message-Id:Date; b=dKIS0mWl8nxtYU0E5Vn8jQiq4GRybVHBVaarH5OnWK8Zxr0Txab3VjKXFbbucfNodMCw3NCPYNO1vrx3rfcQNjbBThSxyvwFqhc1PWvG67KS3x8bYX0cE9BKn+If0OhQnKQD/vKvtvaMUBXYRpMYSZqbG+UbpKl+IOZkLDpUP0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw8gBPwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw8gBPwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF096C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791193833;
	bh=MUxsXas8c2pDo/eM1k2EPGZ6VyJYZHUop20SSJdyQSY=;
	h=To:Subject:From:Date:From;
	b=jw8gBPweUBPkZqcM4/+SBKYhRQdgY3CLX+0mObeBrKlQkdxqxGzoIG33BXzfvzalB
	 HzNi1K5YpkWNZMXhiSm/ANgDuWY6mmr1P4WhL4vH/L5XDjlAiQTvHp987FZ9KaePVM
	 Zzrwoitd/vxVSYKvtCT0g9DuoB83R3/Ih2Qalnl+6q6V5MzInNVpzbcdE8aJkndGOZ
	 8Zn+uhvQKw4tPjLUZAnDpuMBmugJ2AY843Vd5ZwrgsHweEu2Yej7w8BQQCI9356e4e
	 dPreUk7AfDvuh5Z4mBE9ZfccF27m/1POS46hDU+w0m91S7gKDcT90+aqryqfKMQb6a
	 cq8+hnBKwhd4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE32CA5FFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119383370.1511.5662312070986904676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218a1c6cb196c228276e309fb9037ed5c1ccd583c0ebead140ae34301dcb46e3
Date: Mon, 05 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791193833

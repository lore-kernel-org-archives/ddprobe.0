Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0094A30DEBE
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774533294; cv=none; b=qW5/eTT+LK++GErUZ4Weeq+vkFcGEne7mamk6Vedzy83V7kAu7Z7JfPNqb0iwxnNy1iWf9F+6oy7/mJTE5Ft9AK+jLENMKPEBxTz5YGdzxNdJi0SjVLvNPAT7raZMxMmtznVK7gJZcFtHAiJBhDA06ejL8LATyNNwRBHOnrAOeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774533294; c=relaxed/simple;
	bh=CEPjekjsWpEZbi/Fvt2IsaArLGavJdFpUaG6KNIjLe4=;
	h=To:Subject:From:Message-Id:Date; b=BeOrXAijSnqbCK4BKjbcl0nqs9mvWWDHwmz2JdQVxVHCfhjx6P09DJKU4dbDA6oJgSBUCIWzfx7qOnO8dHcKvSIqKVSIPcAnvr19b7amfkURKA1NvF8Ts/bdZ4ZqIneER/qhODtwEbHZNenYY4cgP8FB69gfkLB2N91i8BGU7jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdFaGGWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdFaGGWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A40C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774533293;
	bh=CEPjekjsWpEZbi/Fvt2IsaArLGavJdFpUaG6KNIjLe4=;
	h=To:Subject:From:Date:From;
	b=jdFaGGWDxoDv/DKKh8M5lzxtQARMtO4KzhGem1Yh0cq6JYXUgG05OrEmMGUVvURiT
	 D/hPhaiBaKg1ra/9RLiB+Ad4KgZqJ5abk36QxadoYlS0FQCSabO5KJXuKz5NPhvl9F
	 1UYK+qLqHJHuDGXPxLeYKTZXH8OgBfSpJFBp7k+4pSnGX49cut5Twik03fUOgoRYQd
	 Ep08Wmbz7ZGeqH/QWNNI7Ztr7dAYzcDR8m4q4nYLuRv6N8vgzR0cPpPizz9vjgyx0K
	 xVStOi+tDThFV6GN0HDYqT9wXY5BEVkUObdj8vqSAnbF44C5lYotMZZ+faS4K07qSC
	 fAz7/CZerr/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176A10A62D6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453329358.5610.5010603542619691196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102ed48b5ce83310b6b09358dea18b34a36dea3491106e4f2a2a7c73584e023c
Date: Thu, 26 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774533293
